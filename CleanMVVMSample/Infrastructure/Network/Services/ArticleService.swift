//
//  ArticleService.swift
//  CleanMVVMSample
//
//  Created by Emmanuel Okwara on 18/10/2019.
//  Copyright © 2019 Emmanuel Okwara. All rights reserved.
//

import Foundation

protocol ArticleService {
    func fetchArticles(completion: @escaping((_ articles: [Article]) -> Void))
//    func fetchSingleArticle(completion: @escaping((_ articles: Article) -> Void))
}

class DefaultArticleService: ArticleService {
    
    let networkClient: DefaultNetworkClient
    
    init() {
        self.networkClient = DefaultNetworkClient()
    }
    
    func fetchArticles(completion: @escaping((_ articles: [Article]) -> Void)) {
        networkClient.execute(url: "http://jsonplaceholder.typicode.com/posts") { (data, error) in
            guard let data = data else { return }
            do {
                let posts = try JSONDecoder().decode([Article].self, from: data)
                completion(posts)
            } catch { }
        }
        
        // See if you can use observers instead
        
        
        // Instead of initializing the classes try to use injections
    }
    

}
