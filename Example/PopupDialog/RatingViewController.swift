//
//  RatingViewController.swift
//  PopupDialog
//
//  Created by Martin Wildfeuer on 11.07.16.
//  Copyright © 2016 CocoaPods. All rights reserved.
//

import UIKit

class RatingViewController: UIViewController {
//    @IBOutlet weak var cosmosStarRating: CosmosView!

//    @IBOutlet weak var commentTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        let subView = UIView(frame: CGRect(x: 0, y: self.view.frame.size.height - 300, width: self.view.frame.size.width, height: 300))
        subView.backgroundColor = UIColor.red
        subView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(subView)
        self.view.backgroundColor = .yellow

        // Layout views
        let views = ["subView": subView] as [String: Any]
        var constraints = [NSLayoutConstraint]()

        constraints += NSLayoutConstraint.constraints(withVisualFormat: "H:|[subView]|", options: [], metrics: nil, views: views)
        constraints += NSLayoutConstraint.constraints(withVisualFormat: "V:|[subView(100)]|", options: [], metrics: nil, views: views)
        NSLayoutConstraint.activate(constraints)

//        commentTextField.delegate = self
//        view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(endEditing)))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @objc func endEditing() {
        view.endEditing(true)
    }
}

extension RatingViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.endEditing()
        return true
    }
}
