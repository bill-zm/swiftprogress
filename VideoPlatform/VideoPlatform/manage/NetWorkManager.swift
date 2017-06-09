//
//  NetWorkManager.swift
//  VideoPlatform
//
//  Created by aa on 2017/6/9.
//  Copyright © 2017年 aa. All rights reserved.
//

import UIKit
import Alamofire
private  let shance = NetWorkManager();
class NetWorkManager: NSObject {
    class var sharedInstance: NetWorkManager {
        return shance;
    }
    func getRequest(urlStr:String,params:[String:Any],success:()->(),failture:()->()){
        Alamofire.request(urlStr, method: .get, parameters: params).responseJSON { (response) in
            
        }
    }
}
