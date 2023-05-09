//
//  SkeletonListView.swift
//  HarryPotterApp
//
//  Created by Alexandra Kurganova on 07.05.2023.
//

import SwiftUI

struct SkeletonListView: View {
    @EnvironmentObject var viewModel: SkeletonListViewModel

    var body: some View {
        if viewModel.dataIsEmpty && viewModel.isLoading { loader }
        List {
            ForEach(viewModel.dataSource) { _ in
                NavigationLink(destination: PersonDetailedScreen.init(personDataSource: .init())) {
                    //                Image("data.image")
                    Text("data.name")
                }
            }
        }
    }

    fileprivate var loader: some View {
        ProgressView()
            .progressViewStyle(CircularProgressViewStyle())
            .padding(.top, 100)
    }
}

struct SkeletonListView_Previews: PreviewProvider {
    static var previews: some View {
        SkeletonListView()
    }
}
