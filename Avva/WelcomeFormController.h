//
//  WelcomeFormController.h
//  Avva
//
//  Created by Andres Morales on 6/1/12.
//  Copyright 2012 Stanford University. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WelcomeFormDataSource.h"

@interface WelcomeFormController : UIViewController 

@property (nonatomic, retain) IBOutlet WelcomeFormDataSource *dataSource;
@property (nonatomic, retain) IBOutlet UITableView *tableView;
@property (nonatomic, retain) NSManagedObjectContext *managedObjectContext;

@end
