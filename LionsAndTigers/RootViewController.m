//
//  ViewController.m
//  LionsAndTigers
//
//  Created by Gabriel Borri de Azevedo on 1/15/15.
//  Copyright (c) 2015 Gabriel Enterprises. All rights reserved.
//

#import "RootViewController.h"
#import "TopViewController.h"
#import "HUDViewController.h"

@interface RootViewController () <TopDelegate>

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *leftTopConstraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *rightTopConstraint;


@property TopViewController *topVC;
@property HUDViewController *hudVC;

@end

@implementation RootViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.topVC.delegate = self;
    self.hudVC.delegate = self.topVC;
}

-(void)onTopRevealButtonTapped
{
    [UIView animateWithDuration:0.25
                          delay:0.0
                        options:0
                     animations:^{
                         if (self.rightTopConstraint.constant == -16)
                         {
                             [self showMenuTab];
                         }
                         else
                         {
                             [self hideMenuTab];
                         }
                         [self.view layoutIfNeeded];
    } completion:^(BOOL finished)
                {
                }];

}

-(void)hideMenuTab
{
    self.rightTopConstraint.constant = -16;
    self.leftTopConstraint.constant = -16;
}

-(void)showMenuTab
{
    self.rightTopConstraint.constant = -80;
    self.leftTopConstraint.constant = 64;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"TopSegue"])
    {
        UINavigationController *navVC = segue.destinationViewController; //transfor anotherVC in UINavVC
        self.topVC = [navVC.viewControllers objectAtIndex:0]; //
    }
    else if ([segue.identifier isEqualToString:@"HUDSegue"])
    {
        self.hudVC = segue.destinationViewController;
    }
}




@end
