// Protocols

protocol FullyNamed {
    var fullName:String { get }
}

struct User: FullyNamed {
    var fullName: String
}

let user = User(fullName: "Dean Laurea")

struct Friend: FullyNamed {
    var firstName: String
    var middleName: String
    var lastName: String
    
    var fullName:String {
        return "\(firstName)\(middleName)\(lastName)"
    }
}

let friend = Friend(firstName:
    "Dean", middleName: "Villena", lastName: "Laurea")
friend.fullName