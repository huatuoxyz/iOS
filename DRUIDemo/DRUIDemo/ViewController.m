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
#import "UITextViewDemo.h"
#import "UIProgressViewDemo.h"
#import "UIWebViewDemo.h"
#import "UILabelDemo.h"
#import "UIImageViewDemo.h"
#import "UIPickerViewDemo.h"
#import "UIScrollViewDemo.h"
#import "UITableViewDemo.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize views;

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

    self.views = [[NSMutableArray alloc] init];

    // UIAlert
	UIAlertViewDemo *alertController = [[UIAlertViewDemo alloc]initWithStyle:UITableViewCellStyleValue1];
	alertController.title = @"UIAlert";
	[alertController setHidesBottomBarWhenPushed:YES];
	[self.views addObject:alertController];
	[alertController release];
	
	// UIActionSheet
	UIActionSheetDemo *actionSheetController = [[UIActionSheetDemo alloc]initWithStyle:UITableViewCellStyleValue1];
	actionSheetController.title = @"UIActionSheet";
	[actionSheetController setHidesBottomBarWhenPushed:YES];
	[self.views addObject:actionSheetController];
	[actionSheetController release];
	
    // UITextView
	UITextViewDemo *textViewDemo = [[UITextViewDemo alloc] init];
	textViewDemo.title = @"UITextView";
	[textViewDemo setHidesBottomBarWhenPushed:YES];
	[self.views addObject:textViewDemo];
	[textViewDemo release];
	
    
    // UIProgressView
	UIProgressViewDemo *progressViewDemo = [[UIProgressViewDemo alloc] init];
	progressViewDemo.title = @"UIProgressView";
	[progressViewDemo setHidesBottomBarWhenPushed:YES];
	[self.views addObject:progressViewDemo];
	[progressViewDemo release];
    
    
    //UIWebView
    UIWebViewDemo *webViewDemo = [[UIWebViewDemo alloc] init];
	webViewDemo.title = @"UIWebView";
	[webViewDemo setHidesBottomBarWhenPushed:YES];
	[self.views addObject:webViewDemo];
	[webViewDemo release];
    
    //UILabel
    UILabelDemo *labelDemo = [[UILabelDemo alloc] init];
	labelDemo.title = @"UILabelDemo";
	[labelDemo setHidesBottomBarWhenPushed:YES];
	[self.views addObject:labelDemo];
	[labelDemo release];
    
    //UIImageView
    UIImageViewDemo *imageViewDemo = [[UIImageViewDemo alloc] init];
	imageViewDemo.title = @"UIImageView";
	[imageViewDemo setHidesBottomBarWhenPushed:YES];
	[self.views addObject:imageViewDemo];
	[imageViewDemo release];
    
    //UIPickerView
    UIPickerViewDemo *pickerViewDemo = [[UIPickerViewDemo alloc] init];
	pickerViewDemo.title = @"UIPickerView";
	[pickerViewDemo setHidesBottomBarWhenPushed:YES];
	[self.views addObject:pickerViewDemo];
	[pickerViewDemo release];
    
    //UIScrollView
    UIScrollViewDemo *scrollViewDemo = [[UIScrollViewDemo alloc] init];
	scrollViewDemo.title = @"UIScrollView";
	[scrollViewDemo setHidesBottomBarWhenPushed:YES];
	[self.views addObject:scrollViewDemo];
	[scrollViewDemo release];
    
    //UITableView
    UITableViewDemo *tableViewDemo = [[UITableViewDemo alloc] init];
	tableViewDemo.title = @"UITableView";
	[tableViewDemo setHidesBottomBarWhenPushed:YES];
	[self.views addObject:tableViewDemo];
	[tableViewDemo release];
    
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
    return [self.views count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
    }
    // Configure the cell...
    UIViewController *controller = [views objectAtIndex:indexPath.row];
	cell.textLabel.text = controller.title;
	cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    return cell;
}


#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
	NSUInteger row = [indexPath row];
	UIViewController *nextController = [self.views objectAtIndex:row];
	[self.navigationController pushViewController:nextController animated:YES];
}

@end
