//
//  WelcomeFormDataSource.m
//  Avva
//
//  Created by Andres Morales on 6/1/12.
//  Copyright 2012 Stanford University. All rights reserved.
//

#import "WelcomeFormDataSource.h"

@implementation WelcomeFormDataSource

- (id)init
{
    self = [super init];
    if (self) {
        questionArray = [[NSArray arrayWithObjects:[NSArray arrayWithObjects:@"Are you under 40 years of age?", nil], [NSArray arrayWithObjects:@"What is your cancer stage?", @"What is your cancer type?", @"Is the cancer triple negative?", nil], nil] retain];
    }
    
    return self;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{

    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"AvvaFormCell"];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"AvvaFormCell"] autorelease];
        cell.textLabel.font = [UIFont fontWithName:@"Helvetica" size:17.0];
    }
    
    cell.textLabel.text = [[questionArray objectAtIndex:[indexPath indexAtPosition:0]] objectAtIndex:[indexPath indexAtPosition:1]];
    
    return cell;

}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    
    return 2;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return section == 0 ? 1 : 3;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    return section == 0 ? @"Required Questions" : @"Optional Questions";
}


@end
