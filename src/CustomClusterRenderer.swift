//
//  CustomClusterRenderer.swift
//  yamagoo-ios-app
//
//  Created by Artyom Popov on 02.08.2018.
//  Copyright © 2018 Artyom Popov. All rights reserved.
//

import UIKit

public enum MarkerObjStatus {
    case normal
    case pin
}

class CustomClusterRenderer: GMUDefaultClusterRenderer {

    private var isShow = true
    var tag: MarkerObjStatus = .normal

    override init(mapView: GMSMapView, clusterIconGenerator iconGenerator: GMUClusterIconGenerator) {
        super.init(mapView: mapView, clusterIconGenerator: iconGenerator)
        animatesClusters = true
    }

    override func renderClusters(_ clusters: [GMUCluster]) {
        if isShow {
            super.renderClusters(clusters)
        } else {
            clearClusters()
        }
    }

    override func update() {
        if isShow {
            super.update()
        } else {
            clearClusters()
        }
    }

    func isShowMarkersAndClusters(_ isShow : Bool) {
        self.isShow = isShow

        if !isShow {
            clearClusters()
        }
    }

    private func clearClusters() {
        for marker in markers as! [GMSMarker] {
            marker.opacity = 0.0
            marker.isTappable = false
        }
    }
}
