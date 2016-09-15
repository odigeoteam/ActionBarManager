pod install

set -o pipefail &&
time xcodebuild clean test \
    -workspace ActionBarManager.xcworkspace \
    -scheme ActionBarManager \
    -sdk iphonesimulator10.0 \
    -destination 'platform=iOS Simulator,name=iPhone 6s,OS=10.0' \
| xcpretty
