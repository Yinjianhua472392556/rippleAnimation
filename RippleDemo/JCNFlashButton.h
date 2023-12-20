//
//  JCNFlashButton.h
//  HearkenApp
//
//  Created by admin on 2023/12/20.
//

#import <UIKit/UIKit.h>
#import "UIView+JCNSimpleRipple.h"

@interface JCNFlashButton : UIView

@property (nonatomic, strong) UILabel *textLabel;

/// 波纹动画结束后的回调
@property (nonatomic, copy) JCNFlashButtonDidClickBlock clickBlock;

/// The color we want our ripple to have. 默认值为[UIColor colorWithWhite:0.0f alpha:0.20f]
@property (nonatomic, strong) UIColor *flashColor;

/// how long we want our animation to last.  默认值为2秒
@property (nonatomic, assign) NSTimeInterval duration;


/// 文案设置
/// - Parameter text: 文本
- (void)setText:(NSString *)text;
- (void)setTextColor:(UIColor *)textColor;
- (void)setText:(NSString *)text withTextColor:(UIColor *)textColor;

@end
