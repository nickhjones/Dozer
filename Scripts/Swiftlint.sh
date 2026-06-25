if which swiftlint >/dev/null; then
  swiftlint --no-cache || echo "warning: SwiftLint reported violations; continuing build"
else
  echo "warning: SwiftLint not installed, download from https://github.com/realm/SwiftLint"
fi
