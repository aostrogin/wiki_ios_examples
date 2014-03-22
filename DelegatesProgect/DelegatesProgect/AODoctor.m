//
//  AODoctor.m
//  DelegatesProgect
//
//  Created by Alexa on 21.03.14.
//  Copyright (c) 2014 Alexa. All rights reserved.
//

#import "AODoctor.h"
#import "AOPatient.h"

@implementation AODoctor

#pragma mark - AOPatientDelegate

- (void) patientFeelsBed:(AOPatient*) patient
{
    NSLog(@"Patient %@ fills bed.", patient.name);
    if (patient.temperature < 37.0f)
        NSLog(@"Go Home to rest, your temperature too less %f (normal temperature is %@)", patient.temperature, [NSString stringWithFormat:@"%f",36.6f]);
    if (patient.temperature < 39.0f)
        [patient takePill];
    else
        [patient takeShot];
}

- (void) patient:(AOPatient*) patient hasQuestion:(NSString*) question
{
    NSLog(@"Patient %@ ask question %@", patient.name, question);

}

@end
