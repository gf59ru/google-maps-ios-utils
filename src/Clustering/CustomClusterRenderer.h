//
//  CustomClusterRenderer.h
//  GoogleMapsUtils
//
//  Created by Nikolai Borovennikov on 28.02.2020.
//  Copyright © 2020 Google. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GMUDefaultClusterRenderer.h"

NS_ASSUME_NONNULL_BEGIN


typedef enum
{
    MarkerObjStatusNormal,
    MarkerObjStatusPin
}
MarkerObjStatus;

@interface CustomClusterRenderer : GMUDefaultClusterRenderer

@property (nonatomic) MarkerObjStatus tag;

- (void)setIsShowMarkersAndClusters:(BOOL)newValue;

@end

NS_ASSUME_NONNULL_END
