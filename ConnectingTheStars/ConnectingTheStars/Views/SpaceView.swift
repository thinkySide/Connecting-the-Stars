//
//  SpaceView.swift
//  ConnectingTheStars
//
//  Created by 김민준 on 2023/05/19.
//

import SnapKit
import UIKit

/// 우주(메인화면) UIView 클래스
final class SpaceView: UIView {
    
    // MARK: - Component
    
    let basicStar: Star = {
        let star = Star()
        return star
    }()
    
    
    // MARK: - Initial Method
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = Color.space
        setupAddSubView()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    // MARK: - Auto Layout Method
    
    private func setupAddSubView() {
        [basicStar]
            .forEach { addSubview($0) }
    }
    
    private func setupConstraints() {
        
        // basicStar
        basicStar.snp.makeConstraints {
            $0.center.equalTo(self)
        }
    }
    
}
