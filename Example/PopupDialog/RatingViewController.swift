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

        let subView = UIView(frame: CGRect(x: 0, y:100, width: self.view.frame.size.width, height: self.view.frame.size.height-100))
        self.view.addSubview(subView)
        
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
        endEditing()
        return true
    }
}
