//
//  BlockView.h
//  BlockTest
//
//  Created by Min on 11/24/13.
//  Copyright (c) 2013 Min. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BlockView : NSObject

@end

@interface BKAlertView : UIAlertView <UIAlertViewDelegate>

@property (nonatomic, copy) void(^callback)(NSInteger);

- (void)showWithCompletion:(void (^)(NSInteger buttonIndex))completionHandle;

@end

@interface BKActionSheet : UIActionSheet <UIActionSheetDelegate>

@property (nonatomic, copy) void(^callback)(NSInteger);

- (void)showWithCompletion:(void (^)(NSInteger buttonIndex))completionHandle inView:(UIView *)view;

@end

