//
//  ViewController.m
//  iOS Chart Demo by 25sprout
//
//  Created by Kuan L. Chen on 12/14/15.
//  Copyright © 2015 25sprout. All rights reserved.
//

#import "BarChartViewController.h"


@interface BarChartViewController () <ChartViewDelegate>

@end


@implementation BarChartViewController

@synthesize barChartView;


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.navigationItem.title = @"Bar Chart";
    
    // 客製化尚未加入資料的View 訊息
    [self customTextSetting];
    
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

// Function to show barChart
- (void)showBarChart {
    
    DataSetting *dataSetting = [[DataSetting alloc] init];
    
    NSMutableArray *dataEntries = [[NSMutableArray alloc] init];
    
    for (int i = 0; i < dataSetting.months.count; i++) {
        
        double unitSold = [[dataSetting.unitsSolds objectAtIndex:i] doubleValue];
        
        BarChartDataEntry *dataEntry = [[BarChartDataEntry alloc] initWithValue:unitSold xIndex:i];
        
        [dataEntries addObject:dataEntry];
    }
    
    BarChartDataSet *barChartDataSet = [[BarChartDataSet alloc] initWithYVals:dataEntries label:@"Unit Sold"];
    
    BarChartData *barChartData = [[BarChartData alloc] initWithXVals:dataSetting.months dataSet:barChartDataSet];
    
    barChartView.data = barChartData;
}

@end
