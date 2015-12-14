//
//  DataSetting.m
//  iOS Chart Demo by 25sprout
//
//  Created by Kuan L. Chen on 12/14/15.
//  Copyright © 2015 25sprout. All rights reserved.
//

#import "DataSetting.h"


@implementation DataSetting

@synthesize months, unitsSolds, quarter, avgUnitsSolds;


- (id)init {
    
    self = [super init] ;
    
    if ( self ) {
        
        [self dataInput] ;
    }
    
    return self ;
}


#pragma mark - functions

// 設定資料
- (void)dataInput {
    
    
    // for barChart
    months = @[@"Jan", @"Feb", @"Mar", @"Apr", @"May", @"Jun", @"Jul", @"Aug", @"Sep", @"Oct", @"Nov", @"Dec"];
    
    unitsSolds = @[@20.0f, @4.0f, @6.0f, @3.0f, @12.0f, @16.0f, @4.0f, @18.0f, @2.0f, @4.0f, @5.0f, @4.0f];
    
    // for lineChart
    quarter = @[@"1Q", @"2Q", @"3Q", @"4Q"];
    
    avgUnitsSolds = @[@10.0f, @10.5f, @12.0f, @4.3f];
}

// 可一起使用的客製化功能

+ (ChartLimitLine *)coCustomizeSettingWithLimitLine: (float)litmit withWidth: (float)width {
    
    // 增加限制線
    ChartLimitLine *limitLine = [[ChartLimitLine alloc] initWithLimit: litmit label:@"銷售目標"];
    limitLine.lineColor = [UIColor colorWithRed:109/255.f green:195/255.f blue:99/255.f alpha:1.f];
    limitLine.lineWidth = width;
    
    return limitLine;
}

@end
