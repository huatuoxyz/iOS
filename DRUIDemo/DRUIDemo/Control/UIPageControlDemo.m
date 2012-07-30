//
//  UIPageControlDemo.m
//
//  Created by Dongri Jin on 2012/07/29.
//  Copyright (c) 2012年 Dongri Jin. All rights reserved.
//

#import "UIPageControlDemo.h"

#define kNibNameBaseView    @"BaseView"
#define kNibNamePage1       @"Page1"
#define kNibNamePage2       @"Page2"
#define kNibNamePage3       @"Page3"

#define kPagingScrollViewHeight  440-20-49  // スクロールビューのheight(ページコントロールは除外)
#define kPageViewWidth           320  // 各ページビューのwidth
#define kPagerHeight             20   // UIPageControlのheight
#define kNumberOfPages           3    // ページ数

@implementation UIPageControlDemo

@synthesize pagingScrollView;
@synthesize pageControl;

-(void)viewDidLoad
{
    [super viewDidLoad];
    [self setHidesBottomBarWhenPushed:YES];
    //self.view.backgroundColor = [UIColor groupTableViewBackgroundColor];
    
    //pageControl = [[UIPageControl alloc] initWithFrame:CGRectMake(20, 0, 280, 36)];
    //[pageControl setNumberOfPages:5];
    //[self.view addSubview:pageControl];
    
    // ページングスクロールビューを生成
    pagingScrollView = [[[UIScrollView alloc] init] autorelease];
    pagingScrollView.frame = self.view.bounds;
    pagingScrollView.contentSize = CGSizeMake(kPageViewWidth * kNumberOfPages, kPagingScrollViewHeight);
    pagingScrollView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    // ページごとのスクロールにする
    pagingScrollView.pagingEnabled = YES;
    // スクロールバーを非表示にする
    pagingScrollView.showsHorizontalScrollIndicator = NO;
    pagingScrollView.showsVerticalScrollIndicator = NO;
    
    // ステータスバータップでトップにスクロールする機能をOFFにする
    pagingScrollView.scrollsToTop = NO;
    
    // ページングスクロールビューのdelegateメソッドを使えるように設定
    pagingScrollView.delegate = self;
    
    // 各ページをページングスクロールビューに貼り付ける
    for (int i=0; i<kNumberOfPages; i++) {
        // 各ページビューのコントローラをxibから生成
        UIViewController *pageViewController = [[[UIViewController alloc] init] autorelease];
        // x座標をページ幅分だけずらしながらaddSubview
        pageViewController.view.frame = CGRectMake(kPageViewWidth * i, 20+36, kPageViewWidth, kPagingScrollViewHeight);
        pageViewController.view.backgroundColor = [UIColor grayColor];
        [pagingScrollView addSubview:pageViewController.view];
    }
    // ページングスクロールビューをaddSubview
    [self.view addSubview:pagingScrollView];
    
    // ページコントロール
    // ページングスクロールビューの下にページコントロールを配置
    pageControl = [[[UIPageControl alloc] initWithFrame:CGRectMake(20, 0, 280, 36)] autorelease];
    // 現在ページを示す点は白なので、見えやすいように背景を黒に設定
    pageControl.backgroundColor = [UIColor blackColor];
    // ページ数を指定
    pageControl.numberOfPages = kNumberOfPages;
    // ページ番号は0ページを指定(1にするとこの場合真ん中のページが指定される)
    pageControl.currentPage = 0;
    // ページが1ページのみの場合は現在ページを示す点を表示しない
    pageControl.hidesForSinglePage = NO;
    [self.view addSubview:pageControl];
    
    // ページコントロールの値が変わったときのアクションを登録
    [pageControl addTarget:self action:@selector(changePageControl:) forControlEvents:UIControlEventValueChanged];
}

/**
 * ページコントロール変更時処理
 */
- (void)changePageControl:(id)sender {
    
    // ページコントロールが変更された場合、それに合わせてページングスクロールビューを該当ページまでスクロールさせる
    CGRect frame = pagingScrollView.frame;
    frame.origin.x = frame.size.width * pageControl.currentPage;
    frame.origin.y = 0;
    // 可視領域まで移動
    [pagingScrollView scrollRectToVisible:frame animated:YES];
}

/**
 * ページングスクロールビュー変更時処理(UIScrollViewのdelegateメソッド)
 */
- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    
    // UIScrollViewのページ切替時イベント:UIPageControlの現在ページを切り替える処理
    pageControl.currentPage = pagingScrollView.contentOffset.x / kPageViewWidth;
}

@end
