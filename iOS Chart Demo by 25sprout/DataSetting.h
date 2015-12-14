//
//  DataSetting.h
//  iOS Chart Demo by 25sprout
//
//  Created by Kuan L. Chen on 12/14/15.
//  Copyright © 2015 25sprout. All rights reserved.
//

#import <Foundation/Foundation.h>
@import Charts;

@interface DataSetting : NSObject <ChartViewDelegate>

#pragma mark - chart data properties

// for barChart
@property (strong, nonatomic) NSArray *months;
@property (strong, nonatomic) NSArray *unitsSolds;

// for lineChart
@property (strong, nonatomic) NSArray *quarter;
@property (strong, nonatomic) NSArray *avgUnitsSolds;

#pragma mark - chart functions

+ (ChartLimitLine *)coCustomizeSettingWithLimit: (float)litmit withWidth: (float)width;

@end