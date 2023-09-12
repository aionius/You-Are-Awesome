#  Images

View->Content Mode->Aspect Fit
    - shows the entire image, preserving the aspect ratio. Empty space will show if the Image's width/height ratio differs from the ImageView's weight/height ratio

View->Content Mode->Aspect Fill
    - fills the entire ImageView with at least a portion of the Image. It will preserve the aspect ratio of the Image, but if the Image's width/height ratio does not match the ImageView's, the sides of the Image will be cropped by the ImageView
    
View->Content Mode->Scale to Fit
    - fills the entire ImageView with the entire Image, but it will distort the Image if the width/height ratio of the ImageView does not match the width/height ratio of the Image
