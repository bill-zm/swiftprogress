//
//  FirstPageViewController.m
//  VideoPlatform
//
//  Created by aa on 2017/6/8.
//  Copyright © 2017年 aa. All rights reserved.
//

#import "FirstPageViewController.h"
#import "VideoPlatform-Swift.h"
@interface FirstPageViewController ()

@end

@implementation FirstPageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    [[NetWorkManager sharedInstance] ];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (IBAction)addBtnClick:(id)sender{
//    UIApplication.shared.open[(URL(string: "wx0280321857de4311://params?param1=111&param2=222")!, options: ["1":"1234234324324","2":"2"],
//                              completionHandler: {
//                                  (success) in
//                                  //                                    print("Open"+success)
//                              })
    BOOL isbol = [[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:@"wx0280321857de4311://"]];
    if(isbol){
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"wx0280321857de4311://params?param1=111&param2=222"] options:@{@"1":@"2222222"} completionHandler:nil];
    }
    else{
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://itunes.apple.com/us/app/ucon/id1044169706?l=zh&ls=1&mt=8"] options:@{} completionHandler:nil];
    }

}

@end
