//
//  PersonDetailedScreen.swift
//  HarryPotterApp
//
//  Created by Alexandra Kurganova on 23.04.2023.
//

import SwiftUI

struct PersonDetailedScreen: View {
    @State var personDataSource: PersonDataSource

    var body: some View {
        ScrollView {
            VStack {
                header
                apperanceInfo
                wizardInfo
                actorInfo
            }
        }
        .background(Color(red: 241/255, green: 230/255, blue: 185/255).opacity(0.3))
    }

    private var header: some View {
        Group {
            VStack {
                //            Image(personDataSource.image)
                personName
                    .padding(.bottom, 20)
                mainInfo
                    .padding(.bottom, 5)
                house
            }
        }
        .padding(.bottom, 50)
    }

    private var personName: some View {
        Text("Гарри поттер")
            .font(.title2)
            .fontWeight(.heavy)
            .fontDesign(.rounded)
    }

    private var mainInfo: some View {
        HStack {
            Text("Человек")
            setDivider(width: 7)
            Text("01-01-1970")
            setDivider(width: 7)
            Text(gender_localized(key: "person_alive", gender: .male))
        }
        .font(.callout)
        .foregroundColor(.gray)
        .fontWeight(.medium)
        .fontDesign(.monospaced)
        .padding(.horizontal, 60)
    }

    private var house: some View {
        Text("Гриффиндор")
            .font(.callout)
            .fontWeight(.regular)
            .fontDesign(.rounded)
    }

    private var apperanceInfo: some View {
        Group {
            VStack {
                infoSection(key:"person_eye_color", value: "Зеленый")
                infoSection(key:"person_hair_color", value: "Черный")
            }
        }
        .padding(.bottom, 40)
    }

    private var wizardInfo: some View {
        Group {
            VStack {
                infoSection(key:"person_wand", value: "Феникс kfdjbvkjdfv fdjkvjkdfbvd ")
                infoSection(key:"person_patronus", value: "Олень kfdjbvkjdfv fdjkvjkdfbvd")
            }
        }
        .padding(.bottom, 40)
    }

    private var actorInfo: some View {
        Group {
            VStack {
                infoSection(key:"person_actor", value: "Daniel Radcliffe")
            }
        }
    }

    private func infoSection(key: String, value: String) -> some View {
        HStack(spacing: 10) {
            leftInfoSection(key: key)
            setDivider(width: UIScreen.main.bounds.width*0.6)
            rightInfoSection(value: value)
        }
        .padding(.horizontal, 20)
        .padding(.all, 10)
    }

    fileprivate func leftInfoSection(key: String) -> some View {
        Text(localized(key: key))
            .font(.callout)
            .foregroundColor(.gray)
            .fontWeight(.heavy)
            .fontDesign(.rounded)
            .multilineTextAlignment(.leading)
            .padding(.trailing, 10)
            .frame(maxHeight: .infinity, alignment: .leading)
            .layoutPriority(1)
    }

    fileprivate func setDivider(width: CGFloat) -> some View {
        VStack {
            Divider()
                .frame(maxWidth: width)
        }
    }

    fileprivate func rightInfoSection(value: String) -> some View {
        Text(value)
            .font(.callout)
            .fontWeight(.heavy)
            .fontDesign(.rounded)
            .padding(.leading, 10)
            .multilineTextAlignment(.trailing)
            .frame(maxHeight: .infinity, alignment: .trailing)
            .layoutPriority(1)
    }
}

struct PersonDetailedScreen_Previews: PreviewProvider {
    static var previews: some View {
        PersonDetailedScreen(personDataSource: .init())
    }
}
