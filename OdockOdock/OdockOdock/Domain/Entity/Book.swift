//
//  Book.swift
//  OdockOdock
//
//  Created by 이호영 on 2023/03/07.
//

import UIKit

struct Book: Hashable {
    let identifier = UUID()
    
    let text: String
    let image: UIImage
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(identifier)
    }
}
