# Web Media Migration Plan - Simplified Approach

## Overview
Migration plan to ensure proper image and media support for Inker Studio Flutter app on web platform using the endorsed `image_picker_for_web` package.

## Key Advantage: Minimal Changes Required! 🎉
`image_picker_for_web` is an **endorsed** package that automatically works when using `image_picker`. This means:
- ✅ No need to add it to pubspec.yaml
- ✅ No need for conditional imports
- ✅ No need for platform-specific services
- ✅ Existing `image_picker` code continues to work

## What Needs to Change

### 1. Image Display Pattern
Current mobile-only pattern:
```dart
Image.file(File(pickedFile.path))
```

Web-compatible pattern:
```dart
if (kIsWeb) {
  image = Image.network(pickedFile.path); // Blob URL on web
} else {
  image = Image.file(File(pickedFile.path));
}
```

Or use bytes (works everywhere):
```dart
image = Image.memory(await pickedFile.readAsBytes());
```

### 2. File Handling
- On web, `XFile.path` returns a Blob URL, not a file system path
- Cannot use `File()` constructor on web
- Must use `readAsBytes()` for file operations

## Task List

### Phase 1: Discovery & Analysis
- [x] Understand `image_picker_for_web` capabilities
- [x] Run detection script to find all image display patterns
- [x] Identify File() usage with picked images
- [x] Find all XFile.path usages

### Phase 2: Code Updates
- [x] Update image display widgets to handle web
  - [x] `image_edit_widget.dart` - Updated to use Image.memory with bytes
  - [x] `image_picker.dart` (customer/quotation) - Converted to StatefulWidget with byte caching
  - [x] `event_chat_page.dart` - Added kIsWeb check for image display
- [x] Replace File() operations with bytes-based approach where needed
  - [x] All MultipartFile.fromPath changed to MultipartFile.fromBytes
- [x] Add kIsWeb checks where necessary
- [x] Update upload logic to use bytes instead of File paths
  - [x] `api_customer_service.dart` - Profile picture upload
  - [x] `api_artist_service.dart` - Profile & studio photo upload
  - [x] `api_quotation_service.dart` - Multiple image uploads
  - [x] `api_agenda_service.dart` - Work evidence upload

### Phase 3: Testing & Validation
- [ ] Test image picking on web browsers
- [ ] Verify mobile platforms still work
- [ ] Test image quality settings (jpg/webp only on web)
- [ ] Validate file size handling

## Patterns to Search and Fix

### 1. Image Display from Picked Files
```dart
// Search for:
Image.file(File(
Image.file(_pickedFile)

// Replace with platform check or bytes approach
```

### 2. File Operations
```dart
// Search for:
File(pickedFile.path)
File(xFile.path)

// These won't work on web - need bytes approach
```

### 3. Direct Path Usage
```dart
// Search for:
.path // on XFile objects
uploadFile(File(

// Need special handling for web
```

## Web Limitations to Consider
1. **Image Options**: maxWidth, maxHeight, imageQuality don't work for GIFs
2. **Quality**: imageQuality only affects JPG and WebP
3. **Video**: maxDuration not supported
4. **File Access**: Can't create File objects from picked files

## Implementation Strategy

### Recommended Approach: Use Bytes
Instead of dealing with platform differences, use bytes everywhere:

```dart
// Works on all platforms
final XFile? pickedFile = await ImagePicker().pickImage(source: ImageSource.gallery);
if (pickedFile != null) {
  final bytes = await pickedFile.readAsBytes();
  
  // Display
  widget = Image.memory(bytes);
  
  // Upload
  await uploadImageBytes(bytes, pickedFile.name);
}
```

### Alternative: Platform Checks
For cases where you need different behavior:

```dart
import 'package:flutter/foundation.dart' show kIsWeb;

if (kIsWeb) {
  // Web-specific code
  final url = pickedFile.path; // This is a blob URL
} else {
  // Mobile-specific code
  final file = File(pickedFile.path);
}
```

## Components to Update (Confirmed)

### Image Display Components (Image.file usage)
1. `lib/ui/quotation/artist_quotation_response_page.dart:586`
2. `lib/ui/customer/quotation/widgets/image_picker.dart:52`
3. `lib/ui/shared/widgets/image_edit_widget.dart:56`
4. `lib/ui/quotation/quotation_offer_message_page.dart:455`
5. `lib/ui/quotation/create_open_quotation_page.dart:805`
6. `lib/ui/quotation/artist_open_quotation_offer_page.dart:535`
7. `lib/ui/shared/event/event_chat_page.dart:442`
8. `lib/ui/shared/event/event_action_dialogs.dart:563`
9. `lib/ui/artist/stencil/add_stencil_page.dart:292`
10. `lib/ui/artist/work/add_work_page.dart:307`

### Upload Components (MultipartFile.fromPath usage)
1. `lib/data/api/customer/api_customer_service.dart:118` - Profile picture
2. `lib/data/api/artist/api_artist_service.dart:73,100` - Profile & studio photos
3. `lib/data/api/quotation/api_quotation_service.dart:88,253,356,423` - Quotation images
4. `lib/data/api/agenda/api_agenda_service.dart:802` - Work evidence

### Path Usage Components
1. `lib/ui/shared/widgets/image_edit_widget.dart:57` - File path creation
2. `lib/ui/shared/event/event_chat_page.dart:178,199` - Chat image paths
3. `lib/domain/blocs/artist/artist_agenda_event_detail/artist_agenda_event_detail_bloc.dart:189` - XFile to File conversion

## Components to Update (Categorized)

1. **Profile Image Upload**
   - Artist profile pictures
   - Customer profile pictures

2. **Portfolio Images**
   - Tattoo work gallery
   - Multiple image selection

3. **Chat Attachments**
   - Image messages
   - Image preview before sending

4. **Work/Quotation Images**
   - Reference images
   - Work progress photos

5. **Registration Flow**
   - Artist portfolio during signup
   - Profile picture selection

## Success Criteria
1. ✅ All image features work on Chrome, Safari, Firefox
2. ✅ No regression on iOS/Android
3. ✅ Consistent UX across platforms
4. ✅ Proper error handling
5. ✅ No memory issues with large images

## Progress Summary

### Completed Updates ✅
1. **Core Services** - All API services now use `MultipartFile.fromBytes` instead of `fromPath`
   - ✅ Fixed `work_client_service.dart` - replaced `openRead()` with `readAsBytes()`
   - ✅ Fixed `stencil_client_service.dart` - replaced `openRead()` with `readAsBytes()`
2. **Reusable Widget** - `ImageEditWidget` now supports web with bytes approach
3. **Image Display** - Added web compatibility to multiple components
   - ✅ `add_work_page.dart` - Now uses `Image.memory()` with bytes caching
   - ✅ `add_stencil_page.dart` - Now uses `Image.memory()` with bytes caching

### Remaining Tasks
1. Update remaining Image.file() occurrences:
   - `lib/ui/quotation/artist_quotation_response_page.dart:586`
   - `lib/ui/quotation/quotation_offer_message_page.dart:455`
   - `lib/ui/quotation/create_open_quotation_page.dart:805`
   - `lib/ui/quotation/artist_open_quotation_offer_page.dart:535`
   - `lib/ui/shared/event/event_action_dialogs.dart:563`
   - ✅ `lib/ui/artist/stencil/add_stencil_page.dart:292` - Updated with bytes approach
   - ✅ `lib/ui/artist/work/add_work_page.dart:307` - Updated with bytes approach

2. Handle File to XFile conversions in BLoCs
3. Test all changes on web browsers
4. Create migration guide for team

## Next Steps
1. Continue updating remaining Image.file() widgets
2. Test image picking on Chrome, Safari, Firefox
3. Test file uploads work correctly
4. Verify no regression on mobile platforms
5. Document any web-specific behaviors