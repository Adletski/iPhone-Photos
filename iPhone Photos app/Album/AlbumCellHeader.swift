//
//  AlbumCellHeader.swift
//  iPhone Photos app
//
//  Created by Adlet Zhantassov on 15.03.2023.
//

import UIKit
import SnapKit

class AlbumCellHeader: UICollectionReusableView {
    
    static let identifier = "AlbumCellHeader"
    
    lazy var lineView: UIView = {
        let view = UIView()
        view.backgroundColor = .systemGray5
        return view
    }()
    
    lazy var title: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 25, weight: .bold)
        return label
    }()
    
    lazy var button: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("All", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 17)
        button.setTitleColor(.black, for: .normal)
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        clipsToBounds = true
        setupViews()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews() {
        addSubview(lineView)
        addSubview(title)
        addSubview(button)
    }
    
    private func setupConstraints() {
        lineView.snp.makeConstraints {
            $0.top.equalTo(self)
            $0.width.equalTo(self.snp.width)
            $0.height.equalTo(1)
        }
        
        title.snp.makeConstraints {
            $0.bottom.equalTo(self)
            $0.left.equalTo(self)
        }
        
        button.snp.makeConstraints {
            $0.bottom.equalTo(self)
            $0.right.equalTo(self)
        }
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        title.text = nil
        button.titleLabel?.text = nil
    }
    
}
