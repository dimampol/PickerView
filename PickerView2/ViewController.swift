//
//  ViewController.swift
//  PickerView2
//
//  Created by apple on 2017-11-08.
//  Copyright © 2017 Dmitrii Poliakov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var favoriteDayTextField: UITextField!
    
    let days = ["Monday",
                    "Tuesday",
                    "Wednesday",
                    "Thursday",
                    "Friday",
                    "Saturday",
                    "Sunday"]
        
        var selectedDay: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
       createDayPicker()
       createToolBar()
    }
    
    func createDayPicker(){
        
        let dayPicker = UIPickerView()
        dayPicker.delegate = self
        
        favoriteDayTextField.inputView = dayPicker
    }
    
    func createToolBar(){
        
        let toolBar = UIToolbar()
        toolBar.sizeToFit()
        
        let doneButton = UIBarButtonItem(title: "Done", style: .done, target: self, action: #selector(ViewController.hidePVC))
        toolBar.setItems([doneButton], animated: true)
        toolBar.isUserInteractionEnabled = true
        
        favoriteDayTextField.inputAccessoryView = toolBar
    }
    
    @objc func hidePVC(){
        view.endEditing(true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

