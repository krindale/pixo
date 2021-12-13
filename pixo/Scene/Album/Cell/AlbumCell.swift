//
//  AlbumCell.swift
//  pixo
//
//  Created by 이해상 on 2021/12/14.
//

import UIKit

class AlbumCell: UICollectionViewCell {
    
    static let identifier: String = "AlbumCell"

    // Description Label
    lazy var imageView: UIImageView = {
        var imageView = UIImageView()
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.setUI()
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    // Init Cell UI
    private func setUI() {
//        // Add Subviews
//        self.contentView.addSubview(self.descriptionLbl)
//
//        // Description Constrains
//        self.descriptionLbl.snp.remakeConstraints {
//            $0.top.left.right.bottom.equalToSuperview().inset(20.0)
//        }
    }
    
    // Bind Model
    func bind(description: String) {
//        self.descriptionLbl.text ß= description
    }
}
