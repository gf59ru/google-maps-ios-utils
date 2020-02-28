//
//  CustomClusterRenderer.m
//  GoogleMapsUtils
//
//  Created by Nikolai Borovennikov on 28.02.2020.
//  Copyright © 2020 Google. All rights reserved.
//

@import GoogleMaps;

#import "CustomClusterRenderer.h"

@implementation CustomClusterRenderer
{
    BOOL isShow;
}

- (instancetype)initWithMapView:(GMSMapView *)mapView clusterIconGenerator:(id<GMUClusterIconGenerator>)iconGenerator
{
    self = [super initWithMapView:mapView clusterIconGenerator:iconGenerator];
    if (self != nil)
    {
        self.animatesClusters = YES;
    }
    return self;
}

- (void)renderClusters:(NSArray<id<GMUCluster>> *)clusters
{
    if (isShow)
    {
        [super renderClusters:clusters];
    }
    else
    {
        [self clearClusters];
    }

}

- (void)update
{
    if (isShow)
    {
        [super update];
    }
    else
    {
        [self clearClusters];
    }
}

- (void)setIsShowMarkersAndClusters:(BOOL)newValue
{
    isShow = newValue;

    if (!isShow)
    {
        [self clearClusters];
    }
}

- (void)clearClusters
{
    for (GMSMarker *marker in self.markers)
    {
        marker.opacity = 0.0;        
        marker.tappable = false;
    }
}

@end
