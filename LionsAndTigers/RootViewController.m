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

@interface RootViewController () <TopDelegate, HUDDelegate>

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
    self.hudVC.delegate = self;
}

-(void)onTopRevealButtonTapped
{
    if (self.rightTopConstraint.constant == -16)
    {
        self.rightTopConstraint.constant = -80;
        self.leftTopConstraint.constant = 64;
    }
    else
    {
        self.rightTopConstraint.constant = -16;
        self.leftTopConstraint.constant = -16;
    }
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    UIViewController *anotherVC = [segue destinationViewController];
    if ([segue.identifier isEqualToString:@"TopSegue"])
    {
        UINavigationController *navVC = (UINavigationController *)anotherVC;
        TopViewController *top = [navVC.viewControllers objectAtIndex:0];
        top.delegate = self;
    }
    else
    {
        HUDViewController *hudVC = (HUDViewController *)anotherVC;
        hudVC.delegate = self;
    }
}




@end
