//
//  UIStoryboardEmbedSegueTemplate.m
//  RRContainerView
//
//  Created by Rolandas Razma on 14/05/2013.
//  Copyright (c) 2013 UD7. All rights reserved.
//

#import "RRStoryboardEmbedSegue.h"
#import <objc/runtime.h>


@implementation RRStoryboardEmbedSegue {
    UIViewController    *_viewController;
    UIView              *_containerView;
    NSString            *_destinationViewControllerIdentifier;
    NSString            *_identifier;
}


#pragma mark -
#pragma mark NSObject


+ (void)load {
    
    // here I'm checking for NSLayoutConstraint because UIStoryboardEmbedSegueTemplate is private in iOS6
    // keep in mind that I'm NOT using any private classes here
    if( !NSClassFromString(@"NSLayoutConstraint") ){
        objc_registerClassPair(objc_allocateClassPair([RRStoryboardEmbedSegue class], "UIStoryboardEmbedSegueTemplate", 0));
    }

}


#pragma mark -
#pragma mark UIStoryboardSegue


- (NSString *)identifier {
    return _identifier;
}


- (void)perform {
    
    [_viewController prepareForSegue:self sender:_viewController];
    
    UIViewController *viewController = [_viewController.storyboard instantiateViewControllerWithIdentifier:_destinationViewControllerIdentifier];
    [_viewController addChildViewController:viewController];
    
    [viewController viewWillAppear:NO];
    [viewController.view setFrame:_containerView.bounds];
    [viewController.view setAutoresizingMask:UIViewAutoresizingFlexibleWidth|UIViewAutoresizingFlexibleHeight];
    [_containerView addSubview:viewController.view];
    [viewController viewDidAppear:NO];
    [viewController didMoveToParentViewController:_viewController];
    
}


#pragma mark -
#pragma mark RRStoryboardEmbedSegue


- (id)initWithCoder:(NSCoder *)aDecoder {
    if( (self = [super init]) ){
        _destinationViewControllerIdentifier= [aDecoder decodeObjectForKey:@"UIDestinationViewControllerIdentifier"];
        _identifier                         = [aDecoder decodeObjectForKey:@"UIIdentifier"];
    }
    return self;
}


- (void)setContainerView:(UIView *)containerView {
    _containerView = containerView;

    // so this works for first time - what to do on view load?
    [self perform];
}


@end
