//
//  BIDDoubleComponentPickerViewController.m
//  Picker
//
//  Created by Blake Stiller on 2014-08-26.
//  Copyright (c) 2014 blakestiller. All rights reserved.
//

#import "BIDDoubleComponentPickerViewController.h"

#define kFillingComponent 0
#define kBreadComponent 1

@interface BIDDoubleComponentPickerViewController ()
@property (weak, nonatomic) IBOutlet UIPickerView *doublePicker;

@end

@implementation BIDDoubleComponentPickerViewController

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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (IBAction)buttonPressed:(id)sender {
    NSInteger fillingRow = [self.doublePicker selectedRowInComponent:
                            kFillingComponent];
    NSInteger breadRow = [self.doublePicker selectedRowInComponent:
                          kBreadComponent];
    
    NSString *filling = self.fillingTypes[fillingRow];
    NSString *bread = self.breadTypes[breadRow];
    NSString *message = [[NSString alloc]initWithFormat:
                          @"Your %@ on %@ bread will be right up.", filling, bread];
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:
                          @"Thank you for your order"
                                                   message:message
                                                  delegate:nil
                                      cancelButtonTitle:@"Great!"
                                         otherButtonTitles:nil];
}


@end
