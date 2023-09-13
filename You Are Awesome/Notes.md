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
