//
//  ViewMainViewController.m
//  DRUIDemo
//
//  Created by Dongri Jin on 2012/07/29.
//  Copyright (c) 2012年 Dongri Jin. All rights reserved.
//

#import "ViewController.h"
#import "UIAlertViewDemo.h"
#import "UIActionSheetDemo.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize menus;

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.menus = [[NSMutableArray alloc] init];

    // UIAlert
	UIAlertViewDemo *alertController = [[UIAlertViewDemo alloc]initWithStyle:UITableViewCellStyleValue1];
	alertController.title = @"UIAlert";
	[alertController setHidesBottomBarWhenPushed:YES];
	[self.menus addObject:alertController];
	[alertController release];
	
	// UIActionSheet
	UIActionSheetDemo *actionSheetController = [[UIActionSheetDemo alloc]initWithStyle:UITableViewCellStyleValue1];
	actionSheetController.title = @"UIActionSheet";
	[actionSheetController setHidesBottomBarWhenPushed:YES];
	[self.menus addObject:actionSheetController];
	[actionSheetController release];
	

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [self.menus count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
    }
    // Configure the cell...
    UIViewController *controller = [menus objectAtIndex:indexPath.row];
	cell.textLabel.text = controller.title;
	cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    return cell;
}


#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
	NSUInteger row = [indexPath row];
	UIViewController *nextController = [self.menus objectAtIndex:row];
	[self.navigationController pushViewController:nextController animated:YES];
}

@end
