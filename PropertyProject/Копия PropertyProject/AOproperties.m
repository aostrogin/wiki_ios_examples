//
//  AOproperties.m
//  PageBaseProgect
//
//  Created by Alexa on 12.03.14.
//  Copyright (c) 2014 Alexa. All rights reserved.
//

#import "AOproperties.h"

//This is Category "default". This is the way to create privat property
@interface AOproperties ()
    @property (assign, nonatomic) NSInteger privateCounter; // private property
@end


@implementation AOproperties

@synthesize dimension = _dimension;
-(void)setDimension:(NSString *)newValue // lets overwrite default setter
{
    NSLog(@"call to setter of the property 'dimension'! New value = %@", newValue);
    _dimension = newValue;
}
- (NSString *)dimension // lets overwrite default getter
{
    self.privateCounter++;
    NSLog(@"call to getter of the property 'dimension'! This method was called %d times", [self privateCounter]);
    
    return _dimension;
    return [self dimension];//this method call himself, so this is infinite recursiv call - not good. Don't do this way
}

- (NSInteger)privateCounter // lets overwrite default getter
{
    NSLog(@"call to getter of the property 'privateCounter'!");
    return _privateCounter;
}


@end

