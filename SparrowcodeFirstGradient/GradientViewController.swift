//
//  GradientViewController.swift
//  SparrowcodeFirstGradient
//
//  Created by Юрий Степанчук on 01.11.2023.
//

import UIKit

final class GradientViewController: UIViewController {
    private enum Constants {
        static let cornerRadius: CGFloat = 20.0
        static let sideLength: CGFloat = 120
        static let shadowOpacity: Float = 0.5
        static let shadowRadius: CGFloat = 5
        static let leadingPadding: CGFloat = 100
        static let shadowWidth = 0
        static let shadowHeight = 5
    }

    private lazy var squareView: UIView = {
        let squareView = UIView()
        squareView.translatesAutoresizingMaskIntoConstraints = false
        squareView.frame = CGRect(x: 0, y: 0, width: Constants.sideLength, height: Constants.sideLength)
        squareView.layer.cornerRadius = Constants.cornerRadius
        squareView.setLeftCrossGradientBackground(colorTop: UIColor(resource: .top),
                                                  colorBottom: UIColor(resource: .bottom))
        squareView.addShadow(color: .black,
                             opacity: Constants.shadowOpacity,
                             width: Constants.shadowWidth,
                             height: Constants.shadowHeight,
                             radius: Constants.shadowRadius)
        return squareView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }

    private func setupView() {
        view.addSubview(squareView)
        NSLayoutConstraint.activate([
            squareView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: Constants.sideLength / -2),
            squareView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: Constants.leadingPadding)
        ])
    }
}
