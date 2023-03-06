//
//  OOTabBarController.swift
//  OdockOdock
//
//  Created by 이호영 on 2023/03/06.
//

import UIKit

/// 오독오독에서 사용하는 TabBar
final class OOTabBarController: BaseTabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        configure()
    }

    /// TabBar를 구성하는 ViewControllers를 생성하고 ViewControllers를 설정
    func configure() {
        let homeViewController = ViewController()
        homeViewController.tabBarItem = UITabBarItem(title: "Home", image: nil, tag: 0)
        
        self.viewControllers = [homeViewController]
    }
}
