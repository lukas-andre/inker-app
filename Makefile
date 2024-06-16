
.PHONY: build
build:
	@echo "Building json-builder & freezed"
	dart run build_runner build 

.PHONY: build-all
build-all:
	@echo "Building all"
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
	dart run intl_utils:generate
	@echo "Intl generated"