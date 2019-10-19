//
//  ArticleTitleTableViewCell.swift
//  CleanMVVMSample
//
//  Created by Emmanuel Okwara on 17/10/2019.
//  Copyright © 2019 Emmanuel Okwara. All rights reserved.
//

import UIKit

class ArticleTitleTableViewCell: UITableViewCell {
    static let reuseIdentifier = String(describing: ArticleTitleTableViewCell.self)
    
    @IBOutlet weak var articleTitleLbl: UILabel!
}
