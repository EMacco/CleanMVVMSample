//
//  ArticlesListViewModel.swift
//  CleanMVVMSample
//
//  Created by Emmanuel Okwara on 17/10/2019.
//  Copyright © 2019 Emmanuel Okwara. All rights reserved.
//
import Foundation


class ArticlesListViewModel {
    
    var items: [Article]?
    
    let articleRepo: ArticleRepository
    
    init() {
        self.articleRepo = DefaultArticleRepository()
    }
    
    public func fetchArticles(completion: @escaping(() -> Void)) {
        articleRepo.fetchArticles { (articles) in
            self.items = articles
            completion()
        }
    }
}
