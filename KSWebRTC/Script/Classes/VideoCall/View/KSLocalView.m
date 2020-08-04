//
//  KSLocalView.m
//  KSWebRTC
//
//  Created by saeipi on 2020/8/2.
//  Copyright © 2020 saeipi. All rights reserved.
//

#import "KSLocalView.h"
#import "UIView+Category.h"

@interface KSLocalView()

@property(nonatomic,weak)AVCaptureVideoPreviewLayer *previewLayer;

@end

@implementation KSLocalView

- (instancetype)initWithFrame:(CGRect)frame scale:(KSScale)scale mode:(KSContentMode)mode {
    if (self = [super initWithFrame:frame]) {
        [self initKit];
        [self updatePreviewWidth:frame.size.width height:frame.size.height scale:scale mode:mode];
    }
    return self;
}

- (void)initKit {
    AVCaptureVideoPreviewLayer *previewLayer = [[AVCaptureVideoPreviewLayer alloc] init];
    previewLayer.videoGravity = AVLayerVideoGravityResizeAspectFill;//填充模式
    _previewLayer = previewLayer;
    [self.layer addSublayer:previewLayer];
}

- (void)setLocalViewSession:(AVCaptureSession *)session {
    _previewLayer.session = session;
}

- (void)updatePreviewWidth:(CGFloat)width height:(CGFloat)height scale:(KSScale)scale mode:(KSContentMode)mode {
     _previewLayer.frame = [self rectOfSuperFrame:self.frame width:width height:height scale:scale mode:mode];
}

@end
