//
//  ViewController.m
//  LaunchMonitor
//
//  Created by 酷酷的哀殿 on 2021/2/14.
//

#import "ViewController.h"
#import "KKMonitor.h"

@interface KKView : UIView

@end

@implementation KKView

#pragma mark - event

- (void)setNeedsLayout {
    [super setNeedsLayout];
    [KKMonitor printWithDesc:[NSString stringWithFormat:@"KKView 监控方案 = %@ ", NSStringFromSelector(_cmd)]];
}

-(void)setNeedsDisplayInRect:(CGRect)r {
    [super setNeedsDisplayInRect:r];
    [KKMonitor printWithDesc:[NSString stringWithFormat:@"KKView 监控方案 = %@ ", NSStringFromSelector(_cmd)]];
}

- (void)setNeedsDisplay{
    [super setNeedsDisplay];
    [KKMonitor printWithDesc:[NSString stringWithFormat:@"KKView 监控方案 = %@ ", NSStringFromSelector(_cmd)]];
}

#pragma mark - commit - layout

- (void)layoutSubviews {
    [super layoutSubviews];
    [KKMonitor printWithDesc:[NSString stringWithFormat:@"KKView 监控方案 = %@ ", NSStringFromSelector(_cmd)]];
}

#pragma mark - commit - draw

- (void)drawRect:(CGRect)rect {
    [KKMonitor printWithDesc:[NSString stringWithFormat:@"KKView 监控方案 = %@ ", NSStringFromSelector(_cmd)]];
}

@end

@interface ViewController ()

@end

@implementation ViewController

#pragma mark - event

- (void)viewDidLoad {
    [super viewDidLoad];
    [KKMonitor printWithDesc:[NSString stringWithFormat:@"普通方案：= %@ ", NSStringFromSelector(_cmd)]];
    // 添加背景色是 红色 的视图进行测试
    KKView *redView = [[KKView alloc] init];
    redView.frame = CGRectMake(100, 100, 100, 100);
    redView.backgroundColor = [UIColor redColor];
    [self.view addSubview:redView];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [KKMonitor printWithDesc:[NSString stringWithFormat:@"普通方案：= %@ ", NSStringFromSelector(_cmd)]];
}

#pragma mark - runloop 通知观察者

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    [KKMonitor printWithDesc:[NSString stringWithFormat:@"普通方案：= %@ ", NSStringFromSelector(_cmd)]];
}

@end
