//
//  ViewController.m
//  Remember2
//
//  Created by Christian Weißmann on 10.06.16.
//  Copyright © 2016 Christian Weißmann. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
    
    //set all values to 0
    [self resetFirstValues];
    [self resetSecondValues];

    
    
    
}

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}



- (void)resetFirstValues {
    
    [self.labelGT1 setStringValue:@"0"];
    [self.labelKT1 setStringValue:@"0"];
    
    [self.textfieldMetall1 setIntValue:0];
    [self.textfieldKristall1 setIntValue:0];
    [self.textfieldDeut1 setIntValue:0];
    
}

- (void)resetSecondValues {
    
    
    [self.labelGT2 setStringValue:@"0"];
    [self.labelKT2 setStringValue:@"0"];
    
    [self.textfieldMetall2 setIntValue:0];
    [self.textfieldKristall2 setIntValue:0];
    [self.textfieldDeut2 setIntValue:0];
}



- (NSMutableDictionary *)calculateTheShips:(int)met Kri:(int)kris Deut:(int)deut {
    
    NSMutableDictionary *ships = [[NSMutableDictionary alloc] init];
    
    float sum = (met + kris +deut);
    
    float gt = ceilf((sum/25000));

    float kt = ceil(sum/5000);
    [ships setObject:[NSNumber numberWithFloat:gt] forKey:@"gt"];
    [ships setObject:[NSNumber numberWithInt:kt] forKey:@"kt"];
    
    return ships;
    
}

- (void) setShips1 {
    
    int met = [self.textfieldMetall1 intValue];
    int kris = [self.textfieldKristall1 intValue];
    int deut = [self.textfieldDeut1 intValue];
    
    NSMutableDictionary *ships = [[NSMutableDictionary alloc] init];
    ships = [self calculateTheShips:met Kri:kris Deut:deut];
    
    [self.labelGT1 setStringValue:ships[@"gt"]];
    [self.labelKT1 setStringValue:ships[@"kt"]];
}

- (void)setShips2 {
    
    int met = [self.textfieldMetall2 intValue];
    int kris = [self.textfieldKristall2 intValue];
    int deut = [self.textfieldDeut2 intValue];
    
    NSMutableDictionary *ships = [[NSMutableDictionary alloc] init];
    ships = [self calculateTheShips:met Kri:kris Deut:deut];
    
    [self.labelGT2 setStringValue:ships[@"gt"]];
    [self.labelKT2 setStringValue:ships[@"kt"]];
    
}

- (IBAction)resetFirst:(id)sender {
    [self resetFirstValues];
}

- (IBAction)resetSecond:(id)sender {
    [self resetSecondValues];
}

- (IBAction)actionMetall1:(id)sender {
    [self setShips1];
}

- (IBAction)actionKris1:(id)sender {
    
    [self setShips1];
}

- (IBAction)actionDeut1:(id)sender {
    [self setShips1];
}

- (IBAction)actionMetall2:(id)sender {
    [self setShips2];
}

- (IBAction)actionKris2:(id)sender {
    [self setShips2];
}

- (IBAction)actionDeut2:(id)sender {
    [self setShips2];
}
@end
