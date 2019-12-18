//
//  ViewController.swift
//  minhas anotações
//
//  Created by César  Ferreira on 18/12/19.
//  Copyright © 2019 César  Ferreira. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextView!
    let KEY = "note"
    
    @IBAction func save(_ sender: Any) {
        
        if let text = textField.text {
            
            UserDefaults.standard.set( text, forKey: KEY )
        }
    }
    
    private func getText() -> String {
        if let text = UserDefaults.standard.object( forKey: KEY ) {
            return text as! String
        }
        
        return ""
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        textField.text = getText()
    }
}

