//
//  ViewController.h
//  iOS Chart Demo by 25sprout
//
//  Created by Kuan L. Chen on 12/14/15.
//  Copyright © 2015 25sprout. All rights reserved.
//

#import <UIKit/UIKit.h>
@import Charts;

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet BarChartView *barChartView;


#pragma mark - chart data properties
@property (strong, nonatomic) NSArray *months;
@property (strong, nonatomic) NSArray *unitsSolds;

@end

