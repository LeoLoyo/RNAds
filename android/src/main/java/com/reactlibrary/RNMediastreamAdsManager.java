package com.reactlibrary;

import android.graphics.Color;
import android.view.View;

import com.facebook.react.bridge.ReadableMap;
import com.facebook.react.uimanager.SimpleViewManager;
import com.facebook.react.uimanager.ThemedReactContext;

import com.facebook.react.uimanager.annotations.ReactProp;
import com.google.android.gms.ads.doubleclick.PublisherAdView;

public class RNMediastreamAdsManager extends SimpleViewManager<RNMediastreamAdsView> {
    public static final String REACT_CLASS = "RNMediastreamAds";

    @Override
    public String getName() {
        // Tell React the name of the module
        // https://facebook.github.io/react-native/docs/native-components-android.html#1-create-the-viewmanager-subclass
        return REACT_CLASS;
    }

    @Override
    public RNMediastreamAdsView createViewInstance(ThemedReactContext context){
        // Create a view here
        // https://facebook.github.io/react-native/docs/native-components-android.html#2-implement-method-createviewinstance
        return new RNMediastreamAdsView(context);
    }

    @ReactProp(name = "config")
    public void setConfig(RNMediastreamAdsView view, ReadableMap props) {
        view.setConfig(props);
    }
}
