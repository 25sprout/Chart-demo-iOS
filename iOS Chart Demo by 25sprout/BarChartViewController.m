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
    barChartView.descriptionText = @"這個是Bar Chart 圖表";
    barChartView.descriptionTextColor = [UIColor colorWithRed: 10/255.f green: 156/255.f blue:90/255.f alpha:1.f];
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
    
    // 更多設定參考範例
    [self moreCustomizeSetting];
}

- (void)moreCustomizeSetting {
    
    // 邊框設定
    [barChartView setDrawBordersEnabled:YES];
    [barChartView setBorderColor:[UIColor colorWithRed:156/255.f green:16/255.f blue:56/255.f alpha:1.f]];
    [barChartView setBorderLineWidth:5.f];
    
    // 增加限制線
    [barChartView.rightAxis addLimitLine:[DataSetting coCustomizeSettingWithLimitLine:4 withWidth:2]];
}

@end
