//
//  ViewController.swift
//  W05-Scene
//
//  Created by SWUCOMPUTER on 2017. 9. 26..
//  Copyright © 2017년 SWUCOMPUTER. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var pizzaChicken: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toOrderView" {
            let dest = segue.destination as! OrderViewController
            let order: String! = pizzaChicken.titleForSegment(at: pizzaChicken.selectedSegmentIndex)
            
            dest.title = order
            
            let out: String = "감사합니다\n 주문내용 : \(order!)입니다."
            dest.info = out
        
        
        }
        
        let destination = segue.destination
        let button = sender as! UIButton
        destination.title = button.titleLabel?.text
    }


}

