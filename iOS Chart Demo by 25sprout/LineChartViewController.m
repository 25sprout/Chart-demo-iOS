//
//  LineChartViewController.m
//  iOS Chart Demo by 25sprout
//
//  Created by Kuan L. Chen on 12/14/15.
//  Copyright © 2015 25sprout. All rights reserved.
//

#import "LineChartViewController.h"

@interface LineChartViewController () <ChartViewDelegate>

@end


@implementation LineChartViewController

@synthesize lineChartView;


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self showLineChart];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

// Function to show lineChart
- (void)showLineChart {
    
    DataSetting *dataSetting = [[DataSetting alloc] init];
    
    NSMutableArray *dataEntries = [[NSMutableArray alloc] init];
    
    for (int i = 0; i < dataSetting.months.count; i++) {
        
        double unitSold = [[dataSetting.unitsSolds objectAtIndex:i] doubleValue];
        
        ChartDataEntry *dataEntry = [[ChartDataEntry alloc] initWithValue:unitSold xIndex:i];
        
        [dataEntries addObject:dataEntry];
    }
    
    LineChartDataSet *lineChartDataSet = [[LineChartDataSet alloc] initWithYVals:dataEntries label:@"Unit Sold"];
    
    LineChartData *lineChartData = [[LineChartData alloc] initWithXVals:dataSetting.months dataSet:lineChartDataSet];
    
    lineChartView.data = lineChartData;
}

@end
