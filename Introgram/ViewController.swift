//
//  ViewController.swift
//  Introgram
//
//  Created by Sam.Lee on 2/26/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    let profileList = Profile.data


    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        //registerXib()
        collectionView.collectionViewLayout = UICollectionViewFlowLayout()
        if let flowLayout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            flowLayout.scrollDirection = .horizontal
        }

    }


}

extension ViewController: UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
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
               nextVC.modalTransitionStyle = .coverVertical
        nextVC.modalPresentationStyle = .fullScreen
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
