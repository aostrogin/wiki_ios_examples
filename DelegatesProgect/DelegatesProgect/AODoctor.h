//
//  AODoctor.h
//  DelegatesProgect
//
//  Created by Alexa on 21.03.14.
//  Copyright (c) 2014 Alexa. All rights reserved.
//
//#import "AOPatient.h"

#import <Foundation/Foundation.h>

@protocol AOPatientDelegate;

@interface AODoctor : NSObject <AOPatientDelegate>

@end
