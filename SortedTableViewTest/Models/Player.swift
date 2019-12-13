import Foundation

@objc protocol CollationIndexable {
    @objc var collationString : String { get }
}

class Player: NSObject, CollationIndexable {
    var firstName: String
    var lastName: String
    
    var collationString: String {
        return firstName
    }
    
    override var description: String {
        return "\(firstName) \(lastName)"
    }
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
}

var data: [Player] = [
    Player(firstName: "Eesa", lastName: "Wheatley"),
    Player(firstName: "Tanya", lastName: "Delgado"),
    Player(firstName: "Kane", lastName: "Torres"),
    Player(firstName: "Amaan", lastName: "Stein"),
    Player(firstName: "Ari", lastName: "Cullen"),
    Player(firstName: "Lana", lastName: "Reed"),
    Player(firstName: "Tiegan", lastName: "Yoder"),
    Player(firstName: "Bryn", lastName: "Grainger"),
    Player(firstName: "Rajan", lastName: "Byrd"),
    Player(firstName: "Herman", lastName: "Carver"),
    Player(firstName: "Jac", lastName: "Raymond"),
    Player(firstName: "Hayden", lastName: "Coulson"),
    Player(firstName: "Keeleigh", lastName: "Spooner"),
    Player(firstName: "Evelyn", lastName: "Deleon"),
    Player(firstName: "Matthew", lastName: "Patton"),
    Player(firstName: "Jun", lastName: "Pritchard"),
    Player(firstName: "Ava-May", lastName: "Bass"),
    Player(firstName: "Norma", lastName: "Guest"),
    Player(firstName: "Roosevelt", lastName: "Dennis"),
    Player(firstName: "Eira", lastName: "Vickers"),
    Player(firstName: "Eira", lastName: "Wheatley"),
    Player(firstName: "Roosevelt", lastName: "Delgado"),
    Player(firstName: "Norma", lastName: "Torres"),
    Player(firstName: "Ava-May", lastName: "Stein"),
    Player(firstName: "Jun", lastName: "Cullen"),
    Player(firstName: "Matthew", lastName: "Reed"),
    Player(firstName: "Evelyn", lastName: "Yoder"),
    Player(firstName: "Keeleigh", lastName: "Grainger"),
    Player(firstName: "Hayden", lastName: "Byrd"),
    Player(firstName: "Jac", lastName: "Carver"),
    Player(firstName: "Herman", lastName: "Raymond"),
    Player(firstName: "Rajan", lastName: "Coulson"),
    Player(firstName: "Bryn", lastName: "Spooner"),
    Player(firstName: "Tiegan", lastName: "Deleon"),
    Player(firstName: "Lana", lastName: "Patton"),
    Player(firstName: "Ari", lastName: "Pritchard"),
    Player(firstName: "Amaan", lastName: "Bass"),
    Player(firstName: "Kane", lastName: "Guest"),
    Player(firstName: "Tanya", lastName: "Dennis"),
    Player(firstName: "Eesa", lastName: "Vickers"),
    Player(firstName: "Samanta", lastName: "Wheatley"),
    Player(firstName: "Kamal", lastName: "Delgado"),
    Player(firstName: "Linzi", lastName: "Torres"),
    Player(firstName: "Coby", lastName: "Stein"),
    Player(firstName: "Nayla", lastName: "Cullen"),
    Player(firstName: "Ariah", lastName: "Reed"),
    Player(firstName: "Khalid", lastName: "Yoder"),
    Player(firstName: "Juan", lastName: "Grainger"),
    Player(firstName: "Milo", lastName: "Byrd"),
    Player(firstName: "Hafsa", lastName: "Carver"),
    Player(firstName: "Eshaal", lastName: "Raymond"),
    Player(firstName: "Huey", lastName: "Coulson"),
    Player(firstName: "Naya", lastName: "Spooner"),
    Player(firstName: "Kieren", lastName: "Deleon"),
    Player(firstName: "Antoni", lastName: "Patton"),
    Player(firstName: "Hana", lastName: "Pritchard"),
    Player(firstName: "Douglas", lastName: "Bass"),
    Player(firstName: "Isabella-Rose", lastName: "Guest"),
    Player(firstName: "Aayush", lastName: "Dennis"),
    Player(firstName: "Benas", lastName: "Vickers"),
    Player(firstName: "Samanta", lastName: "Ochoa"),
    Player(firstName: "Kamal", lastName: "Patrick"),
    Player(firstName: "Linzi", lastName: "Devlin"),
    Player(firstName: "Coby", lastName: "Burns"),
    Player(firstName: "Nayla", lastName: "Bates"),
    Player(firstName: "Ariah", lastName: "Nelson"),
    Player(firstName: "Khalid", lastName: "Beattie"),
    Player(firstName: "Juan", lastName: "Corona"),
    Player(firstName: "Milo", lastName: "Rosas"),
    Player(firstName: "Hafsa", lastName: "Mohamed"),
    Player(firstName: "Eshaal", lastName: "Mansell"),
    Player(firstName: "Huey", lastName: "Jacobs"),
    Player(firstName: "Naya", lastName: "Ortega"),
    Player(firstName: "Kieren", lastName: "Wooten"),
    Player(firstName: "Antoni", lastName: "Dean"),
    Player(firstName: "Hana", lastName: "Dalton"),
    Player(firstName: "Douglas", lastName: "Bullock"),
    Player(firstName: "Isabella-Rose", lastName: "Riggs"),
    Player(firstName: "Aayush", lastName: "Gould"),
    Player(firstName: "Benas", lastName: "Dupont"),
]


