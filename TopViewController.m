//
//  TopViewController.m
//  LionsAndTigers
//
//  Created by Gabriel Borri de Azevedo on 1/15/15.
//  Copyright (c) 2015 Gabriel Enterprises. All rights reserved.
//

#import "TopViewController.h"

@interface TopViewController () <UICollectionViewDataSource, UICollectionViewDelegate>

@end

@implementation TopViewController

-(void)viewDidLoad {
    [super viewDidLoad];
}

-(IBAction)topRevealButtonTapped:(UIBarButtonItem *)sender
{
    [self.delegate onTopRevealButtonTapped];
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 3;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
    return cell;
}

@end
