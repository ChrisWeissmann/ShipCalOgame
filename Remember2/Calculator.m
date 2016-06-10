//
//  Calculator.m
//  Remember2
//
//  Created by Christian Weißmann on 10.06.16.
//  Copyright © 2016 Christian Weißmann. All rights reserved.
//

#import "Calculator.h"

@implementation Calculator



- (NSMutableDictionary *)calculateTheShips:(int)met Kri:(int)kris Deut:(int)deut {
    
    NSMutableDictionary *ships = [[NSMutableDictionary alloc] init];
    
    int gt = (met + kris + deut ) /25;
    int kt = (met + kris +  deut)/5;
    [ships setObject:[NSNumber numberWithInt:gt] forKey:@"gt"];
    [ships setObject:[NSNumber numberWithInt:kt] forKey:@"kt"];
    
    return ships;
    
}

@end
