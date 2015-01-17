//
//  TopViewController.h
//  LionsAndTigers
//
//  Created by Gabriel Borri de Azevedo on 1/15/15.
//  Copyright (c) 2015 Gabriel Enterprises. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol TopDelegate <NSObject>

-(void)onTopRevealButtonTapped;

@end

@interface TopViewController : UIViewController

@property (nonatomic, weak) id <TopDelegate> delegate;

@end

