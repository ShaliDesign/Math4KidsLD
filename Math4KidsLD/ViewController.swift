//
//  ViewController.swift
//  Math4KidsLD
//
//  Created by Linh&ShawnD on 2017-01-14.
//  Copyright © 2017 Shali Design. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var lbNum1: UILabel!

    @IBOutlet weak var lbNum2: UILabel!
    
    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var btn2: UIButton!
    @IBOutlet weak var btn3: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    setRandom()
    
        
        
        
        
    }
    @IBAction func btn_action(_ sender: UIButton) {
        setRandom()
    }
    

    func setRandom() {
        let random1 = Int (arc4random_uniform(5)) + 1
        let random2 = Int (arc4random_uniform(5)) + 1
        print("\(random1) \(random2)")
        
        
        // Hien thi so
        
        lbNum1.text = String(random1)
        lbNum2.text = String(random2)
        setResult(randomA: random1, randomB: random2)
     
        
    }

    func setResult(randomA: Int, randomB: Int)
    
    {
        
    btn1.setTitle(String(randomA), for: .normal)
    btn2.setTitle(String(randomB), for: .normal)
    btn3.setTitle(String(sum(p1: randomA, p2: randomB)), for: .normal)
    
    }

    func sum(p1: Int, p2: Int) -> Int
    {
        return p1+p2;
    
    }
    
    }




