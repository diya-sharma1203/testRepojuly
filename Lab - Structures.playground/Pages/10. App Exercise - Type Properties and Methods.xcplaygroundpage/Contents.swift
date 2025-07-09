
struct RunningWorkout {
    static func mileTimeFor(distance: Double, time: Double) -> Double {
        let oneMileInMeters = 1600.0
        let timePerMile = time * (oneMileInMeters / distance)
        return timePerMile
    }
}

let distanceInMeters: Double = 5000.0
let timeInSeconds: Double = 1800.0

let requiredMileTime = RunningWorkout.mileTimeFor(distance: distanceInMeters, time: timeInSeconds)

print("To run \(distanceInMeters) meters in \(timeInSeconds) seconds, you need to average \(requiredMileTime) seconds per mile.")




//:  It may be helpful to have a few type properties on `RunningWorkout` representing unit conversions (i.e. meters to mile, feet to meters, etc.). Go back and add a type property for `meterInFeet` and assign it 3.28084. Then add a type property for `mileInMeters` and assign it 1600.0. Print both of these values below.
import Foundation

struct RunningWorkout {
    static let meterInFeet = 3.28084
    static let mileInMeters = 1600.0
}

print("1 meter is \(RunningWorkout.meterInFeet) feet.")
print("1 mile is \(RunningWorkout.mileInMeters) meters.")


/*:
 _Copyright © 2023 Apple Inc._

 _Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:_

 _The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software._

 _THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE._
 
[Previous](@previous)  |  page 10 of 10
 */
