//
//  ViewController.swift
//  Mp3
//
//  Created by NguyenDucBien on 11/18/16.
//  Copyright © 2016 NguyenDucBien. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var logo: UIImageView!

    @IBOutlet weak var text: UILabel!
    
    
    @IBOutlet weak var name: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        logo!.alpha = 0
        text!.alpha = 0
        name!.alpha = 0
        
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        UIView.animateWithDuration(4, animations: {
            self.logo!.alpha = 1
        }) {(finished) in
            UIView.animateWithDuration(3, animations: {
                self.text!.center = CGPointMake(self.logo!.center.x, 100)
                self.text!.alpha = 1
            }) {(finished) in
                UIView.animateWithDuration(3, animations: {
                    self.name!.center = CGPointMake(self.name!.center.x, 500)
                    self.name!.alpha = 1
                })
            }
        }
    }
}

