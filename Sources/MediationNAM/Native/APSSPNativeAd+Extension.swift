//
//  APSSPNativeAd+Extension.swift
//  MediationNAM
//
//  Created by Odin.송황호 on 5/28/24.
//

import UIKit

import APSSPSDK

extension APSSPNativeAd {
    public func bindNAMRenderer(renderer: APSSPNAMNativeAdRenderer) {
        self.namRenderer = renderer
    }
}
