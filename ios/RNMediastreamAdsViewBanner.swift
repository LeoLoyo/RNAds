//
//  RNMediastreamAdsViewBanner.swift
//  RNMediastreamAds
//
//  Created by Carlos Ruiz on 4/29/19.
//  Copyright © 2019 Facebook. All rights reserved.
//

import Foundation
import GoogleMobileAds

class RNMediastreamAdsViewBanner: UIViewController, GADBannerViewDelegate {
  var bannerView: DFPBannerView!
  var adsSizes: NSDictionary = [
    "BANNER" : kGADAdSizeBanner,
    "LARGE_BANNER" : kGADAdSizeLargeBanner,
    "MEDIUM_RECTANGLE": kGADAdSizeMediumRectangle,
    "FULL_BANNER": kGADAdSizeFullBanner,
    "LEADERBOARD": kGADAdSizeLeaderboard
    ]

  // In case we need a custom ad size
  // let adSize = GADAdSizeFromCGSize(CGSize(width: 300, height: 50))

  override func viewDidLoad() {
    super.viewDidLoad()
  }

  func addBannerViewToView(_ bannerView: DFPBannerView) {
    bannerView.translatesAutoresizingMaskIntoConstraints = false
    view.addSubview(bannerView)
    view.addConstraints(
      [NSLayoutConstraint(item: bannerView,
                          attribute: .bottom,
                          relatedBy: .equal,
                          toItem: bottomLayoutGuide,
                          attribute: .top,
                          multiplier: 1,
                          constant: 0),
       NSLayoutConstraint(item: bannerView,
                          attribute: .centerX,
                          relatedBy: .equal,
                          toItem: view,
                          attribute: .centerX,
                          multiplier: 1,
                          constant: 0)
      ])
  }

  open func setup(_ id: String, _ size: String) {
    bannerView = DFPBannerView(adSize: adsSizes.object(forKey: size) as! GADAdSize)
    addBannerViewToView(bannerView)
    bannerView.adUnitID = id
    bannerView.rootViewController = self
    bannerView.load(DFPRequest())
    bannerView.delegate = self
  }

  /// Tells the delegate an ad request loaded an ad.
  func adViewDidReceiveAd(_ bannerView: GADBannerView) {
    print("adViewDidReceiveAd")
  }

  /// Tells the delegate an ad request failed.
  func adView(_ bannerView: GADBannerView,
              didFailToReceiveAdWithError error: GADRequestError) {
    print("adView:didFailToReceiveAdWithError: \(error.localizedDescription)")
  }

  /// Tells the delegate that a full-screen view will be presented in response
  /// to the user clicking on an ad.
  func adViewWillPresentScreen(_ bannerView: GADBannerView) {
    print("adViewWillPresentScreen")
  }

  /// Tells the delegate that the full-screen view will be dismissed.
  func adViewWillDismissScreen(_ bannerView: GADBannerView) {
    print("adViewWillDismissScreen")
  }

  /// Tells the delegate that the full-screen view has been dismissed.
  func adViewDidDismissScreen(_ bannerView: GADBannerView) {
    print("adViewDidDismissScreen")
  }

  /// Tells the delegate that a user click will open another app (such as
  /// the App Store), backgrounding the current app.
  func adViewWillLeaveApplication(_ bannerView: GADBannerView) {
    print("adViewWillLeaveApplication")
  }
}
