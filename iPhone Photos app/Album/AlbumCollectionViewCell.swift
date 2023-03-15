//
//  AlbumCollectionViewCell.swift
//  iPhone Photos app
//
//  Created by Adlet Zhantassov on 15.03.2023.
//

import UIKit

class AlbumCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "AlbumCollectionViewCell"
    
    lazy var image: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFill
        image.clipsToBounds = true
        return image
    }()
    
    lazy var title: UILabel = {
        let label = UILabel()
        return label
    }()
    
    lazy var quantity: UILabel = {
        let label = UILabel()
        return label
    }()
    
    private let stack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.distribution = .fill
        return stack
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        clipsToBounds = true
        setupViews()
        setupConstraints()
    }
    
    private func setupViews() {
//        contentView.backgroundColor = .red
        contentView.addSubview(stack)
        stack.addArrangedSubview(image)
        stack.addArrangedSubview(title)
        stack.addArrangedSubview(quantity)
    }
    
    private func setupConstraints() {
        stack.snp.makeConstraints {
            $0.left.top.right.bottom.equalTo(contentView)
            $0.width.equalTo(170)
            $0.height.equalTo(200)
        }
    }
    
    override func prepareForReuse() {
        self.image.image = nil
        self.title.text = nil
        self.quantity.text = nil
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
