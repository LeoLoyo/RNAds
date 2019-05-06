
# react-native-mediastream-ads

## Getting started

`$ npm install react-native-mediastream-ads --save`

### Mostly automatic installation

`$ react-native link react-native-mediastream-ads`

### Manual installation


#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-mediastream-ads` and add `RNMediastreamAds.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRNMediastreamAds.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<

#### Android

1. Open up `android/app/src/main/java/[...]/MainActivity.java`
  - Add `import com.reactlibrary.RNMediastreamAdsPackage;` to the imports at the top of the file
  - Add `new RNMediastreamAdsPackage()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':react-native-mediastream-ads'
  	project(':react-native-mediastream-ads').projectDir = new File(rootProject.projectDir, 	'../node_modules/react-native-mediastream-ads/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':react-native-mediastream-ads')
  	```

#### Windows
[Read it! :D](https://github.com/ReactWindows/react-native)

1. In Visual Studio add the `RNMediastreamAds.sln` in `node_modules/react-native-mediastream-ads/windows/RNMediastreamAds.sln` folder to their solution, reference from their app.
2. Open up your `MainPage.cs` app
  - Add `using Mediastream.Ads.RNMediastreamAds;` to the usings at the top of the file
  - Add `new RNMediastreamAdsPackage()` to the `List<IReactPackage>` returned by the `Packages` method


## Usage
```javascript
import RNMediastreamAds from 'react-native-mediastream-ads';

// TODO: What to do with the module?
RNMediastreamAds;
```
  