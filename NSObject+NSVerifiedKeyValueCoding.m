//
//  NSObject+Verified.m
//  Connect
//
//  Created by Alejandro Rupérez on 11/07/14.
//  Copyright (c) 2014 Jesús. All rights reserved.
//

#import "NSObject+Verified.h"

@implementation NSObject (NSVerifiedKeyValueCoding)

- (id)verifiedValueForKeyPath:(NSString *)keyPath
{
    if ([self valueForKeyPath:aKey] && ![[self valueForKeyPath:aKey] isKindOfClass:[NSNull class]])
    {
        return [self valueForKeyPath:aKey];
    }
    return nil;
}

- (NSMutableArray *)verifiedMutableArrayValueForKeyPath:(NSString *)keyPath
{
    if ([self mutableArrayValueForKeyPath:aKey] && ![[self mutableArrayValueForKeyPath:aKey] isKindOfClass:[NSNull class]])
    {
        return [self mutableArrayValueForKeyPath:aKey];
    }
    return nil;
}

- (NSMutableOrderedSet *)verifiedMutableOrderedSetValueForKeyPath:(NSString *)keyPath
{
    if ([self mutableOrderedSetValueForKeyPath:aKey] && ![[self mutableOrderedSetValueForKeyPath:aKey] isKindOfClass:[NSNull class]])
    {
        return [self mutableOrderedSetValueForKeyPath:aKey];
    }
    return nil;
}

- (NSMutableSet *)verifiedMutableSetValueForKeyPath:(NSString *)keyPath
{
    if ([self mutableSetValueForKeyPath:aKey] && ![[self mutableSetValueForKeyPath:aKey] isKindOfClass:[NSNull class]])
    {
        return [self mutableSetValueForKeyPath:aKey];
    }
    return nil;
}

@end
