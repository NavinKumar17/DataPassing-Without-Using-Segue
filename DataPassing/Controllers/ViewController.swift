//
//  ViewController.swift
//  DataPassing
//
//  Created by Krish on 13/06/19.
//  Copyright © 2019 Krish. All rights reserved.
//

import UIKit

protocol DataToBeSent {
    func sendDataToSecondViewController(data: String, data1: String)
    }
// MARK: Enum
enum views: String
{
    case SecondViewController
    
}

class ViewController: UIViewController {
    
    // MARK: IBOutlets
    @IBOutlet weak var userData: UITextField!
    @IBOutlet weak var secondUserData: UITextField!
    @IBOutlet weak var firstVCLbl: UILabel!
    
    
   
    // Mark: Local Variables
    var delegate: DataToBeSent?
    
    // MARK: View
    override func viewDidLoad() {
        super.viewDidLoad()
      
        // Do any additional setup after loading the view.
    }
    // MARK:  Funtions
    /*
     * Alert Controller
     * Control Statement
     */
    @IBAction func submitButtonTapped(_ sender: Any) {
        
        if(userData.text?.isEmpty == true || secondUserData.text?.isEmpty == true)
        {
            let alert = UIAlertController(title: "Alert", message: "Please Fill All The Fields", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default)
            alert.addAction(okAction)
            let cancelAction = UIAlertAction(title: "Cancel", style: UIAlertAction.Style.destructive, handler: nil)
            alert.addAction(cancelAction)
            self.present(alert, animated: true, completion: nil)
        }
        else
        {
            let firstVC = storyboard?.instantiateViewController(withIdentifier: views.SecondViewController.rawValue) as! SecondViewController
            firstVC.firstViewController = self
            present(firstVC, animated:  true)
            let userData1 = userData.text!
            let userData2 = secondUserData.text!
            delegate?.sendDataToSecondViewController(data: userData1, data1: userData2)
       
        }
    }

}


