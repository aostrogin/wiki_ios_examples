//
//  AOPatient.m
//  DelegatesProgect
//
//  Created by Alexa on 21.03.14.
//  Copyright (c) 2014 Alexa. All rights reserved.
//

#import "AOPatient.h"

@implementation AOPatient
- (Boolean) howAreYou
{
    BOOL ifFeelGood = arc4random() % 2 ? true: false;
    if (ifFeelGood)
        return ifFeelGood;
    
    [self.delegateDoctor patientFeelsBed:self];
    // this is the same command as previous
    // [[self delegateDoctor] patientFeelsBed:self];
    
    return true;
}
- (void) takePill
{
    NSLog(@"%@ takes a pill", [self name]);
}
- (void) takeShot
{
    NSLog(@"%@ make a shot", self.name);
}

@end
