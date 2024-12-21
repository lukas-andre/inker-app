.PHONY: build
build:
	@echo "Building json-builder & freezed"
	dart run build_runner build 

.PHONY: build-all
build-all:
	@echo "Building all"
	rm -rf lib/generated
	make build
	make intl	
	@echo "Building all done"

.PHONY: back
back:
	yarn --cwd /Users/Ihenry/Lucas/inker/inker-back start:dev

.PHONY: ngrok
ngrok:
	@echo "Creating tunnel"
	yarn --cwd /Users/Ihenry/Lucas/inker/inker-back tunnel:dev
	@echo "Tunner created"
	@echo "Press Ctrl+C to stop the tunnel"

.PHONY: sync-db
sync-db:
	@echo "Syncing DB"
	adb shell "run-as com.example.inker_studio cat /data/data/com.example.inker_studio/app_flutter/Master.db" > Master.db
	@echo "DB synced"

.PHONY: intl
intl:
	@echo "Generating intl"
	rm -rf lib/generated
	dart run intl_utils:generate
	@echo "Intl generated"

# Testing commands
.PHONY: test-setup
test-setup:
	@echo "Setting up test environment"
	flutter pub get
	flutter clean

.PHONY: test-ios
test-ios:
	@echo "Running tests on iPhone 12 Pro simulator"
	flutter test integration_test/app_navigation_test.dart \
		-d 63E7569B-4004-49AE-A036-63AFF89C2FBF

.PHONY: test-ios-15
test-ios-15:
	@echo "Running tests on iPhone 15 Pro simulator"
	flutter --target=integration_test/app_navigation_test.dart \
		-d 1754FAB0-2C29-403E-BE59-08BB299F6D37

.PHONY: test-web
test-web:
	@echo "Running tests on Chrome"
	flutter drive \
		--driver=test_driver/integration_test_driver.dart \
		--target=integration_test/app_test.dart \
		-d chrome

.PHONY: test-all-ios
test-all-ios: test-ios test-ios-15
	@echo "All iOS tests completed"

.PHONY: test-specific
test-specific:
	@if [ "$(test)" = "" ]; then \
		echo "Please specify a test file with test=<path_to_test>"; \
		exit 1; \
	fi
	@echo "Running specific test: $(test)"
	flutter drive \
		--driver=test_driver/integration_test_driver.dart \
		--target=$(test) \
		-d $(device)

.PHONY: test-watch
test-watch:
	@echo "Running tests in watch mode"
	flutter test --watch

.PHONY: test-coverage
test-coverage:
	@echo "Running tests with coverage"
	flutter test --coverage
	genhtml coverage/lcov.info -o coverage/html
	@echo "Coverage report generated in coverage/html/index.html"

.PHONY: help-test
help-test:
	@echo "Available test commands:"
	@echo "  make test-ios          - Run tests on iPhone 12 Pro simulator"
	@echo "  make test-ios-15       - Run tests on iPhone 15 Pro simulator"
	@echo "  make test-web          - Run tests on Chrome"
	@echo "  make test-all-ios      - Run tests on all iOS simulators"
	@echo "  make test-specific test=<path> device=<id> - Run specific test on device"
	@echo "  make test-watch        - Run tests in watch mode"
	@echo "  make test-coverage     - Generate test coverage report"
	@echo "  make test-setup        - Setup test environment"


.PHONY: build-ios
build-ios:
	flutter build ipa --release --obfuscate --split-debug-info=build/app/outputs/symbols --dart-define=GOOGLE_PLACES_KEY_IOS=AIzaSyCj1eti303pto797lCPa7ChUyQ_TRaYpWg

.PHONY: build-android
build-android:
	flutter build apk --release --obfuscate --split-debug-info=build/app/outputs/symbols --dart-define=GOOGLE_PLACES_KEY_ANDROID=AIzaSyDsXkdSxDC9PUdc0xjb2j0eUFqM5I5fcVY
