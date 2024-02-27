//
//  ViewController.swift
//  Introgram
//
//  Created by Sam.Lee on 2/26/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    @IBOutlet weak var tableView: UITableView!
    
    let profileList = Profile.data
    let feedList = Feed.data

    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        //registerXib()
        collectionView.collectionViewLayout = UICollectionViewFlowLayout()
        if let flowLayout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            flowLayout.scrollDirection = .horizontal
        }
        
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(FeedTableViewCell.nib(), forCellReuseIdentifier: FeedTableViewCell.identifier)
    }


    
}

extension ViewController: UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout,UITableViewDataSource,UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return feedList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: FeedTableViewCell.identifier, for: indexPath) as! FeedTableViewCell
        let tartget = feedList[indexPath.row]
        cell.profileNameLabel.text = tartget.writer
        cell.profileImageView.image = UIImage(named: tartget.writerImage)
        cell.feedImageView.image = UIImage(named: tartget.imageName)
        cell.likesLabel.text = "좋아요 \(tartget.likes)개"
        cell.feedTextLabel.text = tartget.text
        highlightText(text: "E4I1_Official", inLabel: cell.feedTextLabel)
        highlightText(text: "\(String(tartget.likes))", inLabel: cell.likesLabel)
        
        func highlightText(text: String, inLabel label: UILabel) {
            let attributedText = NSMutableAttributedString(string: label.text ?? "")
            let range = (label.text as NSString?)?.range(of: text)
            
            if let range = range {
                attributedText.addAttribute(.font, value: UIFont.boldSystemFont(ofSize: label.font.pointSize), range: range)
                label.attributedText = attributedText
            }
        }
        
        return cell
    }
    
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return profileList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as! CollectionViewCell
        
        let tartget = profileList[indexPath.row]
        cell.nameLabel.text = tartget.name
        cell.imageView.image = UIImage(named: tartget.image)
        return cell
        
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let size = collectionView.frame.size.height
        return CGSize(width: size, height: size)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
            return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
            return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let selectedCellIndex = indexPath.item


        guard let nextVC = self.storyboard?.instantiateViewController(identifier: "SeungwonViewController") as? SeungwonViewController else { return }
            nextVC.modalPresentationStyle = .overFullScreen
            nextVC.modalTransitionStyle = .coverVertical
            self.present(nextVC, animated: true, completion: nil)
        
        /*
        switch selectedCellIndex {
        case 0:
            
        case 1:
            // 두 번째 셀을 선택한 경우의 동작
            // 원하는 뷰를 열거나 필요한 로직을 수행하세요.
            break
        // 다른 셀들에 대한 동작을 추가로 처리할 수 있습니다.
        default:
            break
        }
         */
    }

}
