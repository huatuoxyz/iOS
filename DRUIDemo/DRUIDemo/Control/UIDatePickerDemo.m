//
//  UIDatePickerDemo.m
//  DRUIDemo
//
//  Created by Dongri Jin on 2012/07/30.
//  Copyright (c) 2012年 Dongri Jin. All rights reserved.
//

#import "UIDatePickerDemo.h"

@interface UIDatePickerDemo ()

@end

@implementation UIDatePickerDemo

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    datePicker = [[[UIDatePicker alloc] init] autorelease];
    datePicker.center = self.view.center;
    datePicker.minuteInterval = 30;
    datePicker.datePickerMode = UIDatePickerModeDateAndTime;
    // 値が変更された時にhogeメソッドを呼び出す
    [datePicker addTarget:self action:@selector(updateLabel) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:datePicker];
    
    dateLabel = [[UILabel alloc] initWithFrame:CGRectMake((320-250)/2, 20, 250, 30)];
    [self.view addSubview:dateLabel];
    [dateLabel release];
    
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}


- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}


-(void)updateLabel
{
    NSDateFormatter *dateformatter = [[NSDateFormatter alloc] init];
	[dateformatter setDateFormat:@"yyyy/MM/dd HH:mm:ss"];
    
    dateLabel.text = [dateformatter stringFromDate:[datePicker date]];
    
    [dateformatter release];
}

@end
