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
		-d BA0A0FD4-CC45-44E4-90DB-4B2B7FC3A026

.PHONY: test-ios-15
test-ios-15:
	@echo "Running tests on iPhone 15 Pro simulator"
	flutter --target=integration_test/app_navigation_test.dart \
		-d BA0A0FD4-CC45-44E4-90DB-4B2B7FC3A026

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

# Patrol Testing Commands
.PHONY: test-auth-artist-ios
test-auth-artist-ios:
	@echo "Running artist authentication tests on iOS"
	patrol test -t integration_test/flows/artist/auth_flow_test.dart --device "iPhone 15" --ios 17.5

.PHONY: test-auth-customer-ios
test-auth-customer-ios:
	@echo "Running customer authentication tests on iOS"
	patrol test -t integration_test/flows/customer/auth_flow_test.dart --device "iPhone 15" --ios 17.5

.PHONY: test-auth-artist-android
test-auth-artist-android:
	@echo "Running artist authentication tests on Android"
	patrol test -t integration_test/flows/artist/auth_flow_test.dart --device "sdk gphone64 arm64"

.PHONY: test-auth-customer-android
test-auth-customer-android:
	@echo "Running customer authentication tests on Android"
	patrol test -t integration_test/flows/customer/auth_flow_test.dart --device "sdk gphone64 arm64"

.PHONY: test-auth-all
test-auth-all: test-auth-artist-ios test-auth-customer-ios test-auth-artist-android test-auth-customer-android
	@echo "All authentication tests completed"

.PHONY: test-auth-ios
test-auth-ios: test-auth-artist-ios test-auth-customer-ios
	@echo "All iOS authentication tests completed"

.PHONY: test-auth-android
test-auth-android: test-auth-artist-android test-auth-customer-android
	@echo "All Android authentication tests completed"

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
	@echo "  make test-auth-artist-ios     - Run artist auth tests on iOS"
	@echo "  make test-auth-customer-ios   - Run customer auth tests on iOS"
	@echo "  make test-auth-artist-android - Run artist auth tests on Android"
	@echo "  make test-auth-customer-android - Run customer auth tests on Android"
	@echo "  make test-auth-ios     - Run all iOS auth tests"
	@echo "  make test-auth-android - Run all Android auth tests"
	@echo "  make test-auth-all     - Run all auth tests"


.PHONY: build-ios
build-ios:
	flutter build ipa --release --obfuscate --split-debug-info=build/app/outputs/symbols --dart-define=GOOGLE_PLACES_KEY_IOS=AIzaSyCj1eti303pto797lCPa7ChUyQ_TRaYpWg

.PHONY: build-android
build-android:
	flutter build apk --release --obfuscate --split-debug-info=build/app/outputs/symbols --dart-define=GOOGLE_PLACES_KEY_ANDROID=AIzaSyDsXkdSxDC9PUdc0xjb2j0eUFqM5I5fcVY
