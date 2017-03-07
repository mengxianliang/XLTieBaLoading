//
//  XLTieBarLoading.m
//  XLTieBarLoadingDemo
//
//  Created by MengXianLiang on 2017/3/7.
//  Copyright © 2017年 MengXianLiang. All rights reserved.
//

#import "XLTieBarLoading.h"

@interface XLTieBarLoading ()
{
    CADisplayLink *_disPlayLink;
    /**
     曲线的振幅
     */
    CGFloat _waveAmplitude;
    /**
     曲线角速度
     */
    CGFloat _wavePalstance;
    /**
     曲线初相
     */
    CGFloat _waveX;
    /**
     曲线偏距
     */
    CGFloat _waveY;
    /**
     曲线移动速度
     */
    CGFloat _waveMoveSpeed;
    
    //背景发暗的图片 蓝底白字
    UIImageView *_imageView1;
    
    //前面正常显示的图片 蓝底白字
    UIImageView *_imageView2;
}
@end

@implementation XLTieBarLoading

-(instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        [self buildUI];
        [self buildData];
    }
    return self;
}

-(void)buildUI
{
    //画了个圆
    self.layer.cornerRadius = self.bounds.size.width/2.0f;
    self.layer.masksToBounds = true;
    
    //底部图片白底蓝字
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:self.bounds];
    imageView.image = [UIImage imageNamed:@"1"];
    [self addSubview:imageView];
    
    //上层图片蓝底白字
    _imageView1 = [[UIImageView alloc] initWithFrame:self.bounds];
    _imageView1.image = [UIImage imageNamed:@"2"];
    _imageView1.backgroundColor = [UIColor colorWithRed:51/255.0f green:170/255.0f blue:255/255.0f alpha:1];
    [self addSubview:_imageView1];
    UIView *view = [[UIView alloc] initWithFrame:_imageView1.bounds];
    view.backgroundColor = [UIColor colorWithWhite:0 alpha:0.3];
    [_imageView1 addSubview:view];
    
    _imageView2 = [[UIImageView alloc] initWithFrame:self.bounds];
    _imageView2.image = [UIImage imageNamed:@"2"];
    _imageView2.backgroundColor = [UIColor colorWithRed:51/255.0f green:170/255.0f blue:255/255.0f alpha:1];
    [self addSubview:_imageView2];
}

//初始化数据
-(void)buildData
{
    //振幅
    _waveAmplitude = 3;
    //角速度
    _wavePalstance = 0.12;
    //偏距
    _waveY = self.bounds.size.height;
    //初相
    _waveX = 0;
    //x轴移动速度
#if TARGET_IPHONE_SIMULATOR
    _waveMoveSpeed = 0.3;
#elif TARGET_OS_IPHONE
    _waveMoveSpeed = 0.15;
#endif
    
    _waveY = self.bounds.size.height/2.0f;
    
    //以屏幕刷新速度为周期刷新曲线的位置
    _disPlayLink = [CADisplayLink displayLinkWithTarget:self selector:@selector(updateWave)];
    [_disPlayLink addToRunLoop:[NSRunLoop mainRunLoop] forMode:NSRunLoopCommonModes];
}

-(void)updateWave
{
    _waveX -= _waveMoveSpeed;
    [self updateWave1];
    [self updateWave2];
}

-(void)updateWave1
{
    //波浪宽度
    CGFloat waterWaveWidth = self.bounds.size.width;
    //初始化运动路径
    CGMutablePathRef path = CGPathCreateMutable();
    //设置起始位置
    CGPathMoveToPoint(path, nil, 0, _waveY);
    //初始化波浪其实Y为偏距
    CGFloat y = _waveY;
    //正弦曲线公式为： y=Asin(ωx+φ)+k;
    for (float x = 0.0f; x <= waterWaveWidth ; x++) {
        y = _waveAmplitude * sin(_wavePalstance * x + _waveX + 1) + _waveY;
        CGPathAddLineToPoint(path, nil, x, y);
    }
    //填充底部颜色
    CGPathAddLineToPoint(path, nil, waterWaveWidth, self.bounds.size.height);
    CGPathAddLineToPoint(path, nil, 0, self.bounds.size.height);
    CGPathCloseSubpath(path);
    CAShapeLayer *layer = [CAShapeLayer layer];
    layer.path = path;
    _imageView1.layer.mask = layer;
    CGPathRelease(path);
}

-(void)updateWave2
{
    //波浪宽度
    CGFloat waterWaveWidth = self.bounds.size.width;
    //初始化运动路径
    CGMutablePathRef path = CGPathCreateMutable();
    //设置起始位置
    CGPathMoveToPoint(path, nil, 0, _waveY);
    //初始化波浪其实Y为偏距
    CGFloat y = _waveY;
    //正弦曲线公式为： y=Asin(ωx+φ)+k;
    for (float x = 0.0f; x <= waterWaveWidth ; x++) {
        y = _waveAmplitude * sin(_wavePalstance * x + _waveX) + _waveY;
        CGPathAddLineToPoint(path, nil, x, y);
    }
    //添加终点路径、填充底部颜色
    CGPathAddLineToPoint(path, nil, waterWaveWidth, self.bounds.size.height);
    CGPathAddLineToPoint(path, nil, 0, self.bounds.size.height);
    CGPathCloseSubpath(path);
    CAShapeLayer *layer = [CAShapeLayer layer];
    layer.path = path;
    _imageView2.layer.mask = layer;
    CGPathRelease(path);
}

-(void)dealloc
{
    if (_disPlayLink) {
        [_disPlayLink invalidate];
        _disPlayLink = nil;
    }
    
    if (_imageView1) {
        [_imageView1 removeFromSuperview];
        _imageView1 = nil;
    }
    if (_imageView2) {
        [_imageView2 removeFromSuperview];
        _imageView2 = nil;
    }
}

@end
