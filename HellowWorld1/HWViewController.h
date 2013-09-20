//
//  HWViewController.h
//  HellowWorld1
//
//  Created by Ryan Nam on 3/2/13.
//  Copyright (c) 2013 Ryan Nam. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HWColorChoiceViewController.h"

@interface HWViewController : UIViewController <HWColorChoiceViewControllerDelegate>

-(IBAction)startButtonSelected:(id)sender;

@property (nonatomic, strong) IBOutlet UILabel *label;

@property (nonatomic, strong) NSArray      *descriptions;
@property (nonatomic, strong) NSDictionary *colorOptions;

@end
