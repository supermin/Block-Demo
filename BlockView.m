//
//  BlockView.m
//  BlockTest
//
//  Created by Min on 11/24/13.
//  Copyright (c) 2013 Min. All rights reserved.
//

#import "BlockView.h"

@implementation BlockView

@end

@implementation BKAlertView

- (void)showWithCompletion:(void (^)(NSInteger buttonIndex))completionHandle {
    if (!self.delegate) {
        self.delegate = self;
        self.callback = completionHandle;
    }
    
    [self show];
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
    self.callback(buttonIndex);
}

@end

@implementation BKActionSheet

- (void)showWithCompletion:(void (^)(NSInteger buttonIndex))completionHandle inView:(UIView *)view {
    if (!self.delegate) {
        self.delegate = self;
        self.callback = completionHandle;
    }
    
    [self showInView:view];
}

- (void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex {
    self.callback(buttonIndex);
}

@end