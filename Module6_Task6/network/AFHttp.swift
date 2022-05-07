//
//  AFHttp.swift
//  Module6_Task6
//
//  Created by macbro on 08/05/22.
//

import Foundation
import Alamofire


private let IS_TESTER = true
private let DEP_SER = "https://dummy.restapiexample.com/"
private let DEV_SER = "https://dummy.restapiexample.com/"
  
  let headers:HTTPHeaders = [
      "Content-Type":"application/json"
  ]

class AFHttp {

    
    class func get(url:String,params:Parameters,handler:@escaping (AFDataResponse<Any>) -> Void) {
        AF.request(server(url: url),method: .get,parameters: params,headers: headers)
            .validate()
            .responseJSON(completionHandler: handler)
    }
    
    class func post(url:String,params:Parameters,handler:@escaping (AFDataResponse<Any>) -> Void) {
        AF.request(server(url: url),method: .post,parameters: params,headers: headers)
            .validate()
            .responseJSON(completionHandler: handler)
    }
    
    class func delete(url:String,params:Parameters,handler:@escaping (AFDataResponse<Any>) -> Void) {
        AF.request(server(url: url),method: .delete,parameters: params,headers: headers)
            .validate()
            .responseJSON(completionHandler: handler)
    }
    
    class func put(url:String,params:Parameters,handler:@escaping (AFDataResponse<Any>) -> Void) {
        AF.request(server(url: url),method: .put,parameters: params,headers: headers)
            .validate()
            .responseJSON(completionHandler: handler)
    }
    
    
    // MARK: - AFHttp Methods
    
    class func server(url:String) -> URL {
        if IS_TESTER {
            return URL(string: DEP_SER + url)!
        }
        return URL(string: DEV_SER + url)!
    }
    
    
    // MARK: - AFHttp Api
    
    static let EMPLOYE_GETALL = "api/v1/employees"
    static let SINGLE_GET_EMPLOYE = "api/v1/employee/" // single id
    static let EMPLOYE_CREATE = "api/v1/create"
    static let EMPLOYE_UPDATE = "api/v1/update/" // update id
    static let EMPLOYE_DELETE = "api/v1/delete/" // delete id
    
    // MARK: - AFHttp params
    class func paramsEmpty() -> Parameters {
        let params:Parameters = [:]
        return params
    }
    
    
    // MARK: - Create EMPLOYE
    class func paramsEmployeCreate(employe:Employe) -> Parameters{
        let params:Parameters = [
            "name":employe.name,
            "salary":employe.salary,
            "age":employe.age
        ]
        
        return params
    }
    
    // MARK: - AFHttp update EMPLOYE
    class func paramsUpdateEmploye(employe:Employe) -> Parameters{
        let params:Parameters = [
            "name":employe.name,
            "salary":employe.salary,
            "age":employe.age
        ]
        
        return params
    }
}
