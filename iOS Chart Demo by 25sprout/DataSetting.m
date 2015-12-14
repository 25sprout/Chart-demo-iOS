//
//  DataSetting.m
//  iOS Chart Demo by 25sprout
//
//  Created by Kuan L. Chen on 12/14/15.
//  Copyright © 2015 25sprout. All rights reserved.
//

#import "DataSetting.h"


@implementation DataSetting

@synthesize months, unitsSolds;


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
    
    months = @[@"Jan", @"Feb", @"Mar", @"Apr", @"May", @"Jun", @"Jul", @"Aug", @"Sep", @"Oct", @"Nov", @"Dec"];
    
    unitsSolds = @[@20.0f, @4.0f, @6.0f, @3.0f, @12.0f, @16.0f, @4.0f, @18.0f, @2.0f, @4.0f, @5.0f, @4.0f];
}

@end
