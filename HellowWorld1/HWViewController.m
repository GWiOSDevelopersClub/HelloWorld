//
//  HWViewController.m
//  HellowWorld1
//
//  Created by Ryan Nam on 3/2/13.
//  Copyright (c) 2013 Ryan Nam. All rights reserved.
//

#import "HWViewController.h"
#import "HWColorChoiceViewController.h"

@interface HWViewController ()

@end

@implementation HWViewController

-(void)colorSelected:(NSString *)colorName {
    self.label.text = @"Hello World!!!";
    self.label.textColor = [self.colorOptions objectForKey:colorName];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.title = @"Hello World";
    
    self.descriptions = [[NSArray alloc] initWithObjects:@"Blue", @"Red", @"Green", nil];
    NSArray *colors = [[NSArray alloc] initWithObjects:[UIColor blueColor], [UIColor redColor], [UIColor greenColor], nil];
    self.colorOptions = [[NSDictionary alloc] initWithObjects:colors forKeys:self.descriptions];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)startButtonSelected:(id)sender {
    
    HWColorChoiceViewController *colorChoiceVC = [[HWColorChoiceViewController alloc] initWithNibName:@"HWColorChoiceViewController" bundle:nil];
    colorChoiceVC.datasource = self.descriptions;
    colorChoiceVC.delegate   = self;
    
    [self.navigationController pushViewController:colorChoiceVC animated:YES];
    

}



@end
