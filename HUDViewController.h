//
//  HUDViewController.h
//  LionsAndTigers
//
//  Created by Gabriel Borri de Azevedo on 1/15/15.
//  Copyright (c) 2015 Gabriel Enterprises. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol HUDDelegate <NSObject>


@end

@interface HUDViewController : UIViewController

- (IBAction)lionsButtonTapped:(UIButton *)sender;

- (IBAction)tigersButtonTapped:(UIButton *)sender;

@property (nonatomic, weak) id <HUDDelegate> delegate;

@end
