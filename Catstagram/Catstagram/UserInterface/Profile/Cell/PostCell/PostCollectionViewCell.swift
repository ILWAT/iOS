//
//  PostCollectionViewCell.swift
//  Catstagram
//
//  Created by 문정호 on 2022/04/30.
//

import UIKit
import Kingfisher

class PostCollectionViewCell: UICollectionViewCell {
    static let identifier = "PostCollectionViewCell"

    @IBOutlet weak var postImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    public func setupData(_ imageURLStr: String?) {
        // 이미지뷰의 이미지를 업로드한다.
        
        guard let imageURLStr = imageURLStr else { return }
        if let url = URL(string: imageURLStr){
            postImageView.kf.setImage(with: url, placeholder: UIImage(systemName: "photo")) //setImage에서 다른 변수들 사용 안함
        }
    }

}
