//
//  Alert.swift
//  HandlingErros
//
//  Created by Augusto Rocha on 18/11/20.
//

import Foundation
import UIKit

class Alert {
    static func show(title: String?, message: String?, viewController: ViewController?) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        viewController?.present(alert, animated: true, completion: nil)
    }
}
