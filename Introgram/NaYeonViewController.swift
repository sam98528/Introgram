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

