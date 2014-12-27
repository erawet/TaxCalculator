//
//  ViewController.m
//  TaxCalculator
//
//  Created by Don Wettasinghe on 12/22/14.
//  Copyright (c) 2014 Don Wettasinghe. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *priceTextField;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedControl;
@property (weak, nonatomic) IBOutlet UIButton *onCalculateButtonTapped;
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;

@property double caTax;
@property double chiTax;
@property double nyTax;

- (IBAction)calTax:(UIButton *)sender;


@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    _caTax=7.5;
    _chiTax=9.25;
    _nyTax=4.5;
    
}

- (IBAction)calTax:(UIButton *)sender {
    
    NSNumberFormatter *currencyFormatter=[[NSNumberFormatter alloc]init];
    [currencyFormatter setNumberStyle:NSNumberFormatterCurrencyStyle];
    
    if (_segmentedControl.selectedSegmentIndex==0) {
       
        _resultLabel.text = [NSString stringWithFormat:@"%.02f" ,  _caTax * [_priceTextField.text doubleValue] ];
        
    } else if (_segmentedControl.selectedSegmentIndex==1){
        _resultLabel.text = [NSString stringWithFormat:@"%.02f" ,  _chiTax * [_priceTextField.text doubleValue] ];
        
    } else {
        _resultLabel.text = [NSString stringWithFormat:@"%.02f" ,  _nyTax * [_priceTextField.text doubleValue] ];
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

@end
