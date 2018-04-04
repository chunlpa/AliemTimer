//
//  ViewController.swift
//  speedAliem imageview
//
//  Created by D7703_08 on 2018. 4. 4..
//  Copyright © 2018년 D7703_08. All rights reserved.
//

import UIKit
var counter = 1
var myTimer = Timer()
var check = true
var checked = true   //타이머 객체 생성

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var index: UILabel!
    
  
  override func viewDidLoad() {
  
     }

          @IBAction func play(_ sender: Any) {
        if checked == true {
            
            myTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(doAnimation), userInfo: nil, repeats: true)
            checked = false
            
        } else if checked == false{
            myTimer.invalidate()
            checked = true
        }
          }
   
    
    
    @objc func doAnimation() {
        if counter == 5 {
            check = false
        } else if counter == 1 {
            check = true
        }
        if check == true {
            counter = counter + 1
        } else {
            counter = counter - 1
        }
        //타이머에 의해 동적으로 호출되는 함수
        imageView.image = UIImage(named: "frame\(counter).png")
        index.text = String(counter)
}


}
