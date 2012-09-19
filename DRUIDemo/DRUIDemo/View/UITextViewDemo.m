//
//  UITextViewDemo.m
//  DRUIDemo
//
//  Created by Dongri Jin on 2012/07/31.
//  Copyright (c) 2012年 Dongri Jin. All rights reserved.
//

#import "UITextViewDemo.h"

@interface UITextViewDemo ()

@end

@implementation UITextViewDemo

@synthesize textView;
@synthesize editTextView;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.view.backgroundColor = [UIColor groupTableViewBackgroundColor];
    }
    return self;
}

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.editTextView = [[UITextView alloc] initWithFrame:CGRectMake(50, 50, 200, 50)];
	self.editTextView.text = @"here is Edit Area!! \n";
	self.editTextView.delegate = self;
    
    self.textView = [[UITextView alloc] initWithFrame:CGRectMake(50, 150, 200, 100)];
	self.textView.editable = NO;
    self.textView.dataDetectorTypes = UIDataDetectorTypeLink | UIDataDetectorTypePhoneNumber;
    
    [self.view addSubview:self.editTextView];
    [self.view addSubview:self.textView];
    
    self.textView.text = @"text. \n my web site : \n http://dongriab.com \n ** telephone : \n 000-111-222 \n";
    
}


- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)dealloc {
	[textView release];
	[editTextView release];
    [super dealloc];
}

#pragma mark -
#pragma mark UITextViewDelegate

- (void)textViewDidBeginEditing:(UITextView *)editTextView
{
	// provide my own Save button to dismiss the keyboard
	UIBarButtonItem* saveItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone
																			  target:self action:@selector(saveAction:)];
	self.navigationItem.rightBarButtonItem = saveItem;
	[saveItem release];
}

- (void)saveAction:(id)sender
{
	// finish typing text/dismiss the keyboard by removing it as the first responder
	//
	[self.editTextView resignFirstResponder];
	self.navigationItem.rightBarButtonItem = nil;	// this will remove the "save" button
}

@end

