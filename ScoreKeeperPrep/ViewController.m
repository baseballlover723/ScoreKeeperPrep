//
//  ViewController.m
//  ScoreKeeperPrep
//
//  Created by Philip Ross on 1/13/15.
//  Copyright (c) 2015 Philip Ross. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *testTextField;
@property (weak, nonatomic) IBOutlet UITextView *testTextView;

@property (nonatomic) int player1Total;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.testTextView.text = @"";
}

- (IBAction)pressedButton:(id)sender {
    NSLog(@"Pressed Button");
    NSString* textInTextField = self.testTextField.text;
    
    if (self.testTextView.text.length > 0) {
    self.testTextView.text = [NSString stringWithFormat:@"%@\n%@", self.testTextView.text, textInTextField];
    } else {
        self.testTextView.text =textInTextField;
    }
    NSLog(textInTextField);
    int textAsInteger = [textInTextField intValue];
    self.player1Total += textAsInteger;
    self.testTextView.text = [NSString stringWithFormat:@"%@\n%d", textInTextField, self.player1Total];
    NSLog(self.testTextView.text);
//    [self.view endEditing:YES];
}

@end
