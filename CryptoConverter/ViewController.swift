//
//  ViewController.swift
//  CryptoConverter
//
//  Created by Dima Gorbachev on 17.07.17.
//  Copyright © 2017 Dima Gorbachev. All rights reserved.
//

import UIKit


class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource, UITextFieldDelegate {
    
    @IBOutlet weak var baseInput: UITextField!
    @IBOutlet weak var targetInput: UITextField!
    
    var activeTextField = UITextField()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let picker = UIPickerView()
        picker.backgroundColor = (UIColor.white)
        picker.delegate = self
        
        baseInput.inputView = picker
        targetInput.inputView = picker
        
        baseInput.delegate = self
        targetInput.delegate = self
        
//        let url = URL(string: "https://api.cryptonator.com/api/ticker/btc-usd")
//        URLSession.shared.dataTask(with:url!, completionHandler: {(data, response, error) in
//            guard let data = data, error == nil else { return }
//            
//            do {
//                let json = try JSONSerialization.jsonObject(with: data, options: .allowFragments) as! [String:Any]
//                let result = json["ticker"] as? [String: Any]
//                print(result ?? [String :Any]())
//            } catch let error as NSError {
//                print(error)
//            }
//        }).resume()

        print(currencyReq(currencyView: "BTC"))
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        view.addGestureRecognizer(tap)

    }
    
    @IBAction func click(_ sender: Any) {
        print("fuckyou")
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView (_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return currencyViews.count
    }
    
    func pickerView( _ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return currencyViews[row]
    }

    func textFieldDidBeginEditing(_ textField: UITextField) {
        self.activeTextField = textField
    }
    
    func pickerView( _ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        activeTextField.text = currencyViews[row]
    }

    func dismissKeyboard() {
        view.endEditing(true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

