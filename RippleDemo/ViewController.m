//
//  ViewController.m
//  RippleDemo
//
//  Created by admin on 2023/12/20.
//

#import "ViewController.h"
#import "JCNFlashButton.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    JCNFlashButton *flashButton = [[JCNFlashButton alloc] initWithFrame:CGRectMake(100, 200, 260, 260)];
    [flashButton setText:@"测试" withTextColor:[UIColor systemPinkColor]];
    flashButton.flashColor = [UIColor colorWithWhite:0.0f alpha:0.20f];
    flashButton.duration = 5;
    flashButton.backgroundColor = [UIColor cyanColor];
    flashButton.clickBlock = ^{
        NSLog(@"clickBlockclickBlockclickBlock");
    };
    
    
    [self.view addSubview:flashButton];
}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    UITouch *touch = [touches anyObject];
    CGPoint origin = [touch locationInView:self.view];

    float radius = 100;
    float duration = 3;
    float fadeAfter = duration * 0.75f;

    [self.view rippleStartingAt:origin withColor:[UIColor colorWithWhite:0.0f alpha:0.20f] duration:duration radius:radius fadeAfter:fadeAfter clickCallbck:^{
        NSLog(@"touchesEndedtouchesEnded");
    }];
}

@end
