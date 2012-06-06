//
//  WelcomeFormController.m
//  Avva
//
//  Created by Andres Morales on 6/1/12.
//  Copyright 2012 Stanford University. All rights reserved.
//

#import "WelcomeFormController.h"

#define AVVA_LOGO_2_SCALE 0.06
#define AVVA_LOGO_2_WIDTH 2041
#define AVVA_LOGO_2_HEIGHT 552

@implementation UINavigationBar (CustomImage)
- (void)drawRect:(CGRect)rect {
    UIImage *image = [UIImage imageNamed:@"avvalogo2.png"];
    [image drawInRect:CGRectMake(10, 8, AVVA_LOGO_2_WIDTH*AVVA_LOGO_2_SCALE, AVVA_LOGO_2_HEIGHT*AVVA_LOGO_2_SCALE)];
}
@end

@implementation WelcomeFormController

@synthesize managedObjectContext, dataSource, tableView;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
	return YES;
}

@end
