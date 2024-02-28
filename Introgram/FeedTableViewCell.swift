//
//  FeedTableViewCell.swift
//  Introgram
//
//  Created by Sam.Lee on 2/27/24.
//

import UIKit

class FeedTableViewCell: UITableViewCell {

    @IBOutlet weak var profileNameLabel: UILabel!
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var feedImageView: UIImageView!
    @IBOutlet weak var likesLabel: UILabel!

    @IBOutlet weak var feedTextLabel: UILabel!
    
    @IBOutlet weak var heartImageView: UIImageView!
    static let identifier = "FeedTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: "FeedTableViewCell", bundle: nil)
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        profileImageView.layer.cornerRadius = profileImageView.frame.height/2
        profileImageView.layer.borderWidth = 1
        profileImageView.clipsToBounds = true
        profileImageView.layer.borderColor = UIColor.label.cgColor
        
        registerForTraitChanges([UITraitUserInterfaceStyle.self], handler: { (self: Self, previousTraitCollection: UITraitCollection) in
            if self.traitCollection.userInterfaceStyle == .light {
                self.profileImageView.layer.borderColor = UIColor.label.cgColor
                print("App switched to light mode")
            } else {
                self.profileImageView.layer.borderColor = UIColor.label.cgColor
                print("App switched to dark mode")
            }
        })
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(imageViewTapped(_:)))
        feedImageView.isUserInteractionEnabled = true
        tapGesture.numberOfTapsRequired = 2
        feedImageView.addGestureRecognizer(tapGesture)
    }
    @objc func imageViewTapped(_ sender: UITapGestureRecognizer) {
        let str = likesLabel.text!
        let numbers = str.components(separatedBy: CharacterSet.decimalDigits.inverted)
        let result = numbers.joined()

                
        if heartImageView.image == UIImage(systemName: "heart.fill") {
            heartImageView.image = UIImage(systemName: "heart")
            heartImageView.tintColor = UIColor.black
            if let intValue = Int(result) {
                likesLabel.text = "좋아요 \(intValue-1)개"
            }
            
        }else{
            heartImageView.image = UIImage(systemName: "heart.fill")
            heartImageView.tintColor = UIColor.systemPink
            if let intValue = Int(result) {
                likesLabel.text = "좋아요 \(intValue+1)개"
            }
        }
        
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func highlightText(text: String) {
            guard let feedTextLabel = feedTextLabel else {
                return
            }
           
           let attributedText = NSMutableAttributedString(string: feedTextLabel.text ?? "")
           let range = (feedTextLabel.text as NSString?)?.range(of: text)
           
           if let range = range {
               attributedText.addAttribute(.font, value: UIFont.boldSystemFont(ofSize: feedTextLabel.font.pointSize), range: range)
               attributedText.addAttribute(.foregroundColor, value: UIColor.red, range: range)
               feedTextLabel.attributedText = attributedText
           }
       }
    
    
}
