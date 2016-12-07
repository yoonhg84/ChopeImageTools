# ChopeImageTools

Simple image tools.

##Feature
* image transformation

##Todo
* load image from remote server
* image cache manager
* extension UIButton, UIImageView etc..

##Usage

**Transformation**

```swift
outputImageView.image = inputImageView.image?
    .transform(.resize(size: CGSize(width: 100, height: 100)))?
    .transform(.crop(rect: CGRect(x: 25, y: 25, width: 50, height: 50)))
```

```swift
outputImageView.image = inputImageView.image?.transforms([
    .resize(size: CGSize(width: 100, height: 100)),
    .crop(rect: CGRect(x: 25, y: 25, width: 50, height: 50))
])
```

<img src="screenshots/screenshot_1.png" width="200" border="1"/>

##License
MIT