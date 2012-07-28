//
//  LeftMenuViewController.m
//  DRSlideMenu
//
//  Created by Dongri Jin on 2012/07/28.
//  Copyright (c) 2012年 Dongri Jin. All rights reserved.
//

#import "RightMenuViewController.h"
#import "MainViewController.h"

@interface RightMenuViewController ()

@end

@implementation RightMenuViewController

@synthesize previousButton = _previousButton;

static id _instance = nil;

+ (id)sharedInstance
{
    @synchronized(self) {
        if (!_instance) {
            [[self alloc] init];
        }
    }
    return _instance;
}

+ (id)allocWithZone:(NSZone*)zone
{
    @synchronized(self) {
        if (!_instance) {
            _instance = [super allocWithZone:zone];
            return _instance;
        }
    }
    return nil;
}

-(void)presentViewController:(UIViewController *) viewControllerToPresent animated:(BOOL)flag {
    _previousViewController = viewControllerToPresent.navigationController;
    
    //[self.tableView scrollToNearestSelectedRowAtScrollPosition:UITableViewScrollPositionTop animated:NO];
    //self.tableView.contentInset = UIEdgeInsetsMake(0, _previousViewController.view.frame.size.width*0.2, 0, 0);
    //self.tableView.contentSize=CGSizeMake(320-_previousViewController.view.frame.size.width*0.2,480-20);
    //self.tableView.showsHorizontalScrollIndicator = NO;
    CGRect rect = [[UIScreen mainScreen] bounds];
    self.tableView.frame = CGRectOffset(rect, _previousViewController.view.frame.size.width*0.2, 20);
    [self showTableView:YES];
}

#pragma mark - private
-(void)showTableView:(BOOL)animated {
    [_previousViewController.view insertSubview:self.tableView atIndex:0];
    
    // start animation
    if(animated) {
        [UIView beginAnimations:nil context:nil];
    }
    
    for(int i=0; i<[_previousViewController.view.subviews count]; i++) {
        UIView *subView = (UIView *)[_previousViewController.view.subviews objectAtIndex:i];
        
        if([self.tableView isEqual:subView]) {
            continue;
        }
        
        subView.transform = CGAffineTransformMakeTranslation(_previousViewController.view.frame.size.width*-0.8, 0);
    }
    
    if(animated) {
        [UIView commitAnimations];
    }
    
    [_previousViewController.view addSubview:self.previousButton];
}

-(void)hideTableView:(BOOL)animated {
    
    if(animated) {
        [UIView beginAnimations:nil context:nil];
    }
    [UIView setAnimationDelegate:self];
    [UIView setAnimationDidStopSelector:@selector(animationDidStop:finished:context:)];
    
    for(int i=0; i<[_previousViewController.view.subviews count]; i++) {
        UIView *subView = (UIView *)[_previousViewController.view.subviews objectAtIndex:i];
        
        if([_previousButton isEqual:subView]) {
            continue;
        }
        if([self.tableView isEqual:subView]) {
            continue;
        }
        
        subView.transform = CGAffineTransformMakeTranslation(0, 0);
    }
    
    if(animated) {
        [UIView commitAnimations];
    }
    
}

-(UIButton *)previousButton {
    @synchronized(_previousButton) {
        if (!_previousButton) {
            CGRect previousViewFrame = CGRectMake(0, 0, _previousViewController.view.frame.size.width*0.2, _previousViewController.view.frame.size.height);
            _previousButton = [[UIButton alloc] initWithFrame:previousViewFrame];
            [_previousButton addTarget:self action:@selector(touchPreviousButton:) forControlEvents:UIControlEventTouchUpInside];
        }
    }
    return _previousButton;
}

-(void)touchPreviousButton:(id)sender
{
    [self hideTableView:YES];
}

-(void)animationDidStop:(NSString *)animationID finished:(NSNumber *)finished context:(void *)context {
    
    [self.tableView removeFromSuperview];
    
    [_previousButton removeFromSuperview];
}

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
    
    [self.tableView setSeparatorColor:[UIColor blackColor]];
    [self.tableView setBackgroundColor:[UIColor blackColor]];
    
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
    return 15;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
    }
    // Configure the cell...
    
    
    cell.textLabel.text = [NSString stringWithFormat:@"Right Menu %d", indexPath.row];
    cell.textLabel.textColor = [UIColor whiteColor];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
{
    cell.backgroundColor = [UIColor colorWithRed:50.0f/255.0f green:55.0f/255.0f blue:74.0f/255.0f alpha:1.0];;
}

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [((MainViewController *)((UINavigationController *)_previousViewController).topViewController) selectedMenu:indexPath.row];
    [self hideTableView:YES];
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

@end

