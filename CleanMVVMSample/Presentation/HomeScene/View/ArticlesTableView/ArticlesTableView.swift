//
//  ArticlesTableView.swift
//  CleanMVVMSample
//
//  Created by Emmanuel Okwara on 17/10/2019.
//  Copyright © 2019 Emmanuel Okwara. All rights reserved.
//

import UIKit

extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.items?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: ArticleTitleTableViewCell.reuseIdentifier, for: indexPath) as? ArticleTitleTableViewCell else {
            fatalError("Cannot dequeue reusable cell \(ArticleTitleTableViewCell.self) with reuseIdentifier: \(ArticleTitleTableViewCell.reuseIdentifier)")
        }
        
        cell.articleTitleLbl.text = viewModel.items?[indexPath.row].title

        return cell
    }
}
