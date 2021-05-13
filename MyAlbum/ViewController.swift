//
//  ViewController.swift
//  MyAlbum
//
//  Created by judongseok on 2021/05/13.
//

import UIKit

class ViewController: UIViewController {

    var currentValue = 0

    @IBOutlet weak var priceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        refresh()
    }

    @IBAction func homework(_ sender: Any) {
        let message = "가격은 \(currentValue) 입니다"
        let alert = UIAlertController(title: message, message: "Done!", preferredStyle: .alert)
        
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
        refresh()
    }
    
    func refresh() {
        let randomPrice = arc4random_uniform(10000) + 1
        currentValue = Int(randomPrice)
        priceLabel.text = "$\(currentValue)"
    }
}
