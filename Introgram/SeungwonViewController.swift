//
//  SeungwonViewController.swift
//  Introgram
//
//  Created by Sam.Lee on 2/26/24.
//

import UIKit

class SeungwonViewController: UIViewController {
    

    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var dismissButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        textLabel.layer.cornerRadius = textLabel.frame.size.height / 2
        textLabel.layer.borderWidth = 2.0
        textLabel.layer.borderColor = UIColor.white.cgColor
        // Do any additional setup after loading the view.
    }
    
    @IBAction func dismissButtonTouched(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    


}
