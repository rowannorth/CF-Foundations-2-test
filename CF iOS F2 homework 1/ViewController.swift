//
//  ViewController.swift
//  CF iOS F2 homework 1
//
//  Created by Rowan North on 8/6/14.
//  Copyright (c) 2014 Rowan North. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
     var buttonAnnouncement = "Uh oh, you pressed my button!"
     var switchMessage = "Yep, you toggled my switch."
     var sliderMessage = "That slider sure does work."
    
    @IBAction func buttonPress(sender: AnyObject) {
       
        println(buttonAnnouncement)
    }
    @IBOutlet weak var mySwitch: UISwitch!
    
    @IBAction func sendMessage(sender: UISwitch) {
        println(switchMessage)
    }
    @IBOutlet weak var mySlider: UISlider!
        var name = "Rowan"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.mySlider.value = 0.0
    }
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        self.mySlider.setValue(0.0, animated: true)
    }
    @IBAction func sliderDidSlide(sender: UISlider, forEvent event: UIEvent) {
        if self.mySlider.value > 0.5 {
        println(sliderMessage)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

