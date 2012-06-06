//
//  AvvaAppDelegate.h
//  Avva
//
//  Created by Andres Morales on 6/1/12.
//  Copyright 2012 Stanford University. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WelcomeFormController.h"

@interface AvvaAppDelegate : NSObject <UIApplicationDelegate>

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet WelcomeFormController *wfc;

@property (nonatomic, retain, readonly) NSManagedObjectContext *managedObjectContext;
@property (nonatomic, retain, readonly) NSManagedObjectModel *managedObjectModel;
@property (nonatomic, retain, readonly) NSPersistentStoreCoordinator *persistentStoreCoordinator;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;
- (void) removeImage:(UIImageView *)iv;

@end
