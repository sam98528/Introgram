//
//  FeedPhotoCollectionViewCell.swift
//  Introgram
//
//  Created by Sam.Lee on 2/28/24.
//

import UIKit

class FeedPhotoCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet var feedImageView: UIImageView!
    
    static let identifier = "FeedPhotoCollectionViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: "FeedPhotoCollectionViewCell", bundle: nil)
    }
    override func prepareForReuse() {
        super.prepareForReuse()

            // 셀을 초기화 해주는 코드.
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    /*
    public func configure(with model: )
     */
}
