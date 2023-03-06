//
//  BaseViewController.swift
//  OdockOdock
//
//  Created by 이호영 on 2023/03/06.
//

import UIKit
import RxSwift

open class BaseViewController: UIViewController {
    
    public let disposeBag = DisposeBag()
    
    open override func viewDidLoad() {
        super.viewDidLoad()
        
        addView()
        setupView()
        setLayout()
        
        bindViewModel()
    }
    
    open func addView() {
    }
    
    open func setupView() {}
    
    open func setLayout() {}
    
    open func bindViewModel() {}
}
