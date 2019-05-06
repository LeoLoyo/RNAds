using ReactNative.Bridge;
using System;
using System.Collections.Generic;
using Windows.ApplicationModel.Core;
using Windows.UI.Core;

namespace Mediastream.Ads.RNMediastreamAds
{
    /// <summary>
    /// A module that allows JS to share data.
    /// </summary>
    class RNMediastreamAdsModule : NativeModuleBase
    {
        /// <summary>
        /// Instantiates the <see cref="RNMediastreamAdsModule"/>.
        /// </summary>
        internal RNMediastreamAdsModule()
        {

        }

        /// <summary>
        /// The name of the native module.
        /// </summary>
        public override string Name
        {
            get
            {
                return "RNMediastreamAds";
            }
        }
    }
}
