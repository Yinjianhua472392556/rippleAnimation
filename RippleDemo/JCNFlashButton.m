//
//  JCNFlashButton.m
//  HearkenApp
//
//  Created by admin on 2023/12/20.
//

#import "JCNFlashButton.h"

@interface JCNFlashButton ()

@end

@implementation JCNFlashButton

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self commonInit];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self commonInit];
    }
    return self;
}

- (void)commonInit
{
    
    _duration = 2;
    _flashColor = [UIColor colorWithWhite:0.0f alpha:0.20f];
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(didTap:)];
    [self addGestureRecognizer:tap];
    
    self.textLabel = [[UILabel alloc] initWithFrame:self.bounds];
    self.textLabel.backgroundColor = [UIColor clearColor];
    [self.textLabel setTextColor:[UIColor whiteColor]];
    [self.textLabel setTextAlignment:NSTextAlignmentCenter];
    [self addSubview:self.textLabel];
    
    self.clipsToBounds = YES;

}

#pragma mark - Public
- (void)setText:(NSString *)text
{
    [self setText:text withTextColor:nil];
}

- (void)setTextColor:(UIColor *)textColor
{
    [self setText:nil withTextColor:textColor];
}

- (void)setText:(NSString *)text withTextColor:(UIColor *)textColor
{
    if (textColor) {
        [self.textLabel setTextColor:textColor];
    }
    
    if (text) {
        [self.textLabel setText:text];
    }
}

#pragma mark - Private
- (void)didTap:(UITapGestureRecognizer *)tapGestureHandler
{
    CGPoint tapLocation = [tapGestureHandler locationInView:self];
    
    CGFloat width = self.bounds.size.width, height = self.bounds.size.height;
    
    float radius = MAX(width, height);
    float duration = self.duration;
    float fadeAfter = duration * 0.75f;

    
    [self rippleStartingAt:tapLocation withColor:self.flashColor duration:duration radius:radius fadeAfter:fadeAfter clickCallbck:self.clickBlock];

}

@end
