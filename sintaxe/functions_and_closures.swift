import UIKit

func calculateScore(scores: [int]) -> (min: int, max: int, sum: int){
    var min = scores[0]
    var max = scores[0]
    var sum = 0

    for score in scores{
        if score > max {
            max = score
        } else if score < min {
            min = score
        }
        sum += score
    }

    return (min, max, sum)
}

let statistics = calculateScore([1, 2, 3])
