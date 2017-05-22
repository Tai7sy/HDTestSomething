//
//  HDTestCollectionViewCell.m
//  HDTestSomething
//
//  Created by yscompany on 2017/5/22.
//  Copyright © 2017年 yscompany. All rights reserved.
//

#import "HDTestCollectionViewCell.h"

@interface HDTestCollectionViewCell ()
@property (nonatomic, strong)UIImageView *imageView;
@property (nonatomic, strong)UILabel *stateLabel;
@end

@implementation HDTestCollectionViewCell

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        [self.contentView addSubview:self.imageView];
        self.imageView.frame = self.contentView.frame;
        
        [self.contentView addSubview:self.stateLabel];
        self.stateLabel.frame = CGRectMake(frame.size.width - 20, 5, 20, 20);
        
        UILongPressGestureRecognizer *longPress = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(longPress:)];
        [self addGestureRecognizer:longPress];
    }
    return self;
}
- (void)setImageName:(NSString *)imageName {
    self.imageView.image = [UIImage imageNamed:imageName];
}
- (void)setLabelState:(HDTestCollectionCellState)state {
    switch (state) {
        case HDTestCollectionCellStateDefault:
        {
            self.stateLabel.text = @".";
        }
            break;
        case HDTestCollectionCellStateAdd:
        {
            self.stateLabel.text = @"+";
        }
            break;
        case HDTestCollectionCellStateAdded:
            
        case HDTestCollectionCellStateSubtract:
       
        case HDTestCollectionCellStateWaitingAdd:
        {
            self.stateLabel.text = @"-";
        }
            break;
            
        default:
            break;
    }
}
#pragma mark - button action method
- (void)longPress:(UILongPressGestureRecognizer *)longPress{
    if (self.didClick) {
        self.didClick(longPress);
    }
}
#pragma mark - getter method
- (UIImageView *)imageView {
    if (!_imageView) {
        _imageView = [UIImageView new];
        _imageView.clipsToBounds = YES;
        _imageView.backgroundColor = kColorWithRGB(arc4random()%100, arc4random()%100, 0);
    }
    return _imageView;
}
- (UILabel *)stateLabel {
    if (!_stateLabel) {
        _stateLabel = [UILabel new];
        _stateLabel.textAlignment = NSTextAlignmentCenter;
        _stateLabel.textColor = [UIColor blackColor];
        _stateLabel.font = [UIFont systemFontOfSize:12.0f];
    }
    return _stateLabel;
}
@end
