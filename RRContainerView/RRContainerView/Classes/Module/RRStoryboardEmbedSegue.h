//
//  RRStoryboardEmbedSegue.h
//  RRContainerView
//
//  Created by Rolandas Razma on 14/05/2013.
//  Copyright (c) 2013 UD7. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface RRStoryboardEmbedSegue : UIStoryboardSegue

@property (nonatomic) UIViewController *viewController;
@property (nonatomic) UIView *containerView;

@end
