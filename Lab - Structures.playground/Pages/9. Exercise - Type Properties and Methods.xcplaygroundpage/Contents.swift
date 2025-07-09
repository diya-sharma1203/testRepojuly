


struct User {
    var username: String
    var email: String
    var age: Int

    
    static var currentUser: User?
    
   
    init(username: String, email: String, age: Int) {
        self.username = username
        self.email = email
        self.age = age
    }
}


let myUser = User(username: "chatgpt", email: "chatgpt@example.com", age: 2)


User.currentUser = myUser


if let currentUser = User.currentUser {
    print("Username: \(currentUser.username)")
    print("Email: \(currentUser.email)")
    print("Age: \(currentUser.age)")
} else {
    print("No user is currently logged in.")
}


/*:
 There are other properties and actions associated with a `User` struct that might be good candidates for a type property or method. One might be a method for logging in. Go back and create a type method called `logIn(user:)` where `user` is of type `User`. In the body of the method, assign the passed in user to the `currentUser` property, and print out a statement using the user's userName saying that the user has logged in.
 
 Below, call the `logIn(user:)` method and pass in a different `User` instance than what you assigned to currentUser above. Observe the printout in the console.
 */

//struct User {
//    var username: String
//    var email: String
//    var age: Int
//
//    
//    static var currentUser: User?
//    
//
//    init(username: String, email: String, age: Int) {
//        self.username = username
//        self.email = email
//        self.age = age
//    }
   
    static func logIn(user: User) {
        currentUser = user
        print("\(user.username) has logged in.")
    }
}


let firstUser = User(username: "chatgpt", email: "chatgpt@example.com", age: 2)
let secondUser = User(username: "openai", email: "openai@example.com", age: 5)


User.currentUser = firstUser


User.logIn(user: secondUser)


if let currentUser = User.currentUser {
    print("\nCurrent logged-in user:")
    print("Username: \(currentUser.username)")
    print("Email: \(currentUser.email)")
    print("Age: \(currentUser.age)")
}


/*:
[Previous](@previous)  |  page 9 of 10  |  [Next: App Exercise - Type Properties and Methods](@next)
 */
