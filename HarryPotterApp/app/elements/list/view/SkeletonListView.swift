//
//  SkeletonListView.swift
//  HarryPotterApp
//
//  Created by Alexandra Kurganova on 07.05.2023.
//

import SwiftUI
import ComposableArchitecture
import Kingfisher

struct SkeletonListView: View {
    let stateStore: Store<SkeletonListState, SkeletonListActions>
    
    var body: some View {
        WithViewStore(stateStore) { viewStore in
            NavigationView {
                List {
                    if viewStore.isLoading && viewStore.hogwartsStaff.isEmpty { loader }
                    ForEach(viewStore.hogwartsStaff) { person in
                        if viewStore.isShowDetailedScreen {
                            NavigationLink(
                                destination:
                                    PersonDetailedScreen(stateStore: stateStore.scope(state: \.detailesState, action: SkeletonListActions.detailedActions))
                                ,
                                label: {
                                    configurePersonCell(person: person)
                                        .onTapGesture {
                                            viewStore.send(.showDetailedInfo(person))
                                        }
                                })
                        } else { EmptyView() }
                    }
                }
                .onAppear {
                    viewStore.send(.getAllHogwartsStaff)
                }
            }
        }
    }
    
    var loader: some View {
        ProgressView()
            .progressViewStyle(CircularProgressViewStyle())
            .padding(.top, 100)
    }
    
    func configurePersonCell(person: PersonDataSource) -> some View {
        HStack {
            if let url = URL(string: person.image) {
                generateImage(url: url)
            } else {
                EmptyView()
            }
            Text(person.name)
        }
    }
    
    func generateImage(url: URL) -> some View {
        KFImage(url)
            .placeholder { loader }
            .resizable()
            .frame(width: 50, height: 60)
            .clipped()
            .padding(.horizontal, 16)
    }
    
}

struct SkeletonListView_Previews: PreviewProvider {
    static var previews: some View {
        SkeletonListView(stateStore: .init(initialState: .init(), reducer: EmptyReducer()))
    }
}
