//
//  ViewController.m
//  XZUtils
//
//  Created by codeLocker on 2017/6/23.
//  Copyright © 2017年 codeLocker. All rights reserved.
//

#import "ViewController.h"
#import "NSAttributedString+XZGenerate.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *testLab;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    NSAttributedString *string = [[NSAttributedString alloc] initWithString:@"aaa"];
//    NSAttributedString *b = [string xz_setColor:[UIColor redColor] inRange:NSMakeRange(0, 1)];
//    NSLog(@"%@",NSStringFromClass([b class]));
//    self.testLab.attributedText = b;
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
