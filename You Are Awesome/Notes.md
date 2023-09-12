#  Images

View->Content Mode->Aspect Fit
    - shows the entire image, preserving the aspect ratio. Empty space will show if the Image's width/height ratio differs from the ImageView's weight/height ratio

View->Content Mode->Aspect Fill
    - fills the entire ImageView with at least a portion of the Image. It will preserve the aspect ratio of the Image, but if the Image's width/height ratio does not match the ImageView's, the sides of the Image will be cropped by the ImageView
    
View->Content Mode->Scale to Fit
    - fills the entire ImageView with the entire Image, but it will distort the Image if the width/height ratio of the ImageView does not match the width/height ratio of the Image

# Constraints
* A view controller's content view, or super view, represents the container that holds all of the objects displated in a view controller.
￼￼
* On iOS devices, the coordinate system starts at 0,0 (left, top), with positive values increasing right and down, with the maximum visible dimension shown in the right, bottom.

* Rather then pixels, iOS coordinates are called points. The point scheme provides consistent relative coordinate system that developer can use across all devices.

* The safe are represents the portion of the content view that will not be obscured by the status bar or the phone's hardware (sensor housing or the "notch").

* Auto Layout works by a sytem of contraints. Think of constraints as way of anchoring user interface objects either to the dimensions of the iOS device, or to other elements in the user interface.

NOTE: “It can often be most useful to design on the smallest device that you might deploy your device on. If you don’t, you risk resizing on smaller devices and having your interface squeeze or fail to show everything as you intended. Buttons that resize their widths based on device size may unexpectedly cut off text on smaller devices.”

# Reset Indentation
⌘+A = Select All
⌃+I = Resent Indentation

# Debugging
lldb (low level debugger) - when used with po (print object) command,
XCode will show the contents of values, or the result of expressions at the current point wher code was paused
