//
//  ContentView.swift
//  TestApp
//
//  Created by labadmin on 08/01/23.
//

import SwiftUI

let classList : [PlayerCharacter] = [PlayerMage(), PlayerThief(), PlayerWarrior()]

var selectedClass = classList[0]

struct ContentView: View {
    @State var syncListIndex : Int = 0
    var body: some View {
        VStack {
            HStack{
                Text(checkForGrettings(text: "Welcome ")).fontWeight(.medium).padding(.top, 25)
            }
            HStack{
                Text(checkForGrettings(text: "Choose your class ")).fontWeight(.medium).padding(.top, 0)
            }
            HStack{
                VStack{
                    ClassImageView(sharedIndex: self.$syncListIndex)
                }
                VStack() {
                    ClassStatView(sharedIndex: self.$syncListIndex)
                }
            }
            HStack{
                VStack{
                    Button("Previous") {
                        syncListIndex -= 1
                        if syncListIndex < 0 {
                            syncListIndex = classList.count
                        }
                    }
                }
                VStack{
                    Button("Next") {
                        syncListIndex += 1
                        syncListIndex %= classList.count
                    }
                }.padding(.leading, 50)

            }.padding(.top, 50)
            Spacer()
        }
    }
}

struct ClassStatView: View {
    @Binding var sharedIndex : Int
    var body: some View {
        var currentClass = classList[self.sharedIndex]
        HStack{
            Text("Health: \(String(currentClass.health))").padding(.top, 5)
        }
        HStack{
            Text("Strength: \(String(currentClass.strength))").padding(.top, 5)
        }
        HStack{
            Text("Dexterity: \(String(currentClass.dexterity))").padding(.top, 5)
        }
        HStack{
            Text("Intellect: \(String(currentClass.intellect))").padding(.top, 5)
        }
    }
}

struct ClassImageView: View {
    @Binding var sharedIndex : Int
    var body: some View {
        var currentClass = classList[self.sharedIndex]
        var imageString : String = getImageString(classType: currentClass.classArchetype)
        HStack{
            Image(imageString)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 175.0, height: 175.0)
        }
    }
    func getImageString(classType: PlayerCharacter.characterArchetype) -> String {
        switch classType {
            case PlayerCharacter.characterArchetype.mage:
                return "mage"
                
            case PlayerCharacter.characterArchetype.warrior:
                return "warrior"
                
            case PlayerCharacter.characterArchetype.thief:
                return "thief"
                
            default:
                return "mage"
        }
    }
}

func checkForGrettings(text : String?) -> String {
    guard let hasGrettings = text else {
        return "I have no greetings"
    }
    return hasGrettings
}

func updateClassSelection() {

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
