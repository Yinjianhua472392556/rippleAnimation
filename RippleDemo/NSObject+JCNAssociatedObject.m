//
//  NSObject+JCNAssociatedObject.m
//  HearkenApp
//
//  Created by admin on 2023/12/19.
//

#import "NSObject+JCNAssociatedObject.h"
#import  <objc/runtime.h>

@implementation NSObject (JCNAssociatedObject)

/**
 *  @brief  附加一个stong对象
 *
 *  @param value 被附加的对象
 *  @param key   被附加对象的key
 */
- (void)jcn_associateValue:(id)value withKey:(void *)key
{
    objc_setAssociatedObject(self, key, value, OBJC_ASSOCIATION_RETAIN);
}
/**
 *  @brief  附加一个weak对象
 *
 *  @param value 被附加的对象
 *  @param key   被附加对象的key
 */
- (void)jcn_weaklyAssociateValue:(id)value withKey:(void *)key
{
    objc_setAssociatedObject(self, key, value, OBJC_ASSOCIATION_ASSIGN);
}
/**
 *  @brief  根据附加对象的key取出附加对象
 *
 *  @param key 附加对象的key
 *
 *  @return 附加对象
 */
- (id)jcn_associatedValueForKey:(void *)key
{
    return objc_getAssociatedObject(self, key);
}

@end
