//
//  ViewController.m
//  HelloMyShareLineMessage
//
//  Created by LazyScream on 2016/8/3.
//  Copyright © 2016年 LINYUNSHIUAN. All rights reserved.
//

#import "ViewController.h"
#import <Line.h>
@interface ViewController ()
@property (strong, nonatomic) IBOutlet UITextField *textField;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)shareBtPress:(id)sender {
    if (![Line isLineInstalled]) {
        [Line shareText:[NSString stringWithFormat:@"%@",_textField.text]];
    }else{
        [Line openLineInAppStore];
    }
    
}
- (IBAction)shareImageBtPress:(id)sender {
    [Line shareImage:[UIImage imageNamed:@"Unknown.jpeg"]];
}

@end
