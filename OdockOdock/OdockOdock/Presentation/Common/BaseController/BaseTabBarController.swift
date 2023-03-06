//
//  BaseTabBarController.swift
//  OdockOdock
//
//  Created by 이호영 on 2023/03/06.
//

import UIKit

public class BaseTabBarController: UITabBarController {
    
    public override func viewDidLoad() {
        super.viewDidLoad()

        setTabBarAppearance()
    }
    
    func setTabBarAppearance() {
        let itemAppearance = UITabBarItemAppearance()
        itemAppearance.normal.iconColor = OOColor.gray600
        itemAppearance.normal.titleTextAttributes = [
            NSAttributedString.Key.foregroundColor: OOColor.gray600 ?? UIColor.gray,
            NSAttributedString.Key.font: OOFont.body4()
        ]
        
        itemAppearance.selected.iconColor = OOColor.green
        itemAppearance.selected.titleTextAttributes = [
            NSAttributedString.Key.foregroundColor: OOColor.green ?? UIColor.green,
            NSAttributedString.Key.font: OOFont.body4()
        ]
        
        let appearance = UITabBarAppearance()
        
        appearance.configureWithDefaultBackground()
        appearance.backgroundEffect = .none
        appearance.backgroundColor = .systemBackground
        appearance.shadowColor = .clear
        
        appearance.stackedLayoutAppearance = itemAppearance
        appearance.inlineLayoutAppearance = itemAppearance
        appearance.compactInlineLayoutAppearance = itemAppearance
        
        tabBar.scrollEdgeAppearance = appearance
        tabBar.standardAppearance = appearance
        addTopBorder()
    }
    
    func addTopBorder() {
        let topBorder = CALayer()
        topBorder.frame = CoreGraphics.CGRect(x: 0, y: 0, width: self.tabBar.bounds.width, height: 1)
        topBorder.backgroundColor = OOColor.gray300?.cgColor
        tabBar.layer.addSublayer(topBorder)
    }
}
