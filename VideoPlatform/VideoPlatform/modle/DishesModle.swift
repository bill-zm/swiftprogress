//
//  DishesModle.swift
//  VideoPlatform
//
//  Created by aa on 2017/6/12.
//  Copyright © 2017年 aa. All rights reserved.
//

import UIKit
import HandyJSON
class DishesModle: HandyJSON {
    var status:[String:Int]?
    var entity:[ListDetail]?
    required init(){}
    class ListDetail: HandyJSON {
        var name:String?
        required init(){}
    }
}
