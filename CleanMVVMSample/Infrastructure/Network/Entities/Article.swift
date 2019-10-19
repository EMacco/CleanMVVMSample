//
//  Article.swift
//  CleanMVVMSample
//
//  Created by Emmanuel Okwara on 18/10/2019.
//  Copyright © 2019 Emmanuel Okwara. All rights reserved.
//

import Foundation

struct Article: Decodable {
    let id: Int
    let title: String
    let body: String
}
