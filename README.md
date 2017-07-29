# FontAwesome
本项目通过OC来演示如果使用矢量图标库FontAwesome

通过给UIFont和NSString添加分类来进行更加简化的调用
    NSString *weiboImageStr = [NSString fontAwesomeIconStringForIconIdentifier:@"fa-weibo"];
    UIFont * font = [UIFont fontAwesomeFontOfSize:18];
    NSMutableAttributedString *weiboImageAttrStr = [[NSMutableAttributedString alloc] initWithString:weiboImageStr attributes:@{NSFontAttributeName : font}];
    NSString *weiboStr = @" 新浪微博";
    NSMutableAttributedString *weiboAttrStr = [[NSMutableAttributedString alloc] initWithString:weiboStr attributes:@{NSFontAttributeName : [UIFont systemFontOfSize:14], NSForegroundColorAttributeName: [UIColor blackColor]}];
    [weiboImageAttrStr appendAttributedString:weiboAttrStr];
    self.label1.attributedText = weiboImageAttrStr;
