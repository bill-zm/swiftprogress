//
//  NetWorkManager.swift
//  VideoPlatform
//
//  Created by aa on 2017/6/9.
//  Copyright © 2017年 aa. All rights reserved.
//

import UIKit
import Alamofire
import HandyJSON
private let shance = NetWorkManager()
private let netWorkHostUrl:String = "http://121.41.109.117:8080"
class NetWorkManager: NSObject {
    var sessionManager:SessionManager;
    override init() {
        let configuration = URLSessionConfiguration.default
        configuration.timeoutIntervalForRequest = 1
        sessionManager = Alamofire.SessionManager(configuration: configuration)
        print("init")
    }
    class var sharedInstance: NetWorkManager {
               return shance;
    }
    func getRequest(urlStr:String,params:[String:Any],responseHandle:@escaping (_ response:DataResponse<String>)->()){
        let tmpurl:String = netWorkHostUrl + urlStr
        sessionManager.request(tmpurl, method: .get, parameters: params).responseString { (response) in
            responseHandle(response)
        }
    }
    func postRequest(urlStr:String,params:[String:Any],responseHandle:@escaping (_ resopnse:DataResponse<String>)->()){
        let tmpurl:String = netWorkHostUrl + urlStr
        Alamofire.request(tmpurl, method: .post, parameters: params).responseString { (response) in
            responseHandle(response)
        }
    }
    func getDishList(params:[String:Any],success:@escaping (_ res:DishesModle)->(),failture:@escaping(_ res:Any)->()){
        let url = "/yuekong/home/home_list?from=0&count=5&homeType=0"
        getRequest(urlStr: url, params: params) { (response) in
            if(response.result.isSuccess){
                let composition:DishesModle = JSONDeserializer<DishesModle>.deserializeFrom(json: response.value)!
                success(composition)
            }
            else{
                failture(response)
            }
        }
    }

    
}
