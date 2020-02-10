//: # Gig Poster - Practice Task 2
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport

/*:
 Each image is exactly 400 pixels wide by 600 pixels tall. 
 
 Your goal is to precisely reproduce this image: 
 
 ![subhumans-no-grid](subhumans-no-grid.png "Subhumans")
 ![subhumans-with-grid](subhumans-with-grid.png "Subhumans")

 By precisely reproducing this image, you will demonstrate your understanding of:
 
 * sequence (order of statements in a program)
 * conditionals (making decisions with ``if`` statements)
 * iteration (use of loops to repeat statements)
 * arrays (a list of related objects or values)
 
 You may use the color constants created below to obtain the correct colors.
 
 Remember that you can refer to the [Canvas class documentation](https://www.russellgordon.ca/canvasgraphics/documentation/classes/canvas), as needed.
 */

// Create a new canvas
let canvas = Canvas(width: 400, height: 600)

// COLORS
let yellow = Color(hue: 45, saturation: 99, brightness: 100, alpha: 100)
let purple = Color(hue: 304, saturation: 40, brightness: 64, alpha: 100)
let brown = Color(hue: 38, saturation: 99, brightness: 38, alpha: 100)
let lightRed = Color(hue: 10, saturation: 80, brightness: 80, alpha: 75)

// Begin your solution here...

canvas.fillColor = yellow
canvas.drawShapesWithBorders = false
canvas.drawRectangle(at: Point(x: 0, y: 0), width: canvas.width, height: canvas.height)


for x in stride(from: -135, through: 345, by: 150 + 10){
    x
    //SEt color
    if x == -135 || x == 185 {
        canvas.borderColor = brown
        canvas.fillColor = purple
        
    }
    
    var polygonVertices: [Point] = []
    polygonVertices.append(Point(x: x, y: 50))
    polygonVertices.append(Point(x: x + 150, y: 50))
    polygonVertices.append(Point(x: x + 200, y: 150))
    polygonVertices.append(Point(x: x + 50, y: 150))


    canvas.drawCustomShape(with: polygonVertices)


}

for x in stride(from: -135, through: 345, by: 150 + 10){
    x
    //Set Color
    if x == -135 || x == 185 {
        canvas.borderColor = brown
        canvas.fillColor = brown
    } else {
        canvas.borderColor = purple
        canvas.fillColor = purple
    }

    var polygonVertices: [Point] = []
    polygonVertices.append(Point(x: x, y: 225))
    polygonVertices.append(Point(x: x + 150, y: 225))
    polygonVertices.append(Point(x: x + 200, y: 325))
    polygonVertices.append(Point(x: x + 50, y: 325))
    

    canvas.drawCustomShape(with: polygonVertices)

}

for x in stride(from: -145, through: 345, by: 150 + 10) {
    var polygonVertices: [Point] = []
    canvas.borderColor = lightRed
    canvas.fillColor = lightRed
    
    polygonVertices.append(Point(x: x, y: 140))
    polygonVertices.append(Point(x: x + 150, y: 140))
    polygonVertices.append(Point(x: x + 200, y: 240))
    polygonVertices.append(Point(x: x + 50, y: 240))
    
    canvas.drawCustomShape(with: polygonVertices)

    
}

canvas.drawText(message: "subhumans", at: Point(x: 15, y: 325), size: 50)
canvas.drawText(message: "friday, april 13 1984", at: Point(x: 10, y: 430), size: 10)
canvas.drawText(message: "advance $6.50, door $7.50", at: Point(x: 10, y: 415), size: 10)
canvas.drawText(message: "no age limit", at: Point(x: 10, y: 400), size: 10)
canvas.drawText(message: "at olympic auditorium", at: Point(x: 150, y: 430), size: 10)
canvas.drawText(message: "1801 s. grand ave.", at: Point(x: 150, y: 415), size: 10)
canvas.drawText(message: "los angeles, california", at: Point(x: 150, y: 400), size: 10)
canvas.drawText(message: "with the tourists", at: Point(x: 280, y: 430), size: 10)
canvas.drawText(message: "multi death corporations", at: Point(x: 280, y: 415), size: 10)
canvas.drawText(message: "new regime & red scare", at: Point(x: 280, y: 400), size: 10)








//Make a list (array) of vertices

//var polygonVertices: [Point] = [] // empty list of Point objects
//polygonVertices.append(Point(x: 150, y: 200))
//polygonVertices.append(Point(x: 300, y: 200))
//polygonVertices.append(Point(x: 300, y: 400))
//polygonVertices.append(Point(x: 150, y: 325))

//Draw the shape
//canvas.drawCustomShape(with: polygonVertices)




//var parallelVertices: [Point] = []
//parallelVertices.append(Point(x: 25, y: 225))
//parallelVertices.append(Point(x: 75, y: 325))
//parallelVertices.append(Point(x: 225, y: 325))
//parallelVertices.append(Point(x: 175, y: 225))




//Draw the shape
//canvas.drawCustomShape(with: parallelVertices)






//First, draw a grid for reference

//Horizontal lines
for y in stride(from: 0, through: 600, by: 50) {
    
    y
    
    canvas.drawLine(from: Point(x: 0, y: y), to: Point(x: 400, y: y))
    
    
}
//Horizontal lines
for x in stride(from: 0, through: 400, by: 50) {
    
    x
    
    canvas.drawLine(from: Point(x: x, y: 0), to: Point(x: x, y: 600))
}



/*:
 ## Use Source Control
 
 As this is a practice task, there is no hard deadline. However, completing this practice task – an assessment for learning – prior to attempting an assessment of learning – is strongly recommended.
 
 Be sure to commit your work multiple times as you make progress on completing this task.

 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas

