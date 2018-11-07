//
//  LoginViewController.swift
//  QuizMaker
//
//  Created by Lainel John Dela Cruz on 07/11/2018.
//  Copyright © 2018 Lainel John Dela Cruz. All rights reserved.
//

import UIKit

class LoginViewController: TFAccessoryViewController {
    @IBOutlet weak var UIEmailTF: UITextField!
    @IBOutlet weak var UIPasswordTF: UITextField!
    var userInfo:Users?;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.UIEmailTF.delegate=self;
        self.UIPasswordTF.delegate=self;
        self.UIEmailTF.inputAccessoryView=self.navbarAccessory;
        self.UIPasswordTF.inputAccessoryView=self.navbarAccessory;
    }
    @IBAction func LoginOnClick(_ sender: Any) {
        performSegue(withIdentifier: "loginToDashboard", sender: nil);
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "loginToDashboard"{
            let destVC=segue.destination as! DashboardViewController;
            destVC.userInfo=self.userInfo;
        }
    }
}
//MARK: -TextField Func
extension LoginViewController{
    func textFieldDidBeginEditing(_ textField: UITextField) {
        AdjustingView.Move(view: self.view, duration: 0.3, moveDistance: 100, up: false);
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        AdjustingView.Move(view: self.view, duration: 0.3, moveDistance: 0, up: false);
    }
}


