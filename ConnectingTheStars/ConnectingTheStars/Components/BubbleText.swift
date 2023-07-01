//
//  BubbleText.swift
//  ConnectingTheStars
//
//  Created by 김민준 on 2023/07/01.
//

import UIKit

final class BubbleText: UILabel {
    
    // MARK: - Initial Method
    
    private let padding = UIEdgeInsets(top: 6, left: 12, bottom: 6, right: 8)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupLabel()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func drawText(in rect: CGRect) {
        super.drawText(in: rect.inset(by: padding))
        layer.cornerRadius = self.frame.height / 2
    }
    
    override var intrinsicContentSize: CGSize {
        var contentSize = super.intrinsicContentSize
        contentSize.height += padding.top + padding.bottom
        contentSize.width += padding.left + padding.right
        return contentSize
    }
    
    
    // MARK: - Setup Method
    
    private func setupLabel() {
       font = UIFont(name: Pretendard.semiBold, size: 20)
       text = "안녕하세요"
       textAlignment = .center
       textColor = Color.space
       backgroundColor = Color.yellow
       clipsToBounds = true
    }
    
}
