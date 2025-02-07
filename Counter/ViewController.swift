//
//  ViewController.swift
//  Counter
//
//  Created by 박지성 on 2/6/25.
//

import UIKit

class ViewController: UIViewController {
    var count = 0
    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var plusButton: UIButton!
    @IBOutlet weak var minusButton: UIButton!
    
    @IBAction func plusButtonTapped(_ sender: UIButton) {
        if count < 10 {
            count += 1
            numberLabel.text = String(count)
        }
        
        isButtonActivate()
    }
    
    @IBAction func minusButtonTapped(_ sender: UIButton) {
        if count > -10 {
            count -= 1
            numberLabel.text = String(count)
        }
        
        isButtonActivate()
    }
    
    @IBAction func resetButtonTapped(_ sender: UIButton) {
        count = 0
        numberLabel.text = String(count)
        
        isButtonActivate()
    }
    
    func isButtonActivate() {
        plusButton.isEnabled = !(count == 10)
        plusButton.alpha = plusButton.isEnabled ? 1 : 0.5
        
        minusButton.isEnabled = !(count == -10)
        minusButton.alpha = minusButton.isEnabled ? 1 : 0.5
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
