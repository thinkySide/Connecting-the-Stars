//
//  Bubble.swift
//  ConnectingTheStars
//
//  Created by 김민준 on 2023/07/01.
//

import SnapKit
import UIKit

final class Bubble: UIView {
    
    // MARK: - Component
    
    let bubble: BubbleText = {
        let bubble = BubbleText()
        return bubble
    }()
    
    private let tail: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "triangle.fill")
        imageView.transform = imageView.transform.rotated(by: .pi)
        imageView.tintColor = Color.yellow
        return imageView
    }()
    
    
    // MARK: - Initial Method
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupAddSubView()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    // MARK: - Auto Layout Method
    
    private func setupAddSubView() {
        [bubble, tail]
            .forEach { addSubview($0) }
    }
    
    private func setupConstraints() {
        
        // self
        self.snp.makeConstraints {
            $0.top.equalTo(bubble.snp.top)
            $0.leading.trailing.equalTo(bubble)
            $0.bottom.equalTo(tail.snp.bottom)
        }
        
        // bubble
        bubble.snp.makeConstraints {
            $0.top.equalTo(0)
            $0.centerX.equalTo(self)
        }
        
        // tail
        tail.snp.makeConstraints {
            $0.top.equalTo(bubble.snp.bottom).offset(-4)
            $0.centerX.equalTo(bubble)
            $0.width.height.equalTo(16)
        }
    }
}
