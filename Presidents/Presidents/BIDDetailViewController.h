//
//  BIDDetailViewController.h
//  Presidents
//
//  Created by Blake Stiller on 2014-09-08.
//  Copyright (c) 2014 blakestiller. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BIDDetailViewController : UIViewController <UISplitViewControllerDelegate>

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@property (weak, nonatomic) IBOutlet UIWebView *webView;
@end
