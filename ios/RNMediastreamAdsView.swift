//
//  RNMediastreamAdsView.swift
//  RNMediastreamAds
//
//  Created by Carlos Ruiz on 4/29/19.
//  Copyright © 2019 Facebook. All rights reserved.
//

import Foundation

@objc(RNMediastreamAdsView)
class RNMediastreamAdsView: UIView {
  let bannerView = RNMediastreamAdsViewBanner()
  let intersitial = RNMediastreamAdsViewIntersitial()
  override init(frame: CGRect) {
    super.init(frame: frame)
    self.frame = frame
    self.addSubview(bannerView.view)
    self.addSubview(intersitial.view)
  }

  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

  override func layoutSubviews() {
    super.layoutSubviews()
    bannerView.view.frame = self.bounds
    intersitial.view.frame = self.bounds
  }

  @objc(setConfig:)
  func setConfig(config: NSDictionary) {
    if ((config.object(forKey: "type") != nil) && (config.object(forKey: "id") != nil)) {
      if (config.object(forKey: "type") as! String == "banner") {
        bannerView.setup(config.object(forKey: "id") as! String, config.object(forKey: "size") as! String)
      } else if (config.object(forKey: "type") as! String == "interstitial") {
        intersitial.setup(config.object(forKey: "id") as! String)
      }
    }
  }
}
