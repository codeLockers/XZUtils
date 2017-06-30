//
//  ViewController.m
//  XZUtils
//
//  Created by codeLocker on 2017/6/23.
//  Copyright © 2017年 codeLocker. All rights reserved.
//

#import "ViewController.h"
#import "XZMacros.h"
#import "NSData+XZConversion.h"

typedef void (^Block)(void); //定义一个block返回

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *testLab;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    Byte value[13]={0};
    value[0]=0x43;
    value[1]=0x47;
    value[2]=0x01;//命令
    value[3]=0x01;
    
    value[4]=0x08;
    value[5]=0x01;
    value[6]=0x02;
    value[7]=0x03;
    value[8]=0x04;
    value[9]=0x05;
    value[10]=0x06;
    value[11]=0x07;
    value[12]=0x08;
    
    NSData *data = [NSData dataWithBytes:&value length:sizeof(value)];
    XZLog(@"%@",[data xz_hexadecimalString]);
    
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
