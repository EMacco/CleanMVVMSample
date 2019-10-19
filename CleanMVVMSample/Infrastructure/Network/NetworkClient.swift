//
//  NetworkClient.swift
//  CleanMVVMSample
//
//  Created by Emmanuel Okwara on 18/10/2019.
//  Copyright © 2019 Emmanuel Okwara. All rights reserved.
//

import Foundation
import Alamofire

typealias WebServiceResponse = (Data?, Error?) -> Void

protocol NetworkClient {
    func execute(url: String, completion: @escaping WebServiceResponse)
}

class DefaultNetworkClient: NetworkClient {
    func execute(url: String, completion: @escaping WebServiceResponse) {
        AF.request(URL(string: url)!).validate().responseJSON { (response) in
            if let error = response.error {
                // You can do more error handling logic to determine the error message to be returned to the viewcontroller that made the request
                completion(nil, error)
            } else {
                completion(response.data, nil)
            }
        }
    }
}
