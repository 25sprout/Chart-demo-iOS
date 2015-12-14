//
//  ViewController.m
//  iOS Chart Demo by 25sprout
//
//  Created by Kuan L. Chen on 12/14/15.
//  Copyright © 2015 25sprout. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <ChartViewDelegate>

@end

@implementation ViewController

@synthesize months, unitsSolds, barChartView;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // 客製化尚未加入資料的View 訊息
    [self customTextSetting];
    
    // 設定資料
    [self dataInput];
    
    // Function to show barChart
    [self showBarChart];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - functions

// 客製化尚未加入資料的View 訊息
- (void)customTextSetting {
    
    barChartView.noDataText = @"你客製化的訊息";
    barChartView.noDataTextDescription = @"更多詳情";
}

// 設定資料
- (void)dataInput {
    
    months = @[@"Jan", @"Feb", @"Mar", @"Apr", @"May", @"Jun", @"Jul", @"Aug", @"Sep", @"Oct", @"Nov", @"Dec"];
    unitsSolds = @[@20.0f, @4.0f, @6.0f, @3.0f, @12.0f, @16.0f, @4.0f, @18.0f, @2.0f, @4.0f, @5.0f, @4.0f];
}

- (void)showBarChart {
    
    NSMutableArray *dataEntries = [[NSMutableArray alloc] init];
    
    for (int i = 0; i < months.count; i++) {
        
        double unitSold = [[unitsSolds objectAtIndex:i] doubleValue];
        
        BarChartDataEntry *dataEntry = [[BarChartDataEntry alloc] initWithValue:unitSold xIndex:i];
        
        [dataEntries addObject:dataEntry];
    }
    
    BarChartDataSet *barChartDataSet = [[BarChartDataSet alloc] initWithYVals:dataEntries label:@"Unit Sold"];
    
    BarChartData *barChartData = [[BarChartData alloc] initWithXVals:months dataSet:barChartDataSet];
    
    barChartView.data = barChartData;
}



@end
