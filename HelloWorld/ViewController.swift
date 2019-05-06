//
//  ViewController.swift
//  HelloWorld
//
//  Created by Maksim Ryzhikov on 2019-05-05.
//  Copyright © 2019 foo. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        let frame = CGRect(
                x: 0,
                y: 0,
                width: UIScreen.main.bounds.width,
                height: UIScreen.main.bounds.height)

        let hiLabel = UILabel(frame: frame)
        hiLabel.text = "Hello World"
        hiLabel.textAlignment = .center
        hiLabel.accessibilityIdentifier = AccessibilityIdentifiers.hiLabel

        self.view.addSubview(hiLabel)
    }
}
