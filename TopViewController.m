//
//  TopViewController.m
//  LionsAndTigers
//
//  Created by Gabriel Borri de Azevedo on 1/15/15.
//  Copyright (c) 2015 Gabriel Enterprises. All rights reserved.
//

#import "TopViewController.h"
#import "CustomCollectionViewCell.h"
#import "HUDViewController.h"

@interface TopViewController () <UICollectionViewDataSource, UICollectionViewDelegate, HUDDelegate>

@property UIImage *lion_1;
@property UIImage *lion_2;
@property UIImage *lion_3;

@property UIImage *tiger_1;
@property UIImage *tiger_2;
@property UIImage *tiger_3;

@property NSMutableArray *photosArray;
@property NSArray *lionsArray;
@property NSArray *tigersArray;

@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;

@end

@implementation TopViewController

-(void)viewDidLoad
{
    [super viewDidLoad];

    self.lion_1 = [UIImage imageNamed:@"lion_1.png"];
    self.lion_2 = [UIImage imageNamed:@"lion_2.png"];
    self.lion_3 = [UIImage imageNamed:@"lion_3.png"];
    self.lionsArray = [[NSArray alloc] initWithObjects:self.lion_1, self.lion_2, self.lion_3, nil];


    self.tiger_1 = [UIImage imageNamed:@"tiger_3.png"];
    self.tiger_2 = [UIImage imageNamed:@"tiger_2.png"];
    self.tiger_3 = [UIImage imageNamed:@"tiger_1.png"];
    self.tigersArray = [[NSArray alloc] initWithObjects:self.tiger_1, self.tiger_2, self.tiger_3, nil];

    self.photosArray = [NSMutableArray new];
}

-(IBAction)topRevealButtonTapped:(UIBarButtonItem *)sender
{
    [self.delegate onTopRevealButtonTapped];
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return self.photosArray.count;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    CustomCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
    cell.imageView.image = [self.photosArray objectAtIndex:indexPath.row];
    return cell;
}

-(void)displayLionsImages
{
    self.photosArray = (NSMutableArray *)self.lionsArray;
    [self.collectionView reloadData];
    [self.delegate onTopRevealButtonTapped];
}

-(void)displayTigersImages
{
    self.photosArray = (NSMutableArray *)self.tigersArray;
    [self.collectionView reloadData];
    [self.delegate onTopRevealButtonTapped];

}

@end
