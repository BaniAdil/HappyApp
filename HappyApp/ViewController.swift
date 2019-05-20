//
//  ViewController.swift
//  HappyApp
//
//  Created by Bani Adil on 20/05/19.
//  Copyright © 2019 Tim2One. All rights reserved.
//

import UIKit
import SAConfettiView

class ViewController: UIViewController {

    var confettiView : SAConfettiView!
    var rainingConfetti = false
    @IBOutlet weak var statusAnda: UILabel!
    @IBOutlet weak var pujianAnda: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        confettiView = SAConfettiView (frame: self.view.bounds)
        confettiView.type = .Diamond
        view.backgroundColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        view.addSubview(confettiView)
        print(randomNumber)
        
    }
    
    var randomNumber = Int.random(in: 0...2)
    
    

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?){
        if (rainingConfetti){
            confettiView.stopConfetti()
            statusAnda.isHidden = false
            pujianAnda.isHidden = true
            UIView.animate(withDuration: 1){
                self.view.backgroundColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
                
            }
        } else {
            confettiView.startConfetti()
            
            switch(randomNumber){
                case 0 :pujianAnda.text = "You Are Amazing!🙂"
                UIView.animate(withDuration: 1){
                    self.view.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
                }
                        break;
                case 1 :pujianAnda.text = "You Are Awesome!🙂"
                UIView.animate(withDuration: 1){
                    self.view.backgroundColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
                }
                        break;
                case 2 :pujianAnda.text = "You Are Beautiful!🙂"
                UIView.animate(withDuration: 1){
                    self.view.backgroundColor = #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)
                }
                        break;
            default:
                print("Hallo")
            }
            randomNumber = Int.random(in: 0...2)
            
            statusAnda.isHidden = true
            pujianAnda.isHidden = false
            
            
        }
        rainingConfetti = !rainingConfetti
    }
}

