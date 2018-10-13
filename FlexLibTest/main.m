//
//  main.m
//  FlexLibTest
//
//  Created by TuBo on 2018/10/9.
//  Copyright © 2018年 TuBur. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "UncaughtExceptionHandler.h"
int main(int argc, char * argv[]) {
    @autoreleasepool {
        NSSetUncaughtExceptionHandler(&InstallUncaughtExceptionHandler);
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
