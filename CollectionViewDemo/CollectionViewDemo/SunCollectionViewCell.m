//
//  SunCollectionViewCell.m
//  CollectionViewDemo
//
//  Created by sunbohong on 16/10/20.
//  Copyright © 2016年 sunbohong. All rights reserved.
//

#import "SunCollectionViewCell.h"

#import <Masonry.h>

NSString *const SunCollectionViewCellIdentifier = @"SunCollectionViewCellIdentifier";

@implementation SunCollectionViewCell {
    UILabel *_textLabel;
}

- (UILabel *)textLabel {
    if(!_textLabel) {
        _textLabel = [UILabel new];
        [self.contentView addSubview:_textLabel];
    }
    return _textLabel;
}

- (UICollectionViewLayoutAttributes *)preferredLayoutAttributesFittingAttributes:(UICollectionViewLayoutAttributes *)layoutAttributes {
    UICollectionViewLayoutAttributes *attributes = [super preferredLayoutAttributesFittingAttributes:layoutAttributes];
    return attributes;
}

- (void)setSelected:(BOOL)selected {
    [super setSelected:selected];
    _textLabel.numberOfLines = (0 == _textLabel.numberOfLines) ? 1 : 0;
}

//-(void)didMoveToSuperview{
//
//    [self mas_updateConstraints:^(MASConstraintMaker *make) {
//        make.width.mas_equalTo(self.superview);
//    }];
//
//}
@end
