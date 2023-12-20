//
//  UIView+JCNSimpleRipple.h
//  HearkenApp
//
//  Created by admin on 2023/12/20.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef void(^JCNFlashButtonDidClickBlock)(void);

@interface UIView (JCNSimpleRipple)

/// clickCallback
@property (nonatomic, strong) JCNFlashButtonDidClickBlock clickCallback;


///  开始波纹动画
/// - Parameters:
///   - origin: starting point for our animation
///   - color: The color we want our ripple to have.
///   - duration: how long we want our animation to last.
///   - radius: How big we want our ripple to be.
///   - fadeAfter: When the ripple should start fading.
///   - callback: 动画结束后的回调
- (void)rippleStartingAt:(CGPoint)origin
               withColor:(UIColor *)color
                duration:(NSTimeInterval)duration
                  radius:(CGFloat)radius
               fadeAfter:(NSTimeInterval)fadeAfter
            clickCallbck:(JCNFlashButtonDidClickBlock)callback;

@end

NS_ASSUME_NONNULL_END
