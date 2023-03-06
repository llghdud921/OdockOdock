//
//  BaseViewModel.swift
//  OdockOdock
//
//  Created by 이호영 on 2023/03/06.
//

import Foundation
import RxSwift

protocol ViewModelType {
    associatedtype Input
    associatedtype Output
    
    func bind()
}

open class BaseViewModel: ViewModelType {
    
    public let disposeBag = DisposeBag()
    
    struct Input { }
    struct Output { }

    public init() {
      self.bind()
    }
    
    func bind() { }
}
