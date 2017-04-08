%hook DTVFeeConViewController

- (void)showTipView {
    
    %orig;
    
    
        UIButton *_tipSureBtn = MSHookIvar<UIButton *>(self,"_tipSureBtn");
    [_tipSureBtn setTitle:@"老子就是要发车,老子就不充值" forState:UIControlStateHighlighted];

}
- (void)tipviewSureBtnClcik {
    UIView *_tipView = MSHookIvar<UIView *>(self,"_tipView");
    [_tipView.superview removeFromSuperview];
}


%end
