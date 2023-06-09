//
//  SpaceViewController.swift
//  ConnectingTheStars
//
//  Created by 김민준 on 2023/05/19.
//

import UIKit

/// 우주(메인화면) UIView 클래스
final class SpaceViewController: UIViewController {
    
    // MARK: - Properties
    
    private let viewManager = SpaceView()


    // MARK: - ViewController LifeCycle
    
    override func loadView() {
        super.loadView()
        view = viewManager
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}

