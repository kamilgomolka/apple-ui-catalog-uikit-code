PROJECT := AppleUICatalogUIKitCode.xcodeproj
SCHEME := AppleUICatalogUIKitCode
SIMULATOR ?= iPhone 17 Pro
DESTINATION := platform=iOS Simulator,name=$(SIMULATOR),OS=latest
SWIFT_SOURCES := AppleUICatalogUIKitCode

.PHONY: build destinations format clean

build:
	xcodebuild build -project $(PROJECT) -scheme $(SCHEME) \
		-destination '$(DESTINATION)' CODE_SIGNING_ALLOWED=NO

destinations:
	xcodebuild -showdestinations -project $(PROJECT) -scheme $(SCHEME)

format:
	xcrun swift-format format --in-place --recursive --parallel $(SWIFT_SOURCES)

clean:
	xcodebuild clean -project $(PROJECT) -scheme $(SCHEME)
