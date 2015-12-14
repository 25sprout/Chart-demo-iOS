//
//  DataSetting.h
//  iOS Chart Demo by 25sprout
//
//  Created by Kuan L. Chen on 12/14/15.
//  Copyright © 2015 25sprout. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface DataSetting : NSObject

#pragma mark - chart data properties

@property (strong, nonatomic) NSArray *months;
@property (strong, nonatomic) NSArray *unitsSolds;


#pragma mark - chart functions

- (void)dataInput ;

@end