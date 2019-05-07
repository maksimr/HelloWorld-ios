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

        func enableAutoLayout(for view: UIView) {
            view.translatesAutoresizingMaskIntoConstraints = false
        }

        func stretchAndCenter(view: UIView, relativeTo: UIView) {
            relativeTo.addConstraints(NSLayoutConstraint.constraints(
                    withVisualFormat: "H:|-[view]-|",
                    metrics: nil,
                    views: ["view": view]
            ))
            view.centerYAnchor.constraint(equalTo: relativeTo.centerYAnchor).isActive = true;
        }

        view.backgroundColor = .white

        let messageLabel = UILabel()
        messageLabel.accessibilityIdentifier = AccessibilityIdentifiers.helloWorldLabel
        messageLabel.text = "Hello World"
        messageLabel.font = UIFont.systemFont(ofSize: 50.0, weight: UIFont.Weight.bold)
        messageLabel.textAlignment = .center
        messageLabel.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(onTap)))
        messageLabel.isUserInteractionEnabled = true

        view.addSubview(messageLabel)

        enableAutoLayout(for: view)
        enableAutoLayout(for: messageLabel)
        stretchAndCenter(view: messageLabel, relativeTo: view)
    }

    @objc func onTap() {
        UIViewPropertyAnimator(duration: 1.0, curve: .easeOut) {
            self.view.backgroundColor = self.view.backgroundColor == .white ?
                    .orange :
                    .white
        }.startAnimation();
    }
}
