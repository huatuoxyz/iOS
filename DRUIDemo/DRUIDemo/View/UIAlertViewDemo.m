//
//  UIAlertViewDemo.m
//
//  Created by Dongri Jin on 2012/07/29.
//  Copyright (c) 2012年 Dongri Jin. All rights reserved.
//

#import "UIAlertViewDemo.h"

@implementation UIAlertViewDemo

- (void)viewDidLoad 
{
	[super viewDidLoad];
}

- (void)viewDidUnload 
{
	[super viewDidUnload];
}

- (void)dealloc 
{
	[super dealloc];
}
#pragma mark -
#pragma mark UIAlertView

- (void)alertSimpleAction:(NSString *)msg
{
	// open an alert with just an OK button
	UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"UIAlertView" message:msg
												   delegate:self cancelButtonTitle:@"OK" otherButtonTitles: nil];
	
	[alert show];	
	[alert release];
}

- (void)alertOKCancelAction:(NSString *)msg
{
	// open a alert with an OK and cancel button
	UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"UIAlertView" message:msg
												   delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:@"OK", nil];
	[alert show];
	[alert release];
}

- (void)alertOtherAction:(NSString *)msg
{
	// open an alert with two custom buttons
	UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"UIAlertView" message:msg
												   delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:@"Button1", @"Button2", nil];
	[alert show];
	[alert release];
}

#pragma mark -
#pragma mark - UITableView delegates

- (NSInteger) numberOfSectionsInTableView:(UITableView *)tableView 
{
	return 3;
}

- (NSString *) tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section 
{
	return @"UIAlert";
}

- (NSInteger) tableView:(UITableView *)table numberOfRowsInSection:(NSInteger)section 
{
	return 1;
}

- (CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath 
{
	return ( [indexPath row] == 0 ) ? 50.0 : 100.0;
}

- (UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
	UITableViewCell *cell = nil;
    static NSString *kAlertCell_ID = @"AlertCell_ID";
    cell = [self.tableView dequeueReusableCellWithIdentifier:kAlertCell_ID];
    if (cell == nil)
    {
        cell = [[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:kAlertCell_ID] autorelease ];
    }
    switch (indexPath.section) {
        case 0:
            cell.textLabel.text = @"Simple";
            break;
        case 1:
            cell.textLabel.text = @"OK Cancel";
            break;
        case 2:
            cell.textLabel.text = @"Buttons";
            break;
            
        default:
            break;
    }
	return cell;
}

- (void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
	[tableView deselectRowAtIndexPath:[tableView indexPathForSelectedRow] animated:YES];
	
	if ([indexPath row] == 0)
	{
		switch (indexPath.section) {
			case 0:
				[self alertSimpleAction:@"Simple"];
				break;
			case 1:
				[self alertOKCancelAction:@"OK Cancel"];
				break;
			case 2:
				[self alertOtherAction:@"Buttons"];
				break;
		}
	}
	
}


@end
