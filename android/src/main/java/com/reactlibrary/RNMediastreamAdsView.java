package com.reactlibrary;

import android.widget.RelativeLayout;

import com.facebook.react.bridge.ReactContext;
import com.facebook.react.bridge.ReadableMap;
import com.google.android.gms.ads.doubleclick.PublisherAdRequest;
import com.google.android.gms.ads.doubleclick.PublisherAdView;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.doubleclick.PublisherInterstitialAd;
import com.reactlibrary.R;

public class RNMediastreamAdsView extends RelativeLayout {
    protected ReactContext mReactContext;

    public RNMediastreamAdsView(ReactContext reactContext) {
        super(reactContext);
        mReactContext = reactContext;
        inflate(mReactContext, R.layout.main_activity, this);
    }

    public void setConfig(ReadableMap config) {
        if (config != null) {
            if(config.hasKey("type") && config.hasKey("id")) {
                if (config.getString("type").equals("banner")) {
                    PublisherAdView adView = RNMediastreamAdsViewBanner.setup(mReactContext, config.getString("id"), config.getString("size"));
                    LayoutParams params = new RelativeLayout.LayoutParams(LayoutParams.WRAP_CONTENT, LayoutParams.WRAP_CONTENT);
                    params.addRule(RelativeLayout.ALIGN_PARENT_BOTTOM);
                    params.addRule(RelativeLayout.CENTER_HORIZONTAL);
                    this.addView(adView, params);
                    PublisherAdRequest adRequest = new PublisherAdRequest.Builder().build();
                    adView.loadAd(adRequest);
                } else if (config.getString("type").equals("interstitial")) {
                    PublisherInterstitialAd adView = RNMediastreamAdsViewIntersitial.setup(mReactContext, config.getString("id"));
                    adView.loadAd(new PublisherAdRequest.Builder().build());
                }
            }
        }
    }

    @Override
    public void requestLayout() {
        super.requestLayout();
        post(new Runnable() {
            @Override
            public void run() {
                measure(MeasureSpec.makeMeasureSpec(getWidth(), MeasureSpec.EXACTLY), MeasureSpec.makeMeasureSpec(getHeight(), MeasureSpec.EXACTLY));
                layout(getLeft(), getTop(), getRight(), getBottom());
            }
        });
    }
}
