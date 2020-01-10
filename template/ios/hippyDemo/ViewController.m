/*!
* iOS SDK
*
* Tencent is pleased to support the open source community by making
* Hippy available.
*
* Copyright (C) 2019 THL A29 Limited, a Tencent company.
* All rights reserved.
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*   http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/

#import "ViewController.h"
#import "HippyRootView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    BOOL isSimulator = NO;
    #if TARGET_IPHONE_SIMULATOR
        isSimulator = YES;
    #endif
    // 通过common包地址创建bridge
    HippyBridge *bridge = [[HippyBridge alloc] initWithBundleURL: [NSURL
                                               URLWithString:@"http://127.0.0.1:38989/index.bundle"]
                                              moduleProvider: nil
                                               launchOptions: nil];
    HippyRootView * rootView = [[HippyRootView alloc] initWithBridge:bridge moduleName:@"demo" initialProperties:nil shareOptions:@{} delegate:nil];
    rootView.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
    rootView.frame = self.view.bounds;
    [self.view addSubview:rootView];
}


@end
