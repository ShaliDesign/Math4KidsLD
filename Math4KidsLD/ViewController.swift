//
//  ViewController.swift
//  Math4KidsLD
//
//  Created by Linh&ShawnD on 2017-01-14.
//  Copyright © 2017 Shali Design. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var time: Int = 0
    var timer = Timer()
    
    
    @IBOutlet weak var lbNum1: UILabel!

    @IBOutlet weak var lbNum2: UILabel!
    
    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var btn2: UIButton!
    @IBOutlet weak var btn3: UIButton!
    
    @IBOutlet weak var lbResult: UILabel!
    @IBOutlet weak var lbDau: UILabel!
    @IBOutlet weak var lbRight: UILabel!
    @IBOutlet weak var lbWrong: UILabel!
    @IBOutlet weak var lbTime: UILabel!

    
    
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
    
    
    func countDown() {
        time = time - 1
        lbTime.text = String(time)
        if time == 0 {
            time = 10
        }
    }
    
    func start(){
        time = 10
        
    }
    func resetTimer() {
        
    }
    
    @IBAction func btn1(_ sender: UIButton) {
    }
    @IBAction func btn2(_ sender: UIButton) {
    }
    
    @IBAction func btn3(_ sender: UIButton) {
    }
    
    func randomPosition(_numb:Int){
        _ = Int(arc4random_uniform(3)+1)
        btn1.setTitle(String(_numb), for: UIControlState())
        btn2.setTitle(String(_numb), for: UIControlState())
        btn3.setTitle(String(_numb), for: UIControlState())
    }
    
    }
    
    
    




