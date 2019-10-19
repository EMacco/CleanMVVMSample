//
//  ArticlesRepository.swift
//  CleanMVVMSample
//
//  Created by Emmanuel Okwara on 18/10/2019.
//  Copyright © 2019 Emmanuel Okwara. All rights reserved.
//

import Foundation

protocol ArticleRepository {
    func fetchArticles(completion: @escaping((_ articles: [Article]) -> Void))
    func fetchSingleArticle(completion: @escaping((_ article: Article) -> Void))
}

class DefaultArticleRepository: ArticleRepository {
    let articleService: ArticleService
    let lastFetchTime = Date().timeIntervalSinceNow
    
    init() {
        self.articleService = DefaultArticleService()
    }
    
    func fetchArticles(completion: @escaping (([Article]) -> Void)) {
//        if now() - lastFetchTime > 30{
//            //fetch from remote
//            //update local
//        } else {
//            //fetch from loccal
//            //fetch from remote
//        }
        self.articleService.fetchArticles { (articles) in
            completion(articles)
        }
    }
    
    func fetchSingleArticle(completion: @escaping ((Article) -> Void)) {
        
    }
}
