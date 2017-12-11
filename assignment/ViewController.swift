//
//  ViewController.swift
//  assignment
//
//  Created by leeal on 2017/12/12.
//  Copyright © 2017年 Aptan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var randomBall : Int = 0
    let imageArray = ["ball1","ball2","ball3","ball4","ball5"]
    
    @IBOutlet weak var ballImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        UpdateBallImage()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func ask(_ sender: UIButton) {
        UpdateBallImage()
    }
    
    func UpdateBallImage(){
        randomBall = Int(arc4random_uniform(5))
        ballImage.image = UIImage(named:imageArray[randomBall])
    }
    
}

