//
//  UIView+Extension.swift
//  SparrowcodeFirstGradient
//
//  Created by Юрий Степанчук on 01.11.2023.
//

import UIKit

extension UIView {
    func setLeftCrossGradientBackground(colorTop: UIColor, colorBottom: UIColor) {
        backgroundColor = .clear
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [colorBottom.cgColor, colorTop.cgColor]
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 1, y: 1)
        gradientLayer.frame = bounds
        gradientLayer.drawsAsynchronously = true
        gradientLayer.cornerRadius = self.layer.cornerRadius
        layer.addSublayer(gradientLayer)
    }

    func addShadow(color: UIColor, opacity: Float, width: Int, height: Int, radius: CGFloat) {
        layer.shadowColor = color.cgColor
        layer.shadowOpacity = opacity
        layer.shadowOffset = CGSize(width: width, height: height)
        layer.shadowRadius = radius
    }
}

