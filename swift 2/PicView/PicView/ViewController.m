//
//  ViewController.m
//  PicView
//
//  Created by 周佳兴 on 16/5/28.
//  Copyright © 2016年 周佳兴. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIDatePicker *datePicer = [[UIDatePicker alloc]init];
    
    datePicer.datePickerMode = UIDatePickerModeCountDownTimer;
    
    [datePicer addTarget:self action:@selector(datePicer) forControlEvents:UIControlEventValueChanged];
    datePicer.frame = CGRectMake(0, 100, self.view.bounds.size.width, 200);
    [self.view addSubview:datePicer];
}

-(void)datePicer{

}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
