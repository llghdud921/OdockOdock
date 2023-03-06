//
//  BaseNavigationController.swift
//  OdockOdock
//
//  Created by 이호영 on 2023/03/06.
//

import UIKit

public class BaseNavigationController: UINavigationController {

    public override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        setNavigationBarAppearance()
    }
    
    func setNavigationBarAppearance() {
        let backButtonAppearance = UIBarButtonItemAppearance(style: .plain)
        backButtonAppearance.normal.titleTextAttributes = [.foregroundColor: UIColor.clear]
        
        let backButtonImage = UIImage(systemName: "back")?
            .withAlignmentRectInsets(UIEdgeInsets(top: 0.0, left: -8.0, bottom: -4.0, right: 0.0))
        
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = UIColor.white
        appearance.shadowColor = UIColor.clear
        appearance.backgroundEffect = UIBlurEffect(style: .light)
        appearance.backButtonAppearance = backButtonAppearance
        appearance.setBackIndicatorImage(backButtonImage, transitionMaskImage: backButtonImage)
        
        navigationBar.standardAppearance = appearance
        navigationBar.scrollEdgeAppearance = appearance
        
        navigationBar.tintColor = OOColor.gray700
        navigationBar.titleTextAttributes = [
            NSAttributedString.Key.foregroundColor: OOColor.gray900 ?? UIColor.gray,
            NSAttributedString.Key.font: OOFont.body1()
        ]
        navigationItem.backButtonDisplayMode = .minimal
    }
}
