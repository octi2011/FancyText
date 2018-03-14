//
//  ViewController.m
//  FancyText
//
//  Created by Duminica Octavian on 14/03/2018.
//  Copyright © 2018 Duminica Octavian. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    fontSize = 30;
    state = false;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)enterText:(id)sender {
    
    self.label.text = self.textField.text;
}

- (IBAction)red:(id)sender {
    self.label.textColor = [UIColor redColor];
}

- (IBAction)blue:(id)sender {
    self.label.textColor = [UIColor blueColor];
}

- (IBAction)green:(id)sender {
    self.label.textColor = [UIColor colorWithRed:0.0/255.0 green:124.0/255.0 blue:29.0/255.0 alpha:1.0];
}

- (IBAction)font1:(id)sender {
    
    [self.label setFont:[UIFont fontWithName:@"Verdana" size:fontSize]];
}

- (IBAction)font2:(id)sender {
    [self.label setFont:[UIFont fontWithName:@"LemonMilk" size:fontSize]];
}

- (IBAction)font3:(id)sender {
    [self.label setFont:[UIFont fontWithName:@"Moon Flower" size:fontSize]];
}

- (IBAction)font4:(id)sender {
    [self.label setFont:[UIFont fontWithName:@"SugarstyleMillenial-Regular" size:fontSize]];
}

- (IBAction)shadow:(id)sender {
    if(state == true) {
        self.label.layer.shadowOpacity = 0;
        
        state = false;
        
        [self.shadowButton setTitle:@"Shadow" forState:UIControlStateNormal];
    } else {
        self.label.layer.shadowColor = [[UIColor blackColor] CGColor];
        self.label.layer.shadowOpacity = 0.5;
        self.label.layer.shadowRadius = 1.0f;
        self.label.layer.shadowOffset = CGSizeMake(2, 2);
        
        state = true;
        
        [self.shadowButton setTitle:@"No Shadow" forState:UIControlStateNormal];
    }
}

- (IBAction)small:(id)sender {
    fontSize = 30;
    self.label.font = [self.label.font fontWithSize:fontSize];
}

- (IBAction)medium:(id)sender {
    fontSize = 50;
    self.label.font = [self.label.font fontWithSize:fontSize];
}

- (IBAction)large:(id)sender {
    fontSize = 100;
    self.label.font = [self.label.font fontWithSize:fontSize];
}
@end
