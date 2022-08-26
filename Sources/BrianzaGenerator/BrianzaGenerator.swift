public func generateBrianza(one: Int, two: Int, three: Int, four: Int) -> (String, String)? {
    zip(
        zip(
            dice_one[one],
            dice_two[two]
        ).map {
            $0 + $1
        },
        zip(
            dice_three[three],
            dice_four[four]
        ).map {
            three == four ? "brianza" : $0 + $1
        }
    )
}

func zip<A, B>(_ a: A?, _ b: B?) -> (A, B)? {
    guard let a = a, let b = b else {
        return nil
    }
    
    return (a, b)
}
