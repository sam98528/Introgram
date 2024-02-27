//
//  SeunghyeonViewController.swift
//  Introgram
//
//  Created by t2023-m0056 on 2024/02/27.
//

import UIKit

class SeunghyeonViewController: UIViewController {

    @IBOutlet weak var profileCard: UIView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var birth: UILabel!
    @IBOutlet weak var mbti: UILabel!
    @IBOutlet weak var blog: UILabel!
    @IBOutlet weak var github: UILabel!
    @IBOutlet weak var sentence: UILabel!
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var message: UILabel!
    @IBOutlet weak var closeButton: UIButton!
    
    let profile_1: Dictionary<String, String> =
    ["name": "신승현",
     "birth": "03. 13.",
     "mbti": "ENFJ",
     "blog": "https://velog.io/@sinseunghyeon313/posts",
     "github": "https://github.com/sinseunghyeon",
     "sentence": "잘 부탁드립니다!!"];
    
    override func viewDidLoad() {
        super.viewDidLoad()

        profileCard.layer.cornerRadius = 30; // View의 모서리를 30만큼 둥글게
        image.layer.cornerRadius = 30; // UIImageView의 모서리를 30만큼 둥글게
        name.font = UIFont.boldSystemFont(ofSize: 32); // UILabel의 텍스트 크기와 굵기를 32로 설정
        image.image = UIImage(named: "신승현"); // UIImageView에 "Image"라는 이름의 ImageSet을 설정한다.
        
        message.layer.cornerRadius = message.frame.size.height / 2;
        message.layer.borderWidth = 2.0;
        message.layer.borderColor = UIColor.white.cgColor;
        
        name.text = profile_1["name"];
        birth.text = profile_1["birth"];
        mbti.text = profile_1["mbti"];
        blog.text = profile_1["blog"];
        github.text = profile_1["github"];
        sentence.text = profile_1["sentence"];
    }
    
    @IBAction func closeView(_ sender: Any) {
        self.dismiss(animated: true, completion: nil);
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
