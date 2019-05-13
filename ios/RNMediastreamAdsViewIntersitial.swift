//
//  RNMediastreamAdsViewIntersitial.swift
//  RNMediastreamAds
//
//  Created by Carlos Ruiz on 4/30/19.
//  Copyright © 2019 Facebook. All rights reserved.
//

import Foundation
import GoogleMobileAds

class RNMediastreamAdsViewIntersitial: UIViewController {
  var intersitialView: GADInterstitial!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    let button = UIButton()
    button.backgroundColor = UIColor.gray
    button.frame.size.width = 200
    button.frame.size.height = 50
    button.center = self.view.center
    button.addTarget(self, action: "buttonClicked:", for: .touchUpInside)
    view.addSubview(button)
  }
  
  @objc func buttonClicked(_ sender: AnyObject?){
    if intersitialView.isReady {
      intersitialView.present(fromRootViewController: self)
    } else {
      print("Ad wasn't ready")
    }
  }
  
  open func setup(_ id: String) {
    var adDelegate: AdDelegate
    intersitialView = GADInterstitial(adUnitID: id)
    adDelegate = AdDelegate()
    intersitialView.delegate = adDelegate
    intersitialView.load(DFPRequest())
  }
  
}

class AdDelegate: NSObject, GADInterstitialDelegate {
  func interstitial(ad: GADInterstitial!, didFailToReceiveAdWithError error: GADRequestError!) {
    print("interstitialDidFailToReceiveAdWithError:\(error.localizedDescription)")
    
  }
  
  func interstitialDidReceiveAd(ad: GADInterstitial!) {
    print("interstitialDidReceiveAd")
    
  }
  
  func interstitialWillDismissScreen(ad: GADInterstitial!) {
    print("interstitialWillDismissScreen")
    
  }
  
  func interstitialDidDismissScreen(ad: GADInterstitial!) {
    print("interstitialDidDismissScreen")
  }
  
  func interstitialWillLeaveApplication(ad: GADInterstitial!) {
    print("interstitialWillLeaveApplication")
  }
  
  func interstitialWillPresentScreen(ad: GADInterstitial!) {
    print("interstitialWillPresentScreen")
  }
}
