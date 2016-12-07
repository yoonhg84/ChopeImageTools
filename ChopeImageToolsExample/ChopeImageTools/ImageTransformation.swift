//
// Created by Chope on 2016. 12. 7..
// Copyright (c) 2016 Chope industry. All rights reserved.
//

import UIKit
import CoreImage

public enum ImageTransformation {
    case resize(size: CGSize)
    case crop(rect: CGRect)
}


public extension UIImage {
    public func transform(_ transformation: ImageTransformation) -> UIImage? {
        switch transformation {
        case .resize(let size):
            return resize(image: self, size: size)
        case .crop(let rect):
            return crop(image: self, rect: rect)
        }
    }

    public func transforms(_ transformations: [ImageTransformation]) -> UIImage? {
        var image: UIImage? = self

        transformations.forEach { transformation in
            image = image?.transform(transformation)
        }
        return image
    }
}


private func resize(image: UIImage, size: CGSize) -> UIImage? {
    UIGraphicsBeginImageContext(size)
    image.draw(in: CGRect(origin: CGPoint(), size: size))
    let resultImage = UIGraphicsGetImageFromCurrentImageContext()
    UIGraphicsEndImageContext()
    return resultImage
}

private func crop(image: UIImage, rect: CGRect) -> UIImage? {
    guard let cgImage = image.cgImage?.cropping(to: rect) else {
        return nil
    }
    return UIImage(cgImage: cgImage)
}