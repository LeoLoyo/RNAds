package com.reactlibrary;

import android.util.Log;
import android.widget.RelativeLayout;

import com.facebook.react.bridge.ReactContext;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.doubleclick.PublisherAdView;
import com.google.android.gms.ads.doubleclick.PublisherInterstitialAd;

import java.util.HashMap;

public class RNMediastreamAdsViewIntersitial {
    static public PublisherInterstitialAd setup(ReactContext mReactContext, String id) {
        PublisherInterstitialAd adView = new PublisherInterstitialAd(mReactContext);
        adView.setAdUnitId(id);
        adView.setAdListener(new AdListener() {
            @Override
            public void onAdLoaded() {
                // Code to be executed when an ad finishes loading.
                if (adView.isLoaded()) {
                    adView.show();
                } else {
                    Log.d("TAG", "The interstitial wasn't loaded yet.");
                }
            }

            @Override
            public void onAdFailedToLoad(int errorCode) {
                // Code to be executed when an ad request fails.
            }

            @Override
            public void onAdOpened() {
                // Code to be executed when the ad is displayed.
            }

            @Override
            public void onAdClicked() {
                // Code to be executed when the user clicks on an ad.
            }

            @Override
            public void onAdLeftApplication() {
                // Code to be executed when the user has left the app.
            }

            @Override
            public void onAdClosed() {
                // Code to be executed when the interstitial ad is closed.
            }
        });
        return adView;
    }
}
