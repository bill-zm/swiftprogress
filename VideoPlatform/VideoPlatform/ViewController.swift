//
//  ViewController.swift
//  VideoPlatform
//
//  Created by aa on 2017/6/8.
//  Copyright © 2017年 aa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var btn:UIButton?
    
    override func viewDidLoad() {
        super.viewDidLoad()
            // Do any additional setup after loading the view, typically from a nib.
        btn?.setTitle("UCON", for: .normal)
        NetWorkManager.sharedInstance.getDishList(params: [:], success: { (mod:DishesModle) in
            for detail in mod.entity!{
                print(detail.name)
            }
        }) { (ero:Any) in
            
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnClick(btn:UIButton){
        let fis = FirstPageViewController();
//        UIApplication.shared.open(URL(string: "wx0280321857de4311://params?param1=111&param2=222")!, options: ["1":"1234234324324","2":"2"],
//                                  completionHandler: {
//                                    (success) in
////                                    print("Open"+success)
//        })'
        NetWorkManager.sharedInstance.getDishList(params: [:], success: { (mod:DishesModle) in
            for detail in mod.entity!{
                print(detail.name)
            }
        }) { (ero:Any) in
            
        }

//        self.present(fis, animated: true) {
//            
//        }
    }
}
