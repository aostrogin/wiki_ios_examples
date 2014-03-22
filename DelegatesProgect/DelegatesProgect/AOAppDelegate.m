//
//  AOAppDelegate.m
//  DelegatesProgect
//
//  Created by Alexa on 21.03.14.
//  Copyright (c) 2014 Alexa. All rights reserved.
//

#import "AOAppDelegate.h"
#import "AOPatient.h"
#import "AODoctor.h"

@implementation AOAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    AOPatient* patient1 = [[AOPatient alloc] init];
    patient1.name = @"Patrik";
    patient1.temperature = 38.5f;
    
    AOPatient* patient2 = [[AOPatient alloc] init];
    patient2.name = @"Seva";
    patient2.temperature = 40.5f;
    
    AODoctor* doctor = [[AODoctor alloc] init];
    patient1.delegateDoctor = doctor;
    patient2.delegateDoctor = doctor;
    
    BOOL isPatientGood = patient1.howAreYou;
    NSLog(@"Patient %@ feels %@ now!", patient1.name, isPatientGood?@"good":@"bed");

    isPatientGood = patient2.howAreYou;
    NSLog(@"Patient %@ feels %@ now!", patient2.name, isPatientGood?@"good":@"bed");
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
