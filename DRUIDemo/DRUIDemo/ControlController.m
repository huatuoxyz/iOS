//
//  ControlMainViewController.m
//  DRUIDemo
//
//  Created by Dongri Jin on 2012/07/29.
//  Copyright (c) 2012年 Dongri Jin. All rights reserved.
//

#import "ControlController.h"
#import "UIButtonDemo.h"
#import "UIPageControlDemo.h"
#import "UIDatePickerDemo.h"
#import "UISegmentedControlDemo.h"
#import "UISliderDemo.h"
#import "UISwitchDemo.h"
#import "UITextFieldDemo.h"

@interface ControlController ()

@end

@implementation ControlController

@synthesize controls;

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

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    controls = [[NSMutableArray alloc] init];
    
    // UIButton
	UIButtonDemo *alertController = [[UIButtonDemo alloc] init];
	alertController.title = @"UIButton";
	[alertController setHidesBottomBarWhenPushed:YES];
	[self.controls addObject:alertController];
	[alertController release];
    
    // UIPageControl
	UIPageControlDemo *pageControl = [[UIPageControlDemo alloc] init];
	pageControl.title = @"UIPageControl";
	[pageControl setHidesBottomBarWhenPushed:YES];
	[self.controls addObject:pageControl];
	[pageControl release];

    // UIDatePicker
	UIDatePickerDemo *datePicker = [[UIDatePickerDemo alloc] init];
	datePicker.title = @"UIDatePicker";
	[datePicker setHidesBottomBarWhenPushed:YES];
	[self.controls addObject:datePicker];
	[datePicker release];
    
    // UISegmentedControl
	UISegmentedControlDemo *segmentedControl = [[UISegmentedControlDemo alloc] init];
	segmentedControl.title = @"UISegmentedControl";
	[segmentedControl setHidesBottomBarWhenPushed:YES];
	[self.controls addObject:segmentedControl];
	[segmentedControl release];
    
    // UISlider
    UISliderDemo *sliderDemo = [[UISliderDemo alloc] init];
	sliderDemo.title = @"UISlider";
	[sliderDemo setHidesBottomBarWhenPushed:YES];
	[self.controls addObject:sliderDemo];
	[sliderDemo release];
    
    // UISwitch
    UISwitchDemo *switchDemo = [[UISwitchDemo alloc] init];
	switchDemo.title = @"UISwitch";
	[switchDemo setHidesBottomBarWhenPushed:YES];
	[self.controls addObject:switchDemo];
	[switchDemo release];
    
    // UISlider
    UITextFieldDemo *textFieldDemo = [[UITextFieldDemo alloc] init];
	textFieldDemo.title = @"UITextField";
	[textFieldDemo setHidesBottomBarWhenPushed:YES];
	[self.controls addObject:textFieldDemo];
	[textFieldDemo release];
    

    
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
    return [self.controls count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
    }
    // Configure the cell...
    UIViewController *controller = [controls objectAtIndex:indexPath.row];
	cell.textLabel.text = controller.title;
	cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
	NSUInteger row = [indexPath row];
	UIViewController *nextController = [self.controls objectAtIndex:row];
	[self.navigationController pushViewController:nextController animated:YES];
}

@end
