//
//  ViewController.m
//  XZUtils
//
//  Created by codeLocker on 2017/6/23.
//  Copyright © 2017年 codeLocker. All rights reserved.
//

#import "ViewController.h"
#import "NSAttributedString+XZGenerate.h"
#import "XZMacros.h"
#import "UIScreen+XZSize.h"
#import "UIScreen+XZSize.h"
typedef void (^Block)(void); //定义一个block返回

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *testLab;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    Block a = ^{
//        NSLog(@"xuzhang");
//    };
//    a = nil;

//    NSLog(@"%f",[UIScreen mainScreen].scale);
    
    if ([UIScreen mainScreen].xz_isInch_4_7) {
        NSLog(@"ok");
    }
    if ([UIScreen mainScreen].xz_isZoomModel) {
        NSLog(@"fafaf");
    }
    
    
//    xz_block_safe(a)
//    xz_dispatch_main_async_safe(a)
//    xz_block_safe(a)
    
//    NSLog(@"%@",NSStringFromCGSize([UIScreen mainScreen].xz_size));
    
    
    
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
