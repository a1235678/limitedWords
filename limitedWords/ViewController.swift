//
//  ViewController.swift
//  limitedWords
//
//  Created by Apple Hsiao on 2016/11/6.
//  Copyright © 2016年 Apple Hsiao. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate, UITextViewDelegate {
    
    //=============TextField=============
    @IBOutlet weak var wordsTextField: UITextField!
    @IBOutlet weak var wordsCountLabel: UILabel!
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        let countOfWords = string.characters.count + textField.text!.characters.count - range.length
        
        if countOfWords > 10{
            return false
        }
        
        wordsCountLabel.text = String(countOfWords)

        return true
    }
    
    
    //=============TextView=============
    @IBOutlet weak var wordsTextView: UITextView!
    @IBOutlet weak var viewCountLabel: UILabel!
    
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        let countOfWords = text.characters.count + textView.text!.characters.count - range.length
        
        if countOfWords > 10{
            return false
        }
        
        viewCountLabel.text = String(countOfWords)
        
        return true
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

