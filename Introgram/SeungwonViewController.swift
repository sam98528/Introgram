//
//  SeungwonViewController.swift
//  Introgram
//
//  Created by Sam.Lee on 2/26/24.
//

import UIKit

class SeungwonViewController: UIViewController {
    
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
    ["name": "이승원",
     "birth": "05. 28.",
     "mbti": "INTJ",
     "blog": "https://velog.io/@sam98528/posts",
     "github": "https://github.com/sam98528",
     "sentence": "하기 싫은 걸 해야,\n하고 싶은 걸 한다."];
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let desiredColor = UIColor(hex: "#FEE715")
        profileCard.layer.cornerRadius = 30; // View의 모서리를 30만큼 둥글게
        profileCard.layer.borderWidth = 2.0
        profileCard.layer.borderColor = desiredColor.cgColor
        image.layer.cornerRadius = 30; // UIImageView의 모서리를 30만큼 둥글게
        name.font = UIFont.boldSystemFont(ofSize: 32); // UILabel의 텍스트 크기와 굵기를 32로 설정
        image.image = UIImage(named: "이승원"); // UIImageView에 "Image"라는 이름의 ImageSet을 설정한다.
        
        message.layer.cornerRadius = message.frame.size.height / 2;
        message.layer.borderWidth = 2.0;
        message.layer.borderColor = UIColor.white.cgColor;
        
        name.text = profile_1["name"];
        birth.text = profile_1["birth"];
        mbti.text = profile_1["mbti"];
        blog.text = profile_1["blog"];
        github.text = profile_1["github"];
        sentence.text = profile_1["sentence"];
        

        changeTextColor(text: "하고 싶은 걸", inLabel: sentence, color: UIColor.red)
        
        func changeTextColor(text: String, inLabel label: UILabel, color: UIColor) {
            let attributedText = NSMutableAttributedString(string: label.text ?? "")
            let range = (label.text as NSString?)?.range(of: text)
            
            if let range = range {
                attributedText.addAttribute(.foregroundColor, value: color, range: range)
                label.attributedText = attributedText
            }
        }

    }
    
    @IBAction func closeView(_ sender: Any) {
        self.dismiss(animated: true, completion: nil);
    }
    


}

extension UIColor {
    convenience init(hex: String, alpha: CGFloat = 1.0) {
        var hexValue = hex.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines).uppercased()

        if hexValue.hasPrefix("#") {
            hexValue.remove(at: hexValue.startIndex)
        }

        var rgbValue: UInt64 = 0
        Scanner(string: hexValue).scanHexInt64(&rgbValue)

        let red = CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0
        let green = CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0
        let blue = CGFloat(rgbValue & 0x0000FF) / 255.0

        self.init(red: red, green: green, blue: blue, alpha: alpha)
    }
}
