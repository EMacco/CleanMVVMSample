//
//  HomeViewController.swift
//  CleanMVVMSample
//
//  Created by Emmanuel Okwara on 17/10/2019.
//  Copyright © 2019 Emmanuel Okwara. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    let viewModel = ArticlesListViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        print("Root URL = \(Environment.rootURL)")
        
        viewModel.fetchArticles {
            self.tableView.reloadData()
        }
    }

}
