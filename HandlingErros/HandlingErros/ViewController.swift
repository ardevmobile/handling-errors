//
//  ViewController.swift
//  HandlingErros
//
//  Created by Augusto Rocha on 18/11/20.
//

import UIKit

class ViewController: UIViewController {
    
    enum TellNameError: Error {
        case hasNoValue
        case tooShort
    }

    @IBOutlet weak var nameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func send(_ sender: UIButton) {
        do {
            try validate()
            
            let name = self.nameTextField.text!
            
            Alert.show(title: "Cool!", message: "Nice to meet you, \(name)! Be welcome!", viewController: self)
        } catch TellNameError.hasNoValue {
            Alert.show(title: "Don't be shy!", message: "Please, tell me your name!", viewController: self)
        } catch TellNameError.tooShort {
            Alert.show(title: "Hmmm", message: "Nodoby has a name so small!", viewController: self)
        } catch {
            Alert.show(title: "Error", message: "Something went wrong.", viewController: self)
        }
    }
    
    func validate() throws {
        let name = self.nameTextField.text!
        
        if name.isEmpty {
            throw TellNameError.hasNoValue
        }
        
        if name.count < 3 {
            throw TellNameError.tooShort
        }
    }
    
}

