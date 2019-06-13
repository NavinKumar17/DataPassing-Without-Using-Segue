//
//  SecondViewController.swift
//  DataPassingTests
//
//  Created by Krish on 13/06/19.
//  Copyright © 2019 Krish. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController,DataToBeSent {
    
   
    //Mark: IBOulet
    @IBOutlet weak var receivedData: UILabel!
    @IBOutlet weak var receivedData2: UILabel!
    
    //Mark: Local Variable
    var firstViewController : ViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelColor()
      firstViewController.delegate = self
        // Do any additional setup after loading the view.
    }
    
    func sendDataToSecondViewController(data: String, data1: String) {
        receivedData.text = data
        receivedData2.text = data1
        print(data)
    }
    
    
    @IBAction func backButtonTapped(_ sender: Any) {
        
        dismiss(animated: true)
        firstViewController.firstVCLbl.textColor = #colorLiteral(red: 1, green: 0.6396770297, blue: 0.2747452897, alpha: 1)
      
     }
   
    
}
//Mark: Extension
extension  SecondViewController {
    
    func labelColor(){
        
        receivedData.textColor = #colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)
        receivedData2.textColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
    }
    
}
