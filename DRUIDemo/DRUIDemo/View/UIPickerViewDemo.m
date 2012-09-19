//
//  UIPickerViewDemo.m
//  DRUIDemo
//
//  Created by Dongri Jin on 2012/07/31.
//  Copyright (c) 2012年 Dongri Jin. All rights reserved.
//

#import "UIPickerViewDemo.h"

@interface UIPickerViewDemo ()

@end

@implementation UIPickerViewDemo

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.view.backgroundColor = [UIColor groupTableViewBackgroundColor];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    UIPickerView *piv = [[[UIPickerView alloc] init] autorelease];
    piv.center = self.view.center;  // 中央に表示
    piv.delegate = self;  // デリゲートを自分自身に設定
    piv.dataSource = self;  // データソースを自分自身に設定
    piv.showsSelectionIndicator = YES;
    [self.view addSubview:piv];
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


#pragma mark - picker
-(NSInteger)numberOfComponentsInPickerView:(UIPickerView*)pickerView{
    return 2; //列数は２つ
}

// 行数を返す例
-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    
    if(component == 0){
        return 10;  // 1列目は10行
    }else{
        return 5;  // 2列目は5行
    }
    
}

// 表示する内容を返す例
-(NSString*)pickerView:(UIPickerView*)pickerView
           titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    
    // 行インデックス番号を返す
    return [NSString stringWithFormat:@"%d", row];
    
}


@end
