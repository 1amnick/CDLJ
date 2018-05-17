//
//  ViewController.swift
//  Complement du jour
//
//  Created by mac user on 4/20/18.
//  Copyright © 2018 1amnick. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var Textbox: UITextView!
    
    @IBOutlet weak var Background: UIImageView!
    @IBOutlet weak var Label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Background.image =  UIImage(named: "Rose.png")
        //Background.contentMode = UIViewContentMode.scaleAspectFill
        checkUpdateAndDownload()
        Textbox.text = GetRandomTextLine()
    }
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func WEWANTMOARCOMPLEMENTS(_ sender: Any) {
        Textbox.text = GetRandomTextLine()
    }
    
}

