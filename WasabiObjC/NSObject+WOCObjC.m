//
//  NSObject+GGObjRuntime.m
//  NavigatorVenue
//
//  Created by Roth Michaels on 5/8/14.
//  Copyright (c) 2015 Roth Michaels.
//
//  Licensed under the Apache License, Version 2.0 (the "License"); you may
//  not use this file except in compliance with the License.  You may obtain
//  a copy of the License at
//
//  http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//

#import "NSObject+WOCObjC.h"
#import <objc/runtime.h>

BOOL woc_class_swizzleMethodAndStore(Class class, SEL original, IMP replacement, IMP *store)
{
    IMP imp = NULL;
    Method method = class_getInstanceMethod(class, original);
    if (method) {
        const char *type = method_getTypeEncoding(method);
        imp = class_replaceMethod(class, original, replacement, type);
        if (!imp) {
            imp = method_getImplementation(method);
        }
    }
    if (imp && store) { *store = imp; }
    return (imp != NULL);
}

@implementation NSObject (WOCObjC)

+ (BOOL)swizzle:(SEL)original with:(IMP)replacement store:(IMP *)store {
    return woc_class_swizzleMethodAndStore(self, original, replacement, store);
}

@end
