//
//  HWColorChoiceViewController.h
//  HellowWorld1
//
//  Created by Ryan Nam on 3/2/13.
//  Copyright (c) 2013 Ryan Nam. All rights reserved.
//

#import <UIKit/UIKit.h>

@class HWColorChoiceViewController;



@protocol HWColorChoiceViewControllerDelegate <NSObject>

-(void)colorSelected:(NSString *)colorName;

@end



@interface HWColorChoiceViewController : UITableViewController

@property (nonatomic, strong) NSArray *datasource;

@property (nonatomic, weak) id<HWColorChoiceViewControllerDelegate> delegate;

@end
