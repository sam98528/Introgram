//
//  ViewController.swift
//  Introgram_Nayeon
//
//  Created by 채나연 on 2/26/24.
//

import UIKit

class NaYeonViewController: UIViewController {

    @IBOutlet weak var dismissButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func dismissButtonClicked(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
}

