//
//  MediaCollectionViewCell.swift
//  iPhone Photos app
//
//  Created by Adlet Zhantassov on 16.03.2023.
//

import UIKit

class MediaCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "MediaCollectionViewCell"

    lazy var image: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFit
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
    
    lazy var accessory: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFit
        image.clipsToBounds = true
        return image
    }()

    private let stack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        return stack
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
        setupConstraints()
    }

    private func setupViews() {
        contentView.addSubview(image)
        contentView.addSubview(title)
        contentView.addSubview(quantity)
        contentView.addSubview(accessory)
    }

    private func setupConstraints() {
        image.snp.makeConstraints {
            $0.centerY.equalTo(contentView)
            $0.leading.equalTo(contentView)
        }
        
        title.snp.makeConstraints {
            $0.centerY.equalTo(contentView)
            $0.leading.equalTo(image.snp.trailing).offset(10)
        }
        
        accessory.snp.makeConstraints {
            $0.centerY.equalTo(contentView)
            $0.trailing.equalTo(contentView)
        }
        
        quantity.snp.makeConstraints {
            $0.centerY.equalTo(contentView)
            $0.trailing.equalTo(accessory.snp.leading).offset(-10)
        }
    }

    override func prepareForReuse() {
        self.image.image = nil
        self.title.text = nil
        self.quantity.text = nil
        self.accessory.image = nil
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
