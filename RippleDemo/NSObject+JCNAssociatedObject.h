//
//  NSObject+JCNAssociatedObject.h
//  HearkenApp
//
//  Created by admin on 2023/12/19.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSObject (JCNAssociatedObject)

/**
 *  @brief  附加一个stong对象
 *
 *  @param value 被附加的对象
 *  @param key   被附加对象的key
 */
- (void)jcn_associateValue:(id)value withKey:(void *)key; // Strong reference
/**
 *  @brief  附加一个weak对象
 *
 *  @param value 被附加的对象
 *  @param key   被附加对象的key
 */
- (void)jcn_weaklyAssociateValue:(id)value withKey:(void *)key;

/**
 *  @brief  根据附加对象的key取出附加对象
 *
 *  @param key 附加对象的key
 *
 *  @return 附加对象
 */
- (id)jcn_associatedValueForKey:(void *)key;


@end

NS_ASSUME_NONNULL_END
