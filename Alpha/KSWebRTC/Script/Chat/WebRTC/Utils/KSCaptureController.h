//
//  KSCaptureController.h
//  KSWebRTC
//
//  Created by saeipi on 2020/7/21.
//  Copyright © 2020 saeipi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface KSCaptureController : NSObject

- (void)startCapture;
- (void)stopCapture;
- (void)switchCamera;

@end
