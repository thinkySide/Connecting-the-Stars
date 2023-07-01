//
//  Star.swift
//  ConnectingTheStars
//
//  Created by 김민준 on 2023/07/01.
//

import SnapKit
import UIKit

final class Star: UIView {
    
    // MARK: - Component
    
    let bubble: Bubble = {
        let bubble = Bubble()
        return bubble
    }()
    
    let body: UIView = {
        let view = UIView()
        view.backgroundColor = Color.yellow
        view.clipsToBounds = true
        return view
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
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        body.layer.cornerRadius = body.frame.height / 2
    }
    
    
    // MARK: - Auto Layout Method
    
    private func setupAddSubView() {
        [bubble, body]
            .forEach { addSubview($0) }
    }
    
    private func setupConstraints() {
        
        // self
        self.snp.makeConstraints {
            $0.top.equalTo(bubble.snp.top)
            $0.leading.trailing.equalTo(bubble)
            $0.bottom.equalTo(body.snp.bottom)
        }
        
        // bubble
        bubble.snp.makeConstraints {
            $0.top.equalTo(0)
            $0.centerX.equalTo(body.snp.centerX)
        }
        
        // body
        body.snp.makeConstraints {
            $0.top.equalTo(bubble.snp.bottom).offset(8)
            $0.centerX.equalTo(self)
            $0.width.height.equalTo(48)
        }
    }
}
