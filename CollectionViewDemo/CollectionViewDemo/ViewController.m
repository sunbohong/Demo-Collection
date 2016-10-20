//
//  ViewController.m
//  CollectionViewDemo
//
//  Created by sunbohong on 16/10/20.
//  Copyright © 2016年 sunbohong. All rights reserved.
//

#import "ViewController.h"

#import <Masonry.h>
#import "SunCollectionViewCell.h"

@interface ViewController ()<UICollectionViewDataSource, UICollectionViewDelegate>

@end

@implementation ViewController
{
    UICollectionView *_collectionView;
    UICollectionViewFlowLayout *_flowLayout;
    NSArray *_data;
}

- (void)viewDidLoad {
    [super viewDidLoad];

    _data = @[
        @"sunbohong",
        @"酷酷的哀殿",
        @"Maecenas faucibus mollis interdum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.",
        @"Praesent commodo cursus magna, vel scelerisque nisl consectetur et.",
        @"Nullam quis risus eget urna mollis ornare vel eu leo. Praesent commodo cursus magna, vel scelerisque nisl consectetur et.",
        @"Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.",
    ];

    _flowLayout = [UICollectionViewFlowLayout new];
    _flowLayout.estimatedItemSize = CGSizeMake(30, 30);

    _collectionView = [[UICollectionView alloc] initWithFrame:CGRectZero collectionViewLayout:_flowLayout];
    _collectionView.backgroundColor = [UIColor lightGrayColor];

    _collectionView.dataSource = self;
    _collectionView.delegate   = self;

    [_collectionView registerClass:[SunCollectionViewCell class] forCellWithReuseIdentifier:SunCollectionViewCellIdentifier];

    [self.view addSubview:_collectionView];
}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    _collectionView.frame = CGRectInset(self.view.bounds, 20, 20);
}

#pragma mark - UICollectionViewDataSource

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return _data.count;
}

const NSUInteger kLabelTag = 100;

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    SunCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:SunCollectionViewCellIdentifier forIndexPath:indexPath];
    if(nil == cell.mas_key) {
        cell.mas_key = @"cell";

        cell.textLabel.textColor = [UIColor whiteColor];
        cell.textLabel.backgroundColor = [UIColor darkGrayColor];

        [cell.contentView mas_makeConstraints:^(MASConstraintMaker *make) {
             make.width.mas_lessThanOrEqualTo(collectionView.bounds.size.width);
         }];

        [cell.textLabel mas_makeConstraints:^(MASConstraintMaker *make) {
             make.edges.mas_equalTo(UIEdgeInsetsMake(5, 5, 5, 5));
         }];
    }
    cell.textLabel.text = _data[indexPath.row];
    return cell;
}

#pragma mark - UICollectionViewDelegate
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    [_flowLayout invalidateLayout];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
