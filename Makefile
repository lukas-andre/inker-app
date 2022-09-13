
.PHONY: json-builder
json:
	@echo "Building json-builder"
	flutter pub run build_runner build --delete-conflicting-outputs

.PHONY: backend
backend:
	@echo "Starting backend"
	yarn --cwd /Users/Ihenry/Lucas/inker/inker-back start:detach
	@echo "Backend started"
	@echo "Creating tunnel"
	yarn --cwd /Users/Ihenry/Lucas/inker/inker-back tunnel:dev
	@echo "Tunner created"
	@echo "Press Ctrl+C to stop the tunnel"

.PHONY: syncDB
syncDB:
	@echo "Syncing DB"
	adb shell "run-as com.example.inker_studio cat /data/data/com.example.inker_studio/app_flutter/Master.db" > Master.db
	@echo "DB synced"