//
//  FriendPhotosCollectionViewController.swift
//  VK_Prohorov
//
//  Created by Alex Shader on 24.08.2020.
//  Copyright © 2020 shaderness. All rights reserved.
//

import UIKit

class FriendPhotosCollectionViewController: UICollectionViewController {
    var user: User?
    
    override func collectionView(_ collectionView: UICollectionView,
                                 numberOfItemsInSection section: Int) -> Int { user?.photosImageName.count ?? 0 }
    
    override func collectionView(_ collectionView: UICollectionView,
                                 cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FriendPhotosCollectionViewCell",
                                                      for: indexPath) as! FriendPhotosCollectionViewCell
        
        guard let photo = user?.photosImageName[indexPath.row] else { 
            return UICollectionViewCell()
        }
        cell.friendPhotoImageView.image = UIImage(named: photo)
        
        return cell
    }
}
