//
//  SpaceView.swift
//  ConnectingTheStars
//
//  Created by 김민준 on 2023/05/19.
//

import UIKit

/// 우주(메인화면) UIView 클래스
final class SpaceView: UIView {
    
    // MARK: - Initial Method

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .systemBlue
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
