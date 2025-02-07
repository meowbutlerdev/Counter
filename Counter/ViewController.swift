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
    
    @IBAction func plusButtonTapped(_ sender: UIButton) {
        count += 1
        numberLabel.text = String(count)
    }
    
    @IBAction func minusButtonTapped(_ sender: UIButton) {
        count -= 1
        numberLabel.text = String(count)
    }
    
    @IBAction func resetButtonTapped(_ sender: UIButton) {
        count = 0
        numberLabel.text = String(count)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
