package com.reactlibrary;

import android.widget.RelativeLayout;

import com.facebook.react.bridge.ReactContext;
import com.facebook.react.bridge.ReadableMap;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.doubleclick.PublisherAdRequest;
import com.google.android.gms.ads.doubleclick.PublisherAdView;
import java.util.HashMap;


public class RNMediastreamAdsViewBanner {
    static public PublisherAdView setup(ReactContext mReactContext, String id, String size) {
        PublisherAdView adView = new PublisherAdView(mReactContext);
        HashMap<String, AdSize> AdSizesMap = new HashMap<String, AdSize>();
        AdSizesMap.put("BANNER", AdSize.BANNER);
        AdSizesMap.put("LARGE_BANNER", AdSize.LARGE_BANNER);
        AdSizesMap.put("MEDIUM_RECTANGLE", AdSize.MEDIUM_RECTANGLE);
        AdSizesMap.put("FULL_BANNER", AdSize.FULL_BANNER);
        AdSizesMap.put("LEADERBOARD", AdSize.LEADERBOARD);
        adView.setAdSizes(AdSizesMap.get(size));
        adView.setAdUnitId(id);
        return adView;
    }
}
