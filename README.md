<p align="center">
	<img width="200" height="200" margin-right="100%" src="https://raw.githubusercontent.com/Mortennn/Dozer/master/Stuff/AppIcon.png">
</p>
<p align="center">Hide menu bar icons to give your Mac a cleaner look.</p>
<p align="center">
	<a href="https://github.com/nickhjones/Dozer/releases/latest">
 		<img src="https://img.shields.io/badge/download-latest-brightgreen.svg" alt="download">
	<a href="https://img.shields.io/badge/platform-macOS-lightgrey.svg">
 		<img src="https://img.shields.io/badge/platform-macOS-lightgrey.svg" alt="platform">
	</a>
	<a href="https://img.shields.io/badge/requirements-macOS Tahoe+-ff69b4.svg">
		<img src="https://img.shields.io/badge/requirements-macOS Tahoe+-lightgrey.svg" alt="systemrequirements">
	</a>
	<a href="https://github.com/sindresorhus/swiftlint-sindre">
 		<img src="https://img.shields.io/badge/SwiftLint-Sindre-hotpink.svg" alt="swiftlint">
	</a>
	<a href="https://opensource.org/licenses/MPL-2.0">
 		<img src="https://img.shields.io/badge/License-MPL%202.0-orange.svg" alt="license">
	</a>
</p>
<p align="center">
	<img height="100" min-width="100" src="https://github.com/Mortennn/Dozer/raw/master/Stuff/demo.gif" alt="demo">
</p>

<p align="center"></p>
<a href="https://www.buymeacoffee.com/mortennn" target="_blank"><img src="https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png" alt="Buy Me A Coffee" style="height: 41px !important;width: 174px !important;box-shadow: 0px 3px 2px 0px rgba(190, 190, 190, 0.5) !important;-webkit-box-shadow: 0px 3px 2px 0px rgba(190, 190, 190, 0.5) !important;" ></a>

## ⚙️ Install
Using [Homebrew Cask](https://formulae.brew.sh/cask/dozer):
```shell
brew install --cask dozer
```

Manual:

[Download](https://github.com/nickhjones/Dozer/releases/latest), open and drag the app to the Applications folder.

## 👨‍💻 Build from source

Prerequisites:

* macOS 26.0+
* Xcode 26.5+
* Homebrew

Prepare the project:

```shell
make build
```

This installs the Homebrew tools from `Brewfile`, builds the Carthage dependencies, runs SwiftGen, generates `Dozer.xcodeproj` with XcodeGen, and opens the project in Xcode.

Build a local Release app from Terminal:

```shell
xcodebuild -project Dozer.xcodeproj \
  -scheme Dozer \
  -configuration Release \
  -destination platform=macOS \
  -derivedDataPath /private/tmp/DozerDerivedData \
  build
```

The built app will be at:

```text
/private/tmp/DozerDerivedData/Build/Products/Release/Dozer.app
```

Quit any running copy of Dozer before replacing it in `/Applications`. If you installed Dozer with Homebrew Cask, uninstall that copy first so Homebrew does not replace your local build later:

```shell
brew uninstall --cask dozer
```

Then copy the Release `Dozer.app` into `/Applications` and choose Replace.

### Signing notes

Local builds are signed with Xcode's "Sign to Run Locally" ad-hoc identity. That is fine for personal use on your Mac, but it is not a polished public distribution signature.

For a GitHub release that other people can download and open normally, sign with an Apple Developer ID certificate, notarize the DMG or ZIP with Apple, and staple the notarization ticket before uploading it. The app currently includes `com.apple.security.cs.disable-library-validation` so locally signed embedded frameworks can load under hardened runtime.

## ⚫️ Dozer Icons

There are 2 or 3, numbered from right to left:

1. this can be positioned anywhere you prefer, it is only a point of interaction
2. this and everything to its left will be hidden/shown by clicking any Dozer icon
3. (Optional) the "remove" icon and everything to its left will be hidden/shown by option-clicking any Dozer icon

## 👨‍💻 Usage

* Move the icons you want to hide until clicked to the left of the second Dozer icon
* Move the icons you want to hide until option-clicked to the left of the third Dozer icon

**N.B. hold command (`⌘`) then drag to move the menu bar icons.**

## 👇 Interactions
* Left-click one of the Dozer icons to hide/show the first group of menu bar icons
* Option-Left-click one of the Dozer icons to show the second group of menu bar icons (optional)
* Right-click one of the Dozer icons to open the settings

<!-- GIF is commented out until it is redone -->
<!-- **Checkout [this GIF](https://raw.githubusercontent.com/Mortennn/Dozer/master/Stuff/demo.gif) to watch Dozer in action.** -->

## 📄 Requirements
macOS 26.0+
