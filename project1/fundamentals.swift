
let constantName = "Steve"
var optionalName: String? = "Jobs"

if let name = optionalName {
    print("Hello, \(constantName) and \(name)")
} else {
    // Provide a default value if optionalName is nil
    let optionalName = "Woknik"
    print("Hello, \(constantName) and \(optionalName)")
}
