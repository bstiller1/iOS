//
//  BIDMasterViewController.h
//  Presidents
//
//  Created by Blake Stiller on 2014-09-08.
//  Copyright (c) 2014 blakestiller. All rights reserved.
//

#import <UIKit/UIKit.h>

@class BIDDetailViewController;

@interface BIDMasterViewController : UITableViewController

@property (strong, nonatomic) BIDDetailViewController *detailViewController;

@end
