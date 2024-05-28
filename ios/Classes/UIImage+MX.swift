//
//  UIImage+MX.swift
//  receive_sharing_intent
//
//  Created by xiaomin liu on 2024/5/28.
//

import Foundation

extension UIImage {
    public func mx_Thumbnail(size: CGSize) -> UIImage {
        let imageSize = self.size
        guard imageSize.width > 0, imageSize.height > 0 else {
            return self
        }
        
        let scale = size.width / imageSize.width
        let targetSize = CGSize(width: imageSize.width * scale, height: imageSize.height * scale)
        let imageRect = CGRect(origin: .zero, size: targetSize)
        
        UIGraphicsBeginImageContextWithOptions(size, false, 1)
        self.draw(in: imageRect)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image ?? self
    }
}
