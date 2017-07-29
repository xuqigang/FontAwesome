//
//  ViewController.m
//  FontAwesome
//
//  Created by Cjker on 2017/7/29.
//  Copyright © 2017年 xuqigang. All rights reserved.
//

#import "ViewController.h"
#import "NSString+FontAwesome.h"
#import "UIFont+FontAwesome.h"
#import "UIImage+FontAwesome.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label1;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self fontWesomeLabel];
    [self fontWesomeImageView];
}
//UILabel演示
- (void) fontWesomeLabel
{
    NSString *weiboImageStr = [NSString fontAwesomeIconStringForIconIdentifier:@"fa-weibo"];
    UIFont * font = [UIFont fontAwesomeFontOfSize:18];
    NSMutableAttributedString *weiboImageAttrStr = [[NSMutableAttributedString alloc] initWithString:weiboImageStr attributes:@{NSFontAttributeName : font}];
    NSString *weiboStr = @" 新浪微博";
    NSMutableAttributedString *weiboAttrStr = [[NSMutableAttributedString alloc] initWithString:weiboStr attributes:@{NSFontAttributeName : [UIFont systemFontOfSize:14], NSForegroundColorAttributeName: [UIColor blackColor]}];
    [weiboImageAttrStr appendAttributedString:weiboAttrStr];
    self.label1.attributedText = weiboImageAttrStr;
}

//UIImageView演示
- (void) fontWesomeImageView
{
    UIImage * image = [UIImage imageWithIcon:@"fa-plug" backgroundColor:[UIColor clearColor] iconColor:[UIColor blackColor] andSize:CGSizeMake(15, 15)];
    self.imageView.image = image;
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
