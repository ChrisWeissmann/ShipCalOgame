//
//  ViewController.h
//  Remember2
//
//  Created by Christian Weißmann on 10.06.16.
//  Copyright © 2016 Christian Weißmann. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface ViewController : NSViewController
@property (weak) IBOutlet NSTextField *textfieldMetall1;
@property (weak) IBOutlet NSTextField *textfieldKristall1;
@property (weak) IBOutlet NSTextField *textfieldDeut1;

@property (weak) IBOutlet NSTextField *labelGT1;
@property (weak) IBOutlet NSTextField *labelKT1;




@property (weak) IBOutlet NSTextField *textfieldMetall2;
@property (weak) IBOutlet NSTextField *textfieldKristall2;
@property (weak) IBOutlet NSTextFieldCell *textfieldDeut2;

@property (weak) IBOutlet NSTextField *labelGT2;
@property (weak) IBOutlet NSTextField *labelKT2;


- (IBAction)resetFirst:(id)sender;
- (IBAction)resetSecond:(id)sender;

- (IBAction)actionMetall1:(id)sender;
- (IBAction)actionKris1:(id)sender;
- (IBAction)actionDeut1:(id)sender;


- (IBAction)actionMetall2:(id)sender;
- (IBAction)actionKris2:(id)sender;
- (IBAction)actionDeut2:(id)sender;




@end

