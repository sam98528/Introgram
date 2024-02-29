//
//  JuHyunViewController.swift
//  intro
//
//  Created by CaliaPark on 2/27/24.
//

import UIKit

class JuHyunViewController: UIViewController {
    
    @IBOutlet weak var mbtiButton: UIButton!
    @IBOutlet weak var birthButton: UIButton!
    @IBOutlet weak var hobbyButton: UIButton!
    @IBOutlet weak var dismissButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let panGesture = UIPanGestureRecognizer(target: self, action: #selector(handlePanGesture(_:)))
        view.addGestureRecognizer(panGesture)
        
    }
    @IBAction func dismissButtonClicked(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func mbtiTapped(_ sender: UIButton) {
        mbtiButton.setTitle("ISFP", for: .normal)
    }
    @IBAction func bitrhTapped(_ sender: UIButton) {
        birthButton.setTitle("12.15.", for: .normal)
    }
    @IBAction func hobbyTapped(_ sender: UIButton) {
        hobbyButton.setTitle("하이킹", for: .normal)
    }
    
    @objc func handlePanGesture(_ gesture: UIPanGestureRecognizer) {
        let translation = gesture.translation(in: view)
        let velocity = gesture.velocity(in: view)
        if velocity.y > 1000 {
            dismiss(animated: true, completion: nil)
        }
                
    }
}

