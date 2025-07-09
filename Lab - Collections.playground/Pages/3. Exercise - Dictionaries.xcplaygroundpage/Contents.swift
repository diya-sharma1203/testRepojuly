/*:
## Exercise - Dictionaries

 Create a variable `[String: Int]` dictionary that can be used to look up the number of days in a particular month. Use a dictionary literal to initialize it with January, February, and March. January contains 31 days, February has 28, and March has 31. Print the dictionary.
 */
var daysInMnth : [String: Int] = ["january": 31 , "february": 28 , "march": 31]
print(daysInMnth)


//:  Using subscripting syntax to add April to the collection with a value of 30. Print the dictionary.
daysInMnth["april"] = 30
print(daysInMnth)

//:  It's a leap year! Update the number of days in February to 29 using the `updateValue(_:, forKey:)` method. Print the dictionary.
let oldValue = daysInMnth.updateValue(29, forKey: "february")
print(daysInMnth)

//:  Use if-let syntax to retrieve the number of days under "January." If the value is there, print "January has 31 days", where 31 is the value retrieved from the dictionary.
if let day = daysInMnth["january"] {
    print("january has \(day) days")
}

//:  Given the following arrays, create a new [String : [String]] dictionary. `shapesArray` should use the key "Shapes" and `colorsArray` should use the key "Colors." Print the resulting dictionary.
var shapesArray = ["square" , "circle" , "rectangle"]
var colorsArray = ["red" , "blue" , "black"]
var shapeColor = [shapesArray , colorsArray]
print(shapeColor)

//:  Print the last element of `colorsArray`, accessing it through the dictionary you've created. You'll have to use if-let syntax or the force unwrap operator to unwrap what is returned from the dictionary before you can access an element of the array.
print(shapeColor[1][2])

/*:
[Previous](@previous)  |  page 3 of 4  |  [Next: App Exercise - Pacing](@next)
 */
