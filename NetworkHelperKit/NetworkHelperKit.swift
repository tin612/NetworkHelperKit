//
//  NetworkHelperKit.swift
//  NetworkHelperKit
//
//  Created by Phan Thanh Tin on 9/12/16.
//  Copyright © 2016 Phan Thanh Tin. All rights reserved.
//

import Foundation
import Alamofire
import Gloss
public class NetworkHelperKit: NSObject {
    
    public let sharedInstance = NetworkHelperKit()
    
    public override init() {
        super.init()
    }
    
    public func getDataFromNetwork(urlString: String,parameter: [String: AnyObject]! = nil ,successBlock :(BaseModel?) -> () , failureBlock:(Int?, BaseErrorModel?)-> ()) {
        Alamofire.request(.GET, urlString, parameters: parameter ?? [:]).responseJSON { response in
            switch response.result {
            case .Success :
                if let object = BaseModel.init(json: response.result.value as! JSON) {
                    successBlock(object)
                }
            case .Failure:
                if let object = BaseErrorModel.init(json: response.result.value as! JSON) {
                    failureBlock(response.response?.statusCode, object)
                }
            }
        }
    }
    
    public func postDataToNetwork(urlString: String,parameter: [String: AnyObject]! = nil, header: [String: String]! = nil ,successBlock :(BaseModel?) -> () , failureBlock:(Int?, BaseErrorModel?)-> ()) {
        Alamofire.request(.POST, urlString, parameters: parameter ?? [:], encoding: .JSON, headers: header ?? [:]).responseJSON { response in
            switch response.result {
                case .Success :
                    if let object = BaseModel.init(json: response.result.value as! JSON) {
                        successBlock(object)
                }
                case .Failure:
                    if let object = BaseErrorModel.init(json: response.result.value as! JSON) {
                        failureBlock(response.response?.statusCode, object)
                }
            }
        }
    }
    
    public func putDataToNetwork(urlString: String,parameter: [String: AnyObject]! = nil, header: [String: String]! = nil ,successBlock :(BaseModel?) -> () , failureBlock:(Int?, BaseErrorModel?)-> ()) {
        Alamofire.request(.PUT, urlString, parameters: parameter ?? [:], encoding: .JSON, headers: header ?? [:]).responseJSON { response in
            switch response.result {
            case .Success :
                if let object = BaseModel.init(json: response.result.value as! JSON) {
                    successBlock(object)
                }
            case .Failure:
                if let object = BaseErrorModel.init(json: response.result.value as! JSON) {
                    failureBlock(response.response?.statusCode, object)
                }
            }
        }
    }
    
    public func deleteDataRequest(urlString: String,parameter: [String: AnyObject]! = nil, header: [String: String]! = nil ,successBlock :(BaseModel?) -> () , failureBlock:(Int?, BaseErrorModel?)-> ()) {
        Alamofire.request(.DELETE, urlString, parameters: parameter ?? [:], encoding: .JSON, headers: header ?? [:]).responseJSON { response in
            switch response.result {
            case .Success :
                if let object = BaseModel.init(json: response.result.value as! JSON) {
                    successBlock(object)
                }
            case .Failure:
                if let object = BaseErrorModel.init(json: response.result.value as! JSON) {
                    failureBlock(response.response?.statusCode, object)
                }
            }
        }
    }
    
}