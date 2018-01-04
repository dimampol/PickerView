//
//  PickerViewExtension.swift
//  PickerView2
//
//  Created by apple on 2017-11-08.
//  Copyright © 2017 Dmitrii Poliakov. All rights reserved.
//

import Foundation
import UIKit

extension ViewController: UIPickerViewDelegate, UIPickerViewDataSource{
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        return days.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        return days[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        selectedDay = days[row]
        favoriteDayTextField.text = selectedDay
    }
}
