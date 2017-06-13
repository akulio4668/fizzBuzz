//
//  ViewController.swift
//  FizzBuzz
//
//  Created by Akul Joshi on 6/7/17.
//  Copyright © 2017 Nebula. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var myNumberLabel: UILabel!
    var number = 0

    override func viewDidLoad()
    {
        super.viewDidLoad()
        myNumberLabel.text = String(number)
    }

    @IBAction func screenTapped(_ sender: UITapGestureRecognizer)
    {
        number += 1
        if (number % 3 == 0 && number % 5 == 0)
        {
            myNumberLabel.text = "Fizz Buzz"
            myNumberLabel.textColor = UIColor.black
            myNumberLabel.font = myNumberLabel.font.withSize(76)
            view.backgroundColor = UIColor.purple
        } else if (number % 3 == 0) {
            myNumberLabel.text = "Fizz"
            myNumberLabel.textColor = UIColor.black
            myNumberLabel.font = myNumberLabel.font.withSize(150)
            view.backgroundColor = UIColor.cyan
        } else if (number % 5 == 0) {
            myNumberLabel.text = "Buzz"
            myNumberLabel.textColor = UIColor.black
            myNumberLabel.font = myNumberLabel.font.withSize(140)
            view.backgroundColor = UIColor.yellow
        } else {
            myNumberLabel.text = String(number)
            myNumberLabel.textColor = UIColor.white
            myNumberLabel.font = myNumberLabel.font.withSize(168)
            view.backgroundColor = UIColor.black
        }
    }
    
    @IBAction func longPress(_ sender: UILongPressGestureRecognizer)
    {
        number = 0
        myNumberLabel.text = String(number)
        myNumberLabel.textColor = UIColor.white
        myNumberLabel.font = myNumberLabel.font.withSize(168)
        view.backgroundColor = UIColor.black
    }
}

