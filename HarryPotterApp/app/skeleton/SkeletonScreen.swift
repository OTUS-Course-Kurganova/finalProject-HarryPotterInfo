//
//  SkeletonScreen.swift
//  HarryPotterApp
//
//  Created by Alexandra Kurganova on 24.04.2023.
//

import SwiftUI

struct SkeletonScreen: View {
    @EnvironmentObject var viewModel: SkeletonScreenViewModel
    @State var staffType: HogwartsStaffTypes = .none

    @State private var selectedHouseButtonIndex: ObjectIdentifier?
    @State private var selectedSexButtonIndex: String?

    @State private var opacity = 0.5

    var body: some View {
        NavigationView {
            VStack {
                housesButtonsComponent
                    .padding(.top, 30)
                    .padding(.bottom, 10)
                sexButtonsComponents
                SkeletonListView()
            }
        }
    }

    // MARK: - filter buttons
    // MARK: - houses buttons
    private var housesButtonsComponent: some View {
        VStack {
            Text(localized(key: "filter_button_houses", NSLocalizedString("person_filter_\(staffType.rawValue)", comment: "")))
                .font(.headline)
                .multilineTextAlignment(.center)
            HStack{
                ForEach(viewModel.housesButtonData) { data in
                    generateHouseButton(name: data.imageName, action: data.action, id: data.id)
                        .padding(.trailing, 10)
                        .opacity(selectedHouseButtonIndex == data.id ? opacity : 1.0)
                }
            }
        }
    }

    private func generateHouseButton(name: String, action: Int, id: ObjectIdentifier) -> some View {
        Button {
            action
            (selectedHouseButtonIndex == id) ? (selectedHouseButtonIndex = nil) : (selectedHouseButtonIndex = id)
        } label: {
            Image(name)
                .resizable()
                .frame(width: 70, height: 65)
        }
    }

    // MARK: - sex buttons
    private var sexButtonsComponents: some View {
        VStack {
            Text(localized(key: "filter_button_sex", NSLocalizedString("person_filter_\(staffType.rawValue)", comment: "")))
                .font(.headline)
                .multilineTextAlignment(.center)
            HStack{
                generateSexButton(name: localized(key: "sex_male"), action: 0)
                generateSexButton(name: localized(key: "sex_female"), action: 1)
            }
            .padding(.horizontal, 20)
        }
    }

    private func generateSexButton(name: String, action: Int) -> some View {
        Button {
            action
            (selectedSexButtonIndex == name) ? (selectedSexButtonIndex = nil) : (selectedSexButtonIndex = name)
        } label: {
            Text(name)
                .foregroundColor(selectedSexButtonIndex == name ? Color.black : Color.indigo)
                .background(Color.clear)
                .opacity(selectedSexButtonIndex == name ? opacity : 1.0)
        }
        .buttonStyle(.bordered)
        .controlSize(.regular)
        .padding(.horizontal, 30)
    }
}
