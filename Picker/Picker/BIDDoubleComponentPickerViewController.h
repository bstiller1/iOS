//
//  BIDDoubleComponentPickerViewController.h
//  Picker
//
//  Created by Blake Stiller on 2014-08-26.
//  Copyright (c) 2014 blakestiller. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BIDDoubleComponentPickerViewController : UIViewController
<UIPickerViewDelegate, UIPickerViewDataSource>
@property (strong, nonatomic) NSArray *fillingTypes;
@property (strong, nonatomic) NSArray *breadTypes;

@end
