class NamedShape{
    var numbersOfSide: Int = 0
    var name: String

    init(name: String){
        self.name = name
    }
    func simpleDescription() -> String {
        return "This shape with \(numbersOfSide) side."
    }
}

//==================================================================
// Herança

class Square: NamedShape {
    var sideLength: Double

    init(sideLength: Double, name: String){
        self.sideLength = sideLength
        super.init(name: name)
        numbersOfSide = 4
    }

    func area() -> Double {
        return sideLength * sideLength
    }

    // Sobreescrevendo a classe Pai
    override func simpleDescription() -> String {
        return "O quadrado tem \(sideLength) de comprimento."
    }
}

let test = Square(sideLength: 5.2, name: "Quadrado")
var area = test.area()
var description = test.simpleDescription()
print(area, description)

//==================================================================
// Getter and Setters

class EquilateralTriangle: NamedShape {
    var sideLength: Double = 0.0

    var perimeter: Double {
        get{ return 3.0 * sideLength}
        set{ sideLength = newValue / 3.0}

    }

    init(sideLength: Double, name: String){
        self.sideLength = sideLength
        super.init(name: name)
        numbersOfSide = 3
    }

    override func simpleDescription() -> String {
        return "O triangulo equilatero tem \(sideLength) de comprimento."
    }
}

var triangle = EquilateralTriangle(sideLength: 3.0, name: "Triangulo")
print(triangle.perimeter)

//===========================================================================
class TriangleAndSquare {
    var triangle: EquilateralTriangle {
        willSet {
            triangle.sideLength = newValue.sideLength
        }
    }
    
    var square: Square{
        willSet{
            triangle.sideLength = newValue.sideLength
        }
    }
    
    init(size: Double, name: String){
        square = Square(sideLength: size, name: name)
        triangle = EquilateralTriangle(sideLength: size, name: name)
    }
}

var triangleAndSquare = TriangleAndSquare(size: 10, name: "Triangulo e Quadrado")
print(triangleAndSquare.square.sideLength)
print(triangleAndSquare.triangle.sideLength)
triangleAndSquare.square = Square(sideLength: 50, name: "Quadrado Maior")
// this modification change triangle also
print("Nova medida do triangulo = \(triangleAndSquare.triangle.sideLength), mesmo alterando apenas o quadrado")

let optionalSquare: Square? = Square(sideLength: 2.5, name: "Quadrado optional")
let sideLength = optionalSquare?.sideLength


