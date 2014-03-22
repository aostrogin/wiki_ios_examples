//
//  AOPatient.h
//  DelegatesProgect
//
//  Created by Alexa on 21.03.14.
//  Copyright (c) 2014 Alexa. All rights reserved.
//

#import <Foundation/Foundation.h>

@class AODoctor; // just say that somewhere later will be #import of this class
@protocol AOPatientDelegate; // just say that somewhere later will be #import of this protocol

//Note: Patient dont know about Doctor - this is the goal!!!
//Note: All delegates must be weak !!!
@interface AOPatient : NSObject

@property (strong,nonatomic) NSString* name;
@property (assign,nonatomic) CGFloat temperature;

// all this way to declare delegates are valid
@property (weak,nonatomic) id <AOPatientDelegate> delegateDoctor; // Notice - here we don't need a sign '*'
@property (weak,nonatomic) NSObject <AOPatientDelegate>* delegateDoctorExample2; // other cases - need sign '*'
@property (weak,nonatomic) AODoctor <AOPatientDelegate>* delegateDoctorExample3;

- (Boolean) howAreYou;
- (void) takePill;
- (void) takeShot;

@end


@protocol AOPatientDelegate <NSObject>
@required
- (void) patientFeelsBed:(AOPatient*) patient;
- (void) patient:(AOPatient*) patient hasQuestion:(NSString*) question;
@end
