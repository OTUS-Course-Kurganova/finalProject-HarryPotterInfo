//
//  PersonDetailedScreen.swift
//  HarryPotterApp
//
//  Created by Alexandra Kurganova on 23.04.2023.
//

import SwiftUI
import ComposableArchitecture

struct PersonDetailedScreen: View {
    let stateStore: Store<PersonDetailedState, PersonDetaildedActions>
    @State private var data: PersonDataSource = .init()

    var body: some View {
        WithViewStore(stateStore) { viewStore in
            VStack{
                Button("< Назад") { viewStore.send(.back)}
                ScrollView {
                    VStack {
                        header
                        apperanceInfo
                        wizardInfo
                        actorInfo
                    }
                }
            }
            .background(Rectangle()
                .fill (Color(red: 241/255, green: 230/255, blue: 185/255).opacity(0.3))
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                .ignoresSafeArea(.all))
            
            //            .background(Color(red: 241/255, green: 230/255, blue: 185/255).opacity(0.3))
            .onAppear {
                data = viewStore.person
            }
        }
    }

    var header: some View {
        Group {
            VStack {
                //            Image(data.image)
                personName
                    .padding(.bottom, 20)
                mainInfo
                    .padding(.bottom, 5)
                house
            }
        }
        .padding(.bottom, 50)
    }

    var personName: some View {
        Text(data.name)
            .font(.title2)
            .fontWeight(.heavy)
            .fontDesign(.rounded)
    }

    var mainInfo: some View {
        HStack {
            Text(data.species)
            setDivider(width: 7)
            if let dateOfBirth = data.dateOfBirth {
                Text(dateOfBirth)
                setDivider(width: 7)
            }
            Text(gender_localized(key: "person_alive", gender: .male))
        }
        .font(.callout)
        .foregroundColor(.gray)
        .fontWeight(.medium)
        .fontDesign(.monospaced)
        .padding(.horizontal, 60)
    }
//
//    //    func aliveSection() -> some View {
//    //        switch data.gender {
//    //            case "male":
//    //                if data.alive {
//    //                    return Text(gender_localized(key: "person_alive", gender: .male))
//    //                } else {
//    //                    return Text(gender_localized(key: "person_alive", gender: .male))
//    //                }
//    //            case "female":
//    //                if data.alive {
//    //                    return Text(gender_localized(key: "person_alive", gender: .female))
//    //                } else {
//    //                    return Text(gender_localized(key: "person_alive", gender: .female))
//    //                }
//    //            default:
//    //                return EmptyView()
//    //        }
//    //    }
//
    var house: some View {
        Text(data.house)
            .font(.callout)
            .fontWeight(.regular)
            .fontDesign(.rounded)
    }

    var apperanceInfo: some View {
        Group {
            VStack {
                infoSection(key:"person_eye_color", value: data.eyeColour)
                infoSection(key:"person_hair_color", value: data.hairColour)
            }
        }
        .padding(.bottom, 40)
    }

    var wizardInfo: some View {
        Group {
            VStack {
                infoSection(key:"person_wand", value: "Феникс kfdjbvkjdfv fdjkvjkdfbvd ")
                infoSection(key:"person_patronus", value: "Олень kfdjbvkjdfv fdjkvjkdfbvd")
            }
        }
        .padding(.bottom, 40)
    }

    var actorInfo: some View {
        Group {
            VStack {
                infoSection(key:"person_actor", value: "Daniel Radcliffe")
            }
        }
    }

    func infoSection(key: String, value: String) -> some View {
        HStack(spacing: 10) {
            leftInfoSection(key: key)
            setDivider(width: UIScreen.main.bounds.width*0.6)
            rightInfoSection(value: value)
        }
        .padding(.horizontal, 20)
        .padding(.all, 10)
    }

    func leftInfoSection(key: String) -> some View {
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

    func setDivider(width: CGFloat) -> some View {
        VStack {
            Divider()
                .frame(maxWidth: width)
        }
    }

    func rightInfoSection(value: String) -> some View {
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
        PersonDetailedScreen(stateStore: .init(initialState: .init(), reducer: EmptyReducer()))
    }
}
