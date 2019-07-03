//
//  ViewController.swift
//  ToccaTest
//
//  Created by Terrance Griffith on 7/2/19.
//  Copyright © 2019 Terrance Griffith. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var mToolBar: UIToolbar!
    @IBOutlet var contactsButton: UIBarButtonItem!
    @IBOutlet var myCardButton: UIBarButtonItem!
    @IBOutlet var settingsButton: UIBarButtonItem!
    @IBOutlet var myCardView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        myCardView.layer.cornerRadius = 10;
        myCardView.layer.borderWidth = 1.5;
        
        setupBackColorGradient();
    }
    
    func setupBackColorGradient(){
        
        let colorBot = UIColor(red: 200.0 / 255.0, green: 200.0 / 255.0, blue: 192.0 / 255.0, alpha: 1.0).cgColor
        let colorTop = UIColor(red: 2.0 / 255.0, green: 2.0 / 255.0, blue: 100.0 / 255.0, alpha: 1.0).cgColor
        
        let gl = CAGradientLayer()
        gl.colors = [colorTop, colorBot]
        gl.locations = [0.0, 1.0]
        
        self.view.backgroundColor = UIColor.clear;
        let backgroundLayer = gl
        backgroundLayer.frame = view.frame
        view.layer.insertSublayer(backgroundLayer, at: 0)
    }

}

