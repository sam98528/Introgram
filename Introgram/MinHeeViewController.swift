//
//  ViewController.swift
//  intromin
//
//  Created by 그로밋 on 2/27/24.
//

import UIKit

class MinHeeViewController: UIViewController {

    @IBOutlet var min: UIImageView!
    @IBOutlet var hee: UIImageView!
    @IBOutlet var book: UIImageView!
    @IBOutlet var coffee: UIImageView!
    @IBOutlet var disney: UIImageView!
    @IBOutlet weak var mylabel: UILabel!
    
    @IBOutlet weak var dismissButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        min.image = UIImage(named: "min")
        hee.image = UIImage(named: "hee")
        book.image = UIImage(named: "book")
        coffee.image = UIImage(named: "coffee")
        disney.image = UIImage(named: "disney")
        
        let panGesture = UIPanGestureRecognizer(target: self, action: #selector(handlePanGesture(_:)))
        view.addGestureRecognizer(panGesture)
    }


    @IBAction func dismissButtonClicked(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @objc func handlePanGesture(_ gesture: UIPanGestureRecognizer) {
        let translation = gesture.translation(in: view)
        let velocity = gesture.velocity(in: view)
        if velocity.y > 1000 {
            dismiss(animated: true, completion: nil)
        }
                
    }
    
}

