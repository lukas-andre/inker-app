
Sign in
Help

image_picker_for_web 3.0.6 copy "image_picker_for_web: ^3.0.6" to clipboard
Published 8 months ago • verified publisherflutter.devDart 3 compatible
SDKFlutterPlatformweb
170
Readme
Changelog
Example
Installing
Versions
Scores
image_picker_for_web 
A web implementation of image_picker.

Limitations on the web platform 
XFile 
This plugin uses XFile objects to abstract files picked/created by the user.

Read more about XFile on the web in package:cross_file's README.

input file "accept" 
In order to filter only video/image content, some browsers offer an accept attribute in their input type="file" form elements:

Data on support for the input-file-accept feature across the major browsers from caniuse.com

This feature is just a convenience for users, not validation.

Users can override this setting on their browsers. You must validate in your app (or server) that the user has picked the file type that you can handle.

input file "capture" 
In order to "take a photo", some mobile browsers offer a capture attribute:

Data on support for the html-media-capture feature across the major browsers from caniuse.com

Each browser may implement capture any way they please, so it may (or may not) make a difference in your users' experience.

input file "cancel" 
The cancel event used by the plugin to detect when users close the file selector without picking a file is relatively new, and will only work in recent browsers.

ImagePickerOptions support 
The ImagePickerOptions configuration object allows passing resize (maxWidth, maxHeight) and quality (imageQuality) parameters to some methods of this plugin, which in other platforms control how selected images are resized or re-encoded.

On the web:

maxWidth, maxHeight and imageQuality are not supported for gif images.
imageQuality only affects jpg and webp images.
getVideo() 
The argument maxDuration is not supported on the web.

Usage 
Import the package 
This package is endorsed, which means you can simply use image_picker normally. This package will be automatically included in your app when you do, so you do not need to add it to your pubspec.yaml.

However, if you import this package to use any of its APIs directly, you should add it to your pubspec.yaml as usual.

Use the plugin #
You should be able to use package:image_picker almost as normal.

Once the user has picked a file, the returned XFile instance will contain a network-accessible Blob URL (pointing to a location within the browser).

The instance will also let you retrieve the bytes of the selected file across all platforms.

If you want to use the path directly, your code would need look like this:

if (kIsWeb) {
  image = Image.network(pickedFile.path);
} else {
  image = Image.file(File(pickedFile.path));
}
Or, using bytes:

image = Image.memory(await pickedFile.readAsBytes());
170
likes
140
points
2.03M
downloads
Publisher
verified publisherflutter.dev

Weekly Downloads
2024.07.18 - 2025.06.12
Metadata
Web platform implementation of image_picker

Repository (GitHub)
View/report issues
Contributing

Topics
#camera #image-picker #files #file-selection

Documentation
API reference

License
BSD-3-Clause (license)

Dependencies
flutter, flutter_web_plugins, image_picker_platform_interface, mime, web

More
Packages that depend on image_picker_for_web

Dart languageReport packagePolicyTermsAPI TermsSecurityPrivacyHelpRSSbug report
