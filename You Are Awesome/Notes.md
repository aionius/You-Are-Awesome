#  Images

View->Content Mode->Aspect Fit
    - shows the entire image, preserving the aspect ratio. Empty space will show if the Image's width/height ratio differs from the ImageView's weight/height ratio

View->Content Mode->Aspect Fill
    - fills the entire ImageView with at least a portion of the Image. It will preserve the aspect ratio of the Image, but if the Image's width/height ratio does not match the ImageView's, the sides of the Image will be cropped by the ImageView
    
View->Content Mode->Scale to Fit
    - fills the entire ImageView with the entire Image, but it will distort the Image if the width/height ratio of the ImageView does not match the width/height ratio of the Image

# Constraints
* A view controller's content view, or super view, represents the container that holds all of the objects displayed in a view controller.
￼￼
* On iOS devices, the coordinate system starts at 0,0 (left, top), with positive values increasing right and down, with the maximum visible dimension shown in the right, bottom.

* Rather than pixels, iOS coordinates are called points. The point scheme provides consistent relative coordinate system that developer can use across all devices.

* The safe area represents the portion of the content view that will not be obscured by the status bar or the phone's hardware (sensor housing or the "notch").

* Auto Layout works by a sytem of contraints. Think of constraints as way of anchoring user interface objects either to the dimensions of the iOS device, or to other elements in the user interface.

NOTE: “It can often be most useful to design on the smallest device that you might deploy your device on. If you don’t, you risk resizing on smaller devices and having your interface squeeze or fail to show everything as you intended. Buttons that resize their widths based on device size may unexpectedly cut off text on smaller devices.”

# Reset Indentation
⌘+A = Select All
⌃+I = Resent Indentation

Editor > Structure > Re-Indent

# Debugging
lldb (low level debugger) - when used with po (print object) command or v (for frame variable) command, XCode will show the contents of values, or the result of expressions at the current point wher code was paused

# Underscores as Numeric Place Holders

Since Swift won’t allow commas inside of large numbers, it can sometimes be difficult to be sure that you’re accurately typing any large numeric literals properly in your code. Instead of using commas, Swift allows underscore characters to be used as no-impact placeholders. For example: to prevent you from being a zero off in 30000000000 you could type: 30_000_000_000. The underscores will not show up when values are displayed, and this number will otherwise function normally in any value that it is assigned to.

var bigNumber = 30_000_000_000
print(bigNumber, bigNumber * 10)
// console output: 30000000000 300000000000

# REPL (Read, Evaluate, Print, Loop)

Executes code immediately, or when run, without needing to compile. Code that is exeucted instantly, without compiling, is said to be interpreted.

# Closed Range

States the starting and ending values of a range of numbers. The numbers areseparated by tree dots, and both the start and end values are included as part of the range

Ranges can be closed (expressed as a start value followed by three dots, then an end value)

// generates random numbers between 1 and 6
let diceRoll: Int = Int.random(in: 1...6)

Ranges can also be half-open. A half-open range says "consider a range that starts at the first value and goes up to but does not include the end value". Half-open ranges are written as the first value range, then followed by two dots and a less-than symbol, and then the end value that the range will never equal or exceed

// generates random numbers between 1 and 6
let diceRool: Int = Int.random(in: 1..<7)

# Label Line Attribute

Setting a Label's  "Lines" attribute to zero will allow the label to use as many lines as needed to display text. If the Label's height is not constrained, then the label height will grow or shrink to accomodate the lines used. If height is restricted, only the lines that fit into that height will show.

# Multi-Line String

Create a multi-line String by surrounding text with three consecutive double quote marks. The text in a multi-line String shouldn’t be on the same line as the quotation marks. Indentation is handled based on the closing quotes, meaning any line indented further in than the closing quotes will include the indentation. Blank lines inside the triple quotes can be used to create more white space in a String.

let multiLineString = """
This is the start of multi-line String.
    The bottom triple-quote is the anchor for indenting.
"""

# Optionals

In Swift, we say that a value that contains nothing is nil.
    - nil is different from zero. Zero is a number, nil is an absence of value
    - nil is different from the empty String "". An empty String is a String of length zero, nill means there is an absence of value
    
Values that could be nil (absence of value) or a legitimate valure are called optionals. If you see a ? after the Type name, this is Swift's way of saying "This could be a real Type value, but it might also be nil."

If you're 100% confident that your value is not nil, you can "unwrap" or look inside the optional by puting a "!" mark after the value's name. This is called "force unwrapping" and gets the value inside without "optional" around it. If you were to get nil, your code would crash while running. 

# while and repeat-while loops

while condition is true {
    // might not execute if condition is false
    execute these statements
}

Once condition is false, skip the curlies above and move down to the next lines of code.

repeat {
    // always execute atleast once
    execute these statements
} while condition is true

Once condition is false, skip the curlies above and move down to the next lines of code.

# Playing a Sound

Load in data from th e sound file in the asset catalog
    - check to make sure the data was read property
        - if data could not be read from the file, handle the error
        - if the data was read in correctly, continue

Create an AVAudioPlayer loaded up to play the data
    - if the AVAudioPlayer was created, play the file
    - if it wasn't created, handle the error
    

# Optional Binding
Sometimes you’re not sure if a value contains valid data, or if it contains nothing. If you look into a variable and expect a value, but instead see nothing (i.e., nil—an absence of value), then your code will crash.

One of the ways we deal with this possibility in our code is by using the  if let statement. This statement checks to see if a constant can be assigned a value using a let statement (e.g., there is something valid in the value, not the “absence of value” nil). This technique is also known as optional binding.
    - If the value is not nil, the constant after let is initialized, the first set of curly braces is executed, and the constant initialized in the if let statement has scope through the first set of curly braces. 
    - If the attempt to assign a constant using let fails (e.g., the let assignment could not happen because a nil was returned), then the first set of curly braces is skipped, no constant is declared by let, and the code instead jumps down to execute the set of curly braces after the else statement (if any). 

If the value to the right of equal is not nil, create the constant named “sound” and execute the code in the first set of curlies; otherwise the code to the right of the equal has resulted in a nil (an absence of value), so drop to the else statement and execute the code in the second set of curlies.

        if let sound = NSDataAsset(name: soundName) {
            do {
                try audioPlayer = AVAudioPlayer(data: sound.data)
                audioPlayer?.play()
            } catch let error as NSError {
                print("Error: \(error.localizedDescription) Could not initialize AVAudioPlayer object.")
            }
        } else {
            print("Error: Could not read data from file.")
        }

# Functions

In Swift, parameters are the input value that you'll see in a function definition, while arguments are the value passed in when a function is called.

    averageTwoNumbers(firstNumber: firstQuiz, secondNUmber: secondQuiz)
    
    ** firstNumber and secondNUmber are the paremeters and firstQuiz and secondQuiz are the arguments

NOTE: Function parameters are immutable constants and behave as if they were defined using a "let", so parameters cannot be modified inside the body of a function. Even though you can use a variable to pass data into a function, once the data is passed into a function parameter, that parameter cannot be changed.

# Function Argument Labels

Swift allows programmers to include a "function argument label" for any parameter in order to improve the readability of code and help clarify the purpose of the function calls. You can add an argument label before each regular (internal) parameter, seperating the argument label and parameter name with a single space.

    func sayHello(to name: String) {
        print("Hello, \(name)" )
    }

    sayHello(to: "My Little Friend")

# inout

While standard parameters passed into functions behave like constants, function parameters declared using keyword "inout" behave more like variables. Any value passed in using inout can be changed (mutated) within the function, with changes passed back to the variable that called the function. Use the inout keyword on a func declaration before a parameter’s type, but after its name and colon. When calling a function you need to prefix any inout parameters in the call with an ampersand (&).

    func swapNumbers(a: inout Int, b: inout Int) {
        let temp = b
        b = a
        a = temp
    }
    
    var first = 123
    var second = 987
    
    swapNumbers(a: &first, b: &second)
    print(first, second)
    // console output: 987 123

# Edge Cases

A user experience (UX) edge case is a rare occurrence. Testing for edge cases can be a challenged, but can also be very important because some unadressed edge cases may cause the app to crash, corrupt data, or confuse the user.
