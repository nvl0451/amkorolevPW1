//
//  ViewController.swift
//  amkorolevPW1
//
//  Created by Андрей Королев on 02.10.2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet var views: [UIView]!
    
    @IBAction func changeColorTapped(_ sender: Any) {
        let button = sender as? UIButton
        button?.isEnabled = false
        
        var colorSet = Set<UIColor>()
        while colorSet.count < views.count {
            colorSet.insert(
                    UIColor(
                        red: .random(in: 0...1),
                        green: .random(in: 0...1),
                        blue: .random(in: 0...1),
                        alpha: 1
                    )
            )
        }
        
        
        UIView.animate(withDuration: 1, animations: {
            for view in self.views {
                view.backgroundColor = colorSet.popFirst()
            }
        }, completion: {_ in button?.isEnabled = true})
    }
    
}

