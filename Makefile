build:
	@brew bundle --no-upgrade
	@env PATH="$(CURDIR)/Scripts/CarthageBin:/usr/bin:/bin:/usr/sbin:/sbin" XCODE_XCCONFIG_FILE="$(CURDIR)/Configs/Carthage.xcconfig" "$$(command -v carthage)" bootstrap --cache-builds --platform macOS
	@mkdir -p Dozer/Other/Generated
	@swiftgen
	@xcodegen 
	@xed "."

release:
	@echo "Running Fastlane deploy"
	@bundle exec fastlane release

.PHONY: build release 
