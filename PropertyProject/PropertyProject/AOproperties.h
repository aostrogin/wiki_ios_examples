//
//  AOproperties.h
//  PageBaseProgect
//
//  Created by Alexa on 12.03.14.
//  Copyright (c) 2014 Alexa. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AOproperties : NSObject
@property (strong, nonatomic) NSString* dimension; // this is public property
@property (weak,atomic, getter = customGetter, setter = customSetter:) NSObject* propertyA;

// required: use week for delegate or ab-outlets (this is graphics and images)
// required: use assign for primitiv values
// use strong - for other cases
@end
