# react-native-securerandom

A library to generate cryptographically-secure random bytes. Uses `SecRandomCopyBytes` on iOS, `SecureRandom` on Android and `System.Security.Cryptography.RandomNumberGenerator` on Windows.

## Usage
The library exports a single function:
### generateSecureRandom(length: number) => Promise\<Uint8Array\>
Takes a length, the number of bytes to generate, and returns a `Promise` that resolves with a `Uint8Array`.

```javascript
import { generateSecureRandom } from 'react-native-securerandom';

generateSecureRandom(12).then(randomBytes => console.log(randomBytes));
```

## Installation

```bash
$ npm install --save github:ArweaveTeam/react-native-securerandom
```

#### iOS

### Expo CocoaPods installation

Simply add the `RNSecureRandom` pod dependency to your Expo project Podfile `ios/Podfile`

```ruby
  pod 'Folly',
    :podspec => "../node_modules/react-native/third-party-podspecs/Folly.podspec",
  pod 'glog',
    :podspec => "../node_modules/react-native/third-party-podspecs/glog.podspec",

  pod 'RNSecureRandom',
    :path => "../node_modules/react-native-securerandom/ios",
    :podspec => "../node_modules/react-native-securerandom/ios/RNSecureRandom.podspec"


  post_install do |installer|
```

### Manual linking

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-securerandom` and add `RNSecureRandom.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRNSecureRandom.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<

#### Android

1. Open up `android/app/src/main/java/[...]/MainActivity.java`
  - Add `import net.rhogan.rnsecurerandom.RNSecureRandomPackage;` to the imports at the top of the file
  - Add `new RNSecureRandomPackage()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':react-native-securerandom'
  	project(':react-native-securerandom').projectDir = new File(rootProject.projectDir, 	'../node_modules/react-native-securerandom/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':react-native-securerandom')
  	```

#### Windows

See [react-native-windows](https://github.com/Microsoft/react-native-windows)

1. In Visual Studio add `node_modules/react-native-securerandom/windows/RNSecureRandom.sln` folder to your solution, and reference from your app.
2. Open up your app's `MainPage.cs`
  - Add `using Net.Rhogan.RNSecureRandom.RNSecureRandom;` to the usings at the top of the file
  - Add `new RNSecureRandomPackage()` to the `List<IReactPackage>` returned by the `Packages` method
