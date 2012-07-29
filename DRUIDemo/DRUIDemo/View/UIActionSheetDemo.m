//
//  UIActionSheetDemo.m
//
//  Created by Dongri Jin on 2012/07/29.
//  Copyright (c) 2012年 Dongri Jin. All rights reserved.
//

#import "UIActionSheetDemo.h"

@implementation UIActionSheetDemo

- (void)viewDidLoad 
{
	[super viewDidLoad];
	
}

- (void)viewDidUnload 
{
	[super viewDidUnload];
}

- (void)dealoc {
	[super dealloc];
}

#pragma mark -
#pragma mark UIActionSheet

- (void)actionSheetSimpleAction:(NSString *)msg
{
	
	UIActionSheet *actionSheet = [[UIActionSheet alloc] initWithTitle:msg delegate:self cancelButtonTitle:nil 
											   destructiveButtonTitle:@"OK" otherButtonTitles: nil];
	[actionSheet showInView:self.view];
	[actionSheet release];
}

- (void)actionSheetOKCancelAction:(NSString *)msg
{
	
	UIActionSheet *actionSheet = [[UIActionSheet alloc] initWithTitle:msg delegate:self cancelButtonTitle:@"Cancel" 
											   destructiveButtonTitle:@"OK" otherButtonTitles:nil, nil];
	[actionSheet showInView:self.view];
	[actionSheet release];
}

- (void)actionSheetOtherAction:(NSString *)msg
{
	
	UIActionSheet *actionSheet = [[UIActionSheet alloc] initWithTitle:msg delegate:self cancelButtonTitle:nil 
											   destructiveButtonTitle:nil otherButtonTitles:@"Button1", @"Button2", nil];
	actionSheet.destructiveButtonIndex = 1;	// make the second button red (destructive)
	[actionSheet showInView:self.view];
	[actionSheet release];
}

#pragma mark - UITableView delegates

- (NSInteger) numberOfSectionsInTableView:(UITableView *)tableView 
{
	return 3;
}

- (NSString *) tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section 
{
	return @"UIActionSheet";
}

- (NSInteger) tableView:(UITableView *)table numberOfRowsInSection:(NSInteger)section 
{
	return 1;
}

- (CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath 
{
	return ( [indexPath row] == 0 ) ? 50.0 : 100.0;
}

- (void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath 
{
	[tableView deselectRowAtIndexPath:[tableView indexPathForSelectedRow] animated:YES];
	
	if ([indexPath row] == 0) 
	{
		switch (indexPath.section) {
			case 0:
				[self actionSheetSimpleAction:@"OK"];
				break;
			case 1:
				[self actionSheetOKCancelAction:@"OK Cancel"];
				break;
			case 2:
				[self actionSheetOtherAction:@"Buttons"];
				break;
		}
	}
}

- (UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath 
{
	UITableViewCell *cell = nil;
	
    static NSString *kAlertCell_ID = @"ActionSheetCell_ID";
    cell = [self.tableView dequeueReusableCellWithIdentifier:kAlertCell_ID];
    if (cell == nil) 
    {
        cell = [[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:kAlertCell_ID] autorelease ];
    }
    switch (indexPath.section) {
        case 0:
            cell.textLabel.text = @"OK";
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

@end
