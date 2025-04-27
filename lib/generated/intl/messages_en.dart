// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static String m0(artistsFound, range) =>
      "${artistsFound} artists found in ${range}km";

  static String m1(count) =>
      "${Intl.plural(count, one: '1 day ago', other: '${count} days ago')}";

  static String m2(message) => "Error loading events: ${message}";

  static String m3(sourceName) => "Filtering by source: ${sourceName}";

  static String m4(tagName) => "Filtering by tag: ${tagName}";

  static String m5(count) =>
      "${Intl.plural(count, one: '1 hour ago', other: '${count} hours ago')}";

  static String m6(hoursv2, minutesv2) =>
      "${hoursv2} hours and ${minutesv2} minutes";

  static String m7(hoursv2) => "${hoursv2} hours";

  static String m8(count) =>
      "${Intl.plural(count, one: '1 minute ago', other: '${count} minutes ago')}";

  static String m9(minutesv2) => "${minutesv2} minutes";

  static String m10(count) =>
      "${Intl.plural(count, one: '1 month ago', other: '${count} months ago')}";

  static String m11(tagName) => "No stencils with tag \'${tagName}\'";

  static String m12(message) => "Try refreshing the page: ${message}";

  static String m13(count) =>
      "${Intl.plural(count, one: '1 year ago', other: '${count} years ago')}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "aboutMe": MessageLookupByLibrary.simpleMessage("About Me"),
        "accept": MessageLookupByLibrary.simpleMessage("Accept"),
        "acceptQuotation":
            MessageLookupByLibrary.simpleMessage("Accept Quotation"),
        "accepted": MessageLookupByLibrary.simpleMessage("Accepted"),
        "acceptedTheQuotation":
            MessageLookupByLibrary.simpleMessage("accepted the quotation"),
        "accountSettings":
            MessageLookupByLibrary.simpleMessage("Account Settings"),
        "action": MessageLookupByLibrary.simpleMessage("Action"),
        "actionSuccessful":
            MessageLookupByLibrary.simpleMessage("Action successful"),
        "addAShortDescriptionAboutYourselfAndYourTattooStyle":
            MessageLookupByLibrary.simpleMessage(
                "Add a short description about yourself and your tattoo style"),
        "addDescription":
            MessageLookupByLibrary.simpleMessage("Add Description"),
        "addLocation": MessageLookupByLibrary.simpleMessage("Add Location"),
        "addPhotosOfYourBestTattooWorkToShowcaseYourStyle":
            MessageLookupByLibrary.simpleMessage(
                "Add photos of your best tattoo work to showcase your style"),
        "addSomeWorksToYourGallery": MessageLookupByLibrary.simpleMessage(
            "Add some works to your gallery"),
        "addStencil": MessageLookupByLibrary.simpleMessage("Add Stencil"),
        "addStudioPhoto":
            MessageLookupByLibrary.simpleMessage("Add Studio Photo"),
        "addTagsToMakeYourStencilMoreDiscoverable":
            MessageLookupByLibrary.simpleMessage(
                "Add tags to make your stencil more discoverable"),
        "addTagsToMakeYourWorkMoreDiscoverable":
            MessageLookupByLibrary.simpleMessage(
                "Add tags to make your work more discoverable"),
        "addTime": MessageLookupByLibrary.simpleMessage("Add Time"),
        "addUnavailableTime":
            MessageLookupByLibrary.simpleMessage("Add Unavailable Time"),
        "addWork": MessageLookupByLibrary.simpleMessage("Add Work"),
        "addYourFirstStencil": MessageLookupByLibrary.simpleMessage(
            "Add your first stencil to get started"),
        "addYourStencilDesignsToShowcaseYourStyle":
            MessageLookupByLibrary.simpleMessage(
                "Add your stencil designs to showcase your style"),
        "additionalDetails":
            MessageLookupByLibrary.simpleMessage("Additional Details"),
        "address": MessageLookupByLibrary.simpleMessage("Address"),
        "addressDetails":
            MessageLookupByLibrary.simpleMessage("Address Details"),
        "agenda": MessageLookupByLibrary.simpleMessage("Agenda"),
        "agendaSettings":
            MessageLookupByLibrary.simpleMessage("Agenda Settings"),
        "allOtherStencils":
            MessageLookupByLibrary.simpleMessage("All Other Stencils"),
        "allSources": MessageLookupByLibrary.simpleMessage("All Sources"),
        "allStencils": MessageLookupByLibrary.simpleMessage("All Stencils"),
        "and": MessageLookupByLibrary.simpleMessage("and"),
        "appeal": MessageLookupByLibrary.simpleMessage("Appeal"),
        "appealQuotation":
            MessageLookupByLibrary.simpleMessage("Appeal Quotation"),
        "appealReason": MessageLookupByLibrary.simpleMessage("Appeal Reason"),
        "appealReasonDateChange":
            MessageLookupByLibrary.simpleMessage("Date Change"),
        "appealReasonDesignChange":
            MessageLookupByLibrary.simpleMessage("Design Change"),
        "appealReasonOther": MessageLookupByLibrary.simpleMessage("Other"),
        "appealReasonPriceChange":
            MessageLookupByLibrary.simpleMessage("Price Change"),
        "appealedTheQuotation":
            MessageLookupByLibrary.simpleMessage("Appealed the quotation"),
        "applicationSettings":
            MessageLookupByLibrary.simpleMessage("Application Settings"),
        "apply": MessageLookupByLibrary.simpleMessage("Apply"),
        "appointmentDate":
            MessageLookupByLibrary.simpleMessage("Appointment Date"),
        "appointmentDateChangedFrom": MessageLookupByLibrary.simpleMessage(
            "Appointment date changed from"),
        "appointmentDateTime":
            MessageLookupByLibrary.simpleMessage("Appointment Date & Time"),
        "appointmentDetails":
            MessageLookupByLibrary.simpleMessage("Appointment Details"),
        "appointmentDuration":
            MessageLookupByLibrary.simpleMessage("Appointment Duration"),
        "areYouSureDelete": MessageLookupByLibrary.simpleMessage(
            "Are you sure you want to delete"),
        "areYouSureLogout": MessageLookupByLibrary.simpleMessage(
            "Are you sure you want to log out?"),
        "areYouSureYouWantToDeleteTheseWorks":
            MessageLookupByLibrary.simpleMessage(
                "Are you sure you want to delete these works?"),
        "areYouSureYouWantToDeleteThisStencil":
            MessageLookupByLibrary.simpleMessage(
                "Are you sure you want to delete this stencil?"),
        "areYouSureYouWantToDeleteThisWork":
            MessageLookupByLibrary.simpleMessage(
                "Are you sure you want to delete this work?"),
        "artist": MessageLookupByLibrary.simpleMessage("Artist"),
        "artistsFound": m0,
        "averageRating": MessageLookupByLibrary.simpleMessage("Average Rating"),
        "awaitingArtist":
            MessageLookupByLibrary.simpleMessage("Awaiting Artist"),
        "awaitingCustomer":
            MessageLookupByLibrary.simpleMessage("Awaiting Customer"),
        "awaitingReply": MessageLookupByLibrary.simpleMessage("Awaiting Reply"),
        "barber": MessageLookupByLibrary.simpleMessage("Barber"),
        "between": MessageLookupByLibrary.simpleMessage("between"),
        "cancel": MessageLookupByLibrary.simpleMessage("Cancel"),
        "cancelAppointment":
            MessageLookupByLibrary.simpleMessage("Cancel Appointment"),
        "cancelAppointmentConfirmation": MessageLookupByLibrary.simpleMessage(
            "Are you sure you want to cancel the appointment?"),
        "cancelEvent": MessageLookupByLibrary.simpleMessage("Cancel Event"),
        "cancelQuotation":
            MessageLookupByLibrary.simpleMessage("Cancel Quotation"),
        "cancelQuotationConfirmationMessage":
            MessageLookupByLibrary.simpleMessage(
                "Are you sure you want to cancel this quotation?"),
        "cancelQuotationConfirmationTitle":
            MessageLookupByLibrary.simpleMessage("Cancel Quotation"),
        "cancelReasonChangeOfMind":
            MessageLookupByLibrary.simpleMessage("Change of mind"),
        "cancelReasonFinancialReasons":
            MessageLookupByLibrary.simpleMessage("Financial reasons"),
        "cancelReasonFoundAnotherArtist":
            MessageLookupByLibrary.simpleMessage("Found another artist"),
        "cancelReasonNotAttended":
            MessageLookupByLibrary.simpleMessage("Appointment not attended"),
        "cancelReasonOther": MessageLookupByLibrary.simpleMessage("Other"),
        "cancelReasonPersonalReasons":
            MessageLookupByLibrary.simpleMessage("Personal reasons"),
        "cancelReasonSystemTimeout":
            MessageLookupByLibrary.simpleMessage("System timeout"),
        "canceledTheQuotation":
            MessageLookupByLibrary.simpleMessage("canceled the quotation"),
        "cancellationReason":
            MessageLookupByLibrary.simpleMessage("Cancellation Reason"),
        "cancelled": MessageLookupByLibrary.simpleMessage("Cancelled"),
        "cannotDeleteLastLocation": MessageLookupByLibrary.simpleMessage(
            "Cannot delete the last location. Artists must have at least one location."),
        "change": MessageLookupByLibrary.simpleMessage("Change"),
        "changeAppointment":
            MessageLookupByLibrary.simpleMessage("Change Appointment"),
        "changeAppointmentInstruction": MessageLookupByLibrary.simpleMessage(
            "Please provide the details for changing your appointment."),
        "changeImage": MessageLookupByLibrary.simpleMessage("Change Image"),
        "changePassword":
            MessageLookupByLibrary.simpleMessage("Change Password"),
        "changeSelection":
            MessageLookupByLibrary.simpleMessage("Change Selection"),
        "changedStatusFrom":
            MessageLookupByLibrary.simpleMessage("changed the status from"),
        "characters": MessageLookupByLibrary.simpleMessage("characters"),
        "chooseImage": MessageLookupByLibrary.simpleMessage("Choose Image"),
        "chooseStyle": MessageLookupByLibrary.simpleMessage("Choose a style"),
        "city": MessageLookupByLibrary.simpleMessage("City"),
        "clearFilter": MessageLookupByLibrary.simpleMessage("Clear Filter"),
        "clearFilters": MessageLookupByLibrary.simpleMessage("Clear Filters"),
        "collapse": MessageLookupByLibrary.simpleMessage("Collapse"),
        "completed": MessageLookupByLibrary.simpleMessage("Completed"),
        "confirm": MessageLookupByLibrary.simpleMessage("Confirm"),
        "confirmDeletion":
            MessageLookupByLibrary.simpleMessage("Confirm Deletion"),
        "confirmDeletionMessage": MessageLookupByLibrary.simpleMessage(
            "Are you sure you want to delete your account? This action cannot be undone."),
        "confirmLogout": MessageLookupByLibrary.simpleMessage("Confirm Logout"),
        "confirmNewPassword":
            MessageLookupByLibrary.simpleMessage("Confirm New Password"),
        "confirmPassword":
            MessageLookupByLibrary.simpleMessage("Confirm Password"),
        "confirmTimeSelection":
            MessageLookupByLibrary.simpleMessage("Confirm Time Selection"),
        "conflictingEvent": MessageLookupByLibrary.simpleMessage(
            "This time conflicts with an existing event"),
        "contactInformation":
            MessageLookupByLibrary.simpleMessage("Contact Information"),
        "createEvent": MessageLookupByLibrary.simpleMessage("Create Event"),
        "createNewTag": MessageLookupByLibrary.simpleMessage("Create new tag"),
        "createQuotation":
            MessageLookupByLibrary.simpleMessage("Create Quotation"),
        "createQuotationForTattoo":
            MessageLookupByLibrary.simpleMessage("Create Quotation"),
        "created": MessageLookupByLibrary.simpleMessage("Created"),
        "createdAt": MessageLookupByLibrary.simpleMessage("Created At"),
        "currentPassword":
            MessageLookupByLibrary.simpleMessage("Current Password"),
        "currentStatus": MessageLookupByLibrary.simpleMessage("Current Status"),
        "customRange": MessageLookupByLibrary.simpleMessage("Custom Range"),
        "customer": MessageLookupByLibrary.simpleMessage("Customer"),
        "date": MessageLookupByLibrary.simpleMessage("Date"),
        "day": MessageLookupByLibrary.simpleMessage("Day"),
        "daysAgo": m1,
        "delete": MessageLookupByLibrary.simpleMessage("Delete"),
        "deleteAccount": MessageLookupByLibrary.simpleMessage("Delete Account"),
        "deleteAccountWarning": MessageLookupByLibrary.simpleMessage(
            "Are you sure you want to delete your account? This action is irreversible and will delete all data associated with your account."),
        "deleteLocation":
            MessageLookupByLibrary.simpleMessage("Delete Location"),
        "deleteSelectedWorks":
            MessageLookupByLibrary.simpleMessage("Delete Selected Works"),
        "deleteStencil": MessageLookupByLibrary.simpleMessage("Delete Stencil"),
        "deleteWork": MessageLookupByLibrary.simpleMessage("Delete Work"),
        "describeYourTattoo":
            MessageLookupByLibrary.simpleMessage("Describe your tattoo"),
        "description": MessageLookupByLibrary.simpleMessage("Description"),
        "done": MessageLookupByLibrary.simpleMessage("Done"),
        "duration": MessageLookupByLibrary.simpleMessage("Duration"),
        "durationCannotBeZero":
            MessageLookupByLibrary.simpleMessage("Duration cannot be zero"),
        "edit": MessageLookupByLibrary.simpleMessage("Edit"),
        "editEvent": MessageLookupByLibrary.simpleMessage("Edit Event"),
        "editLocation": MessageLookupByLibrary.simpleMessage("Edit Location"),
        "editProfile": MessageLookupByLibrary.simpleMessage("Edit Profile"),
        "editStencil": MessageLookupByLibrary.simpleMessage("Edit Stencil"),
        "editWork": MessageLookupByLibrary.simpleMessage("Edit Work"),
        "email": MessageLookupByLibrary.simpleMessage("Email"),
        "emptyTattooGeneratorMessage": MessageLookupByLibrary.simpleMessage(
            "Enter a description and choose a style\nto generate tattoo designs"),
        "end": MessageLookupByLibrary.simpleMessage("End"),
        "endDate": MessageLookupByLibrary.simpleMessage("End Date"),
        "endTime": MessageLookupByLibrary.simpleMessage("End Time"),
        "enterAddress": MessageLookupByLibrary.simpleMessage("Enter address"),
        "enterLocationName":
            MessageLookupByLibrary.simpleMessage("Enter location name"),
        "error": MessageLookupByLibrary.simpleMessage("Error"),
        "errorLoadingEvents": m2,
        "errorLoadingStencils":
            MessageLookupByLibrary.simpleMessage("Error Loading Stencils"),
        "errorLoadingWorks":
            MessageLookupByLibrary.simpleMessage("Error loading works"),
        "errorMsgEndTimeMustBeAfterStart": MessageLookupByLibrary.simpleMessage(
            "End time must be after start time."),
        "errorMsgEventCreationFailed": MessageLookupByLibrary.simpleMessage(
            "Event creation failed. Please try again."),
        "errorMsgGuestValidationError":
            MessageLookupByLibrary.simpleMessage("Please select guest"),
        "errorMsgHoursValidationError":
            MessageLookupByLibrary.simpleMessage("Please select hours"),
        "errorMsgInvalidTimeFormat": MessageLookupByLibrary.simpleMessage(
            "Invalid time format. Please use HH:mm."),
        "errorMsgNotesValidationError": MessageLookupByLibrary.simpleMessage(
            "Notes exceed the limit of characters"),
        "estimatedCost": MessageLookupByLibrary.simpleMessage("Estimated Cost"),
        "estimatedCostChangedFrom":
            MessageLookupByLibrary.simpleMessage("Estimated cost changed from"),
        "estimatedCostDisclaimer": MessageLookupByLibrary.simpleMessage(
            "This is an estimated cost and may vary based on the final design or service"),
        "eventColor": MessageLookupByLibrary.simpleMessage("Event Color"),
        "eventCreatedSuccessfully":
            MessageLookupByLibrary.simpleMessage("Event created successfully."),
        "eventDetails": MessageLookupByLibrary.simpleMessage("Event Details"),
        "eventLocation": MessageLookupByLibrary.simpleMessage("Event Location"),
        "eventOverlap": MessageLookupByLibrary.simpleMessage("Event Overlap"),
        "eventOverlapMessage": MessageLookupByLibrary.simpleMessage(
            "This event overlaps with an existing event. Do you want to proceed?"),
        "eventTitle": MessageLookupByLibrary.simpleMessage("Event Title"),
        "eventUpdatedSuccessfully":
            MessageLookupByLibrary.simpleMessage("Event updated successfully."),
        "expand": MessageLookupByLibrary.simpleMessage("Expand"),
        "extraInfo": MessageLookupByLibrary.simpleMessage("Extra Info"),
        "feature": MessageLookupByLibrary.simpleMessage("Feature"),
        "featured": MessageLookupByLibrary.simpleMessage("Featured"),
        "featuredStencil":
            MessageLookupByLibrary.simpleMessage("Featured Stencil"),
        "featuredStencils":
            MessageLookupByLibrary.simpleMessage("Featured Stencils"),
        "featuredWork": MessageLookupByLibrary.simpleMessage("Featured Work"),
        "filter": MessageLookupByLibrary.simpleMessage("Filter"),
        "filterBySource":
            MessageLookupByLibrary.simpleMessage("Filter by Source"),
        "filteringBySource": m3,
        "filteringByTag": m4,
        "filters": MessageLookupByLibrary.simpleMessage("Filters"),
        "followers": MessageLookupByLibrary.simpleMessage("Followers"),
        "following": MessageLookupByLibrary.simpleMessage("Following"),
        "from": MessageLookupByLibrary.simpleMessage("From"),
        "fullName": MessageLookupByLibrary.simpleMessage("Full Name"),
        "generateTattoo":
            MessageLookupByLibrary.simpleMessage("Generate Tattoo"),
        "genres": MessageLookupByLibrary.simpleMessage("Genres"),
        "getArtistActionText":
            MessageLookupByLibrary.simpleMessage("Get Artist"),
        "goBack": MessageLookupByLibrary.simpleMessage("Go Back"),
        "guest": MessageLookupByLibrary.simpleMessage("Guest"),
        "haircut": MessageLookupByLibrary.simpleMessage("Haircut"),
        "hidden": MessageLookupByLibrary.simpleMessage("Hidden"),
        "hide": MessageLookupByLibrary.simpleMessage("Hide"),
        "hideStencil": MessageLookupByLibrary.simpleMessage("Hide Stencil"),
        "hideWork": MessageLookupByLibrary.simpleMessage("Hide Work"),
        "hidingHiddenStencils":
            MessageLookupByLibrary.simpleMessage("Hiding hidden stencils"),
        "hour": MessageLookupByLibrary.simpleMessage("Hour"),
        "hours": MessageLookupByLibrary.simpleMessage("hours"),
        "hoursAgo": m5,
        "hoursAndMinutes": m6,
        "hoursv2": m7,
        "invalidNumber": MessageLookupByLibrary.simpleMessage("Invalid Number"),
        "invalidRange": MessageLookupByLibrary.simpleMessage("Invalid Range"),
        "km": MessageLookupByLibrary.simpleMessage("km"),
        "language": MessageLookupByLibrary.simpleMessage("Language"),
        "lastUpdated": MessageLookupByLibrary.simpleMessage("Last Updated"),
        "legal": MessageLookupByLibrary.simpleMessage("Legal"),
        "likes": MessageLookupByLibrary.simpleMessage("Likes"),
        "loadMore": MessageLookupByLibrary.simpleMessage("Load More"),
        "locale": MessageLookupByLibrary.simpleMessage("en"),
        "location": MessageLookupByLibrary.simpleMessage("Location"),
        "locationDetails":
            MessageLookupByLibrary.simpleMessage("Location Details"),
        "locationName": MessageLookupByLibrary.simpleMessage("Location Name"),
        "locationPermissionRequired": MessageLookupByLibrary.simpleMessage(
            "Location permission required"),
        "locationServices":
            MessageLookupByLibrary.simpleMessage("Location Services"),
        "locationServicesDescription": MessageLookupByLibrary.simpleMessage(
            "Enable or disable location services."),
        "logOut": MessageLookupByLibrary.simpleMessage("Log Out"),
        "logout": MessageLookupByLibrary.simpleMessage("Logout"),
        "makeup": MessageLookupByLibrary.simpleMessage("Makeup"),
        "manageLocations":
            MessageLookupByLibrary.simpleMessage("Manage Locations"),
        "manageWorks": MessageLookupByLibrary.simpleMessage("Manage Works"),
        "memberSince": MessageLookupByLibrary.simpleMessage("Member since"),
        "minutes": MessageLookupByLibrary.simpleMessage("minutes"),
        "minutesAgo": m8,
        "minutesv2": m9,
        "month": MessageLookupByLibrary.simpleMessage("Month"),
        "monthsAgo": m10,
        "myProfile": MessageLookupByLibrary.simpleMessage("My Profile"),
        "nail": MessageLookupByLibrary.simpleMessage("Nail"),
        "newPassword": MessageLookupByLibrary.simpleMessage("New Password"),
        "newRequest": MessageLookupByLibrary.simpleMessage("New Request"),
        "newRequests": MessageLookupByLibrary.simpleMessage("New Requests"),
        "nextWeek": MessageLookupByLibrary.simpleMessage("Next Week"),
        "no": MessageLookupByLibrary.simpleMessage("No"),
        "noActiveSession":
            MessageLookupByLibrary.simpleMessage("No active session found"),
        "noEventsForThisDay":
            MessageLookupByLibrary.simpleMessage("No events for this day"),
        "noEventsToday": MessageLookupByLibrary.simpleMessage(
            "No events scheduled for today"),
        "noImageSelected":
            MessageLookupByLibrary.simpleMessage("No image selected"),
        "noImagesAvailable":
            MessageLookupByLibrary.simpleMessage("No images available"),
        "noImagesGenerated":
            MessageLookupByLibrary.simpleMessage("No images were generated"),
        "noLocationsAvailable":
            MessageLookupByLibrary.simpleMessage("No locations available"),
        "noNotificationsMessage": MessageLookupByLibrary.simpleMessage(
            "You don\'t have any notifications yet."),
        "noNotificationsTitle":
            MessageLookupByLibrary.simpleMessage("No notifications"),
        "noQuotationsFound":
            MessageLookupByLibrary.simpleMessage("No quotations found"),
        "noReviewsYet": MessageLookupByLibrary.simpleMessage("No reviews yet"),
        "noServicesAvailable":
            MessageLookupByLibrary.simpleMessage("No services available"),
        "noStencilsAddedYet":
            MessageLookupByLibrary.simpleMessage("No stencils added yet"),
        "noStencilsWithTag": m11,
        "noStencilsYet":
            MessageLookupByLibrary.simpleMessage("No Stencils Yet"),
        "noStudioPhotoAvailable":
            MessageLookupByLibrary.simpleMessage("No studio photo available"),
        "noTattooWorksAddedYet":
            MessageLookupByLibrary.simpleMessage("No tattoo works added yet"),
        "noUnavailableTimesConfigured": MessageLookupByLibrary.simpleMessage(
            "No unavailable times configured"),
        "noWorkEvidence":
            MessageLookupByLibrary.simpleMessage("No Work Evidence"),
        "noWorksFound": MessageLookupByLibrary.simpleMessage("No Works Found"),
        "notAvailable": MessageLookupByLibrary.simpleMessage("Not Available"),
        "notSelected": MessageLookupByLibrary.simpleMessage("Not Selected"),
        "note": MessageLookupByLibrary.simpleMessage("Note"),
        "notification": MessageLookupByLibrary.simpleMessage("Notification"),
        "notifications": MessageLookupByLibrary.simpleMessage("Notifications"),
        "notificationsDescription": MessageLookupByLibrary.simpleMessage(
            "Enable or disable notifications."),
        "notificationsPermissionRequired": MessageLookupByLibrary.simpleMessage(
            "Notifications permission required"),
        "ok": MessageLookupByLibrary.simpleMessage("OK"),
        "openForReservations":
            MessageLookupByLibrary.simpleMessage("Open for Reservations"),
        "openForReservationsDescription": MessageLookupByLibrary.simpleMessage(
            "Allow clients to book appointments"),
        "openSettings": MessageLookupByLibrary.simpleMessage("Open Settings"),
        "optional": MessageLookupByLibrary.simpleMessage("Optional"),
        "other": MessageLookupByLibrary.simpleMessage("Other"),
        "passwordChangedSuccessfully": MessageLookupByLibrary.simpleMessage(
            "Password changed successfully"),
        "passwordTooShort":
            MessageLookupByLibrary.simpleMessage("Password too short"),
        "passwordsDontMatch":
            MessageLookupByLibrary.simpleMessage("Passwords don\'t match"),
        "pending": MessageLookupByLibrary.simpleMessage("Pending"),
        "permissionRequired":
            MessageLookupByLibrary.simpleMessage("Permission required"),
        "phone": MessageLookupByLibrary.simpleMessage("Phone"),
        "piercing": MessageLookupByLibrary.simpleMessage("Piercing"),
        "pleaseEnterATitle":
            MessageLookupByLibrary.simpleMessage("Please enter a title"),
        "pleaseEnterDescription":
            MessageLookupByLibrary.simpleMessage("Please enter a description"),
        "pleaseProvideReason": MessageLookupByLibrary.simpleMessage(
            "Please provide a reason for cancellation."),
        "pleaseSelectADateRange":
            MessageLookupByLibrary.simpleMessage("Please select a date range"),
        "pleaseSelectAnImage":
            MessageLookupByLibrary.simpleMessage("Please select an image"),
        "pleaseSelectTimeRange":
            MessageLookupByLibrary.simpleMessage("Please select a time range"),
        "popularTags": MessageLookupByLibrary.simpleMessage("Popular Tags"),
        "previousWeek": MessageLookupByLibrary.simpleMessage("Previous Week"),
        "privacyPolicy": MessageLookupByLibrary.simpleMessage("Privacy Policy"),
        "privacyPolicyContent": MessageLookupByLibrary.simpleMessage(
            "Your privacy is important to us. We do not collect personal information without your consent."),
        "proceed": MessageLookupByLibrary.simpleMessage("Proceed"),
        "processingQuotation":
            MessageLookupByLibrary.simpleMessage("Processing Quotation"),
        "processingQuotationMessage": MessageLookupByLibrary.simpleMessage(
            "Please wait while we process your quotation"),
        "profileImage": MessageLookupByLibrary.simpleMessage("Profile Image"),
        "proposedDesigns":
            MessageLookupByLibrary.simpleMessage("Proposed Designs"),
        "publicAgenda": MessageLookupByLibrary.simpleMessage("Public Agenda"),
        "publicAgendaDescription": MessageLookupByLibrary.simpleMessage(
            "Make your agenda visible to clients"),
        "quotationCancelledSuccessfully": MessageLookupByLibrary.simpleMessage(
            "Quotation cancelled successfully"),
        "quotationDate": MessageLookupByLibrary.simpleMessage("Quotation Date"),
        "quotationDetails":
            MessageLookupByLibrary.simpleMessage("Quotation Details"),
        "quotationHistory":
            MessageLookupByLibrary.simpleMessage("Quotation History"),
        "quotationNumber":
            MessageLookupByLibrary.simpleMessage("Quotation Number"),
        "quotationResponseSuccess": MessageLookupByLibrary.simpleMessage(
            "Quotation response sent successfully"),
        "quotationResponseSuccessMessage": MessageLookupByLibrary.simpleMessage(
            "Your response has been sent successfully"),
        "quotationStatusArtistAccepted":
            MessageLookupByLibrary.simpleMessage("Scheduled"),
        "quotationStatusArtistAppealed":
            MessageLookupByLibrary.simpleMessage("Appealed by Customer"),
        "quotationStatusArtistCanceled":
            MessageLookupByLibrary.simpleMessage("Cancelled by You"),
        "quotationStatusArtistPending":
            MessageLookupByLibrary.simpleMessage("New Request"),
        "quotationStatusArtistQuoted":
            MessageLookupByLibrary.simpleMessage("Awaiting Reply"),
        "quotationStatusArtistRejected":
            MessageLookupByLibrary.simpleMessage("Rejected by Customer"),
        "quotationStatusCustomerAccepted":
            MessageLookupByLibrary.simpleMessage("Scheduled"),
        "quotationStatusCustomerAppealed":
            MessageLookupByLibrary.simpleMessage("Awaiting Artist"),
        "quotationStatusCustomerCanceled":
            MessageLookupByLibrary.simpleMessage("Cancelled"),
        "quotationStatusCustomerPending":
            MessageLookupByLibrary.simpleMessage("Awaiting Reply"),
        "quotationStatusCustomerQuoted":
            MessageLookupByLibrary.simpleMessage("Received Quotation"),
        "quotationStatusCustomerRejected":
            MessageLookupByLibrary.simpleMessage("Rejected by You"),
        "quote": MessageLookupByLibrary.simpleMessage("Quote"),
        "quoteDetails": MessageLookupByLibrary.simpleMessage("Quote Details"),
        "quoted": MessageLookupByLibrary.simpleMessage("Quoted"),
        "quotedTheRequest":
            MessageLookupByLibrary.simpleMessage("Quoted the request"),
        "quotes": MessageLookupByLibrary.simpleMessage("Quotes"),
        "range": MessageLookupByLibrary.simpleMessage("Range"),
        "rating": MessageLookupByLibrary.simpleMessage("Rating"),
        "reason": MessageLookupByLibrary.simpleMessage("Reason"),
        "receivedQuotation":
            MessageLookupByLibrary.simpleMessage("Received Quotation"),
        "receivedQuotations":
            MessageLookupByLibrary.simpleMessage("Received Quotations"),
        "referenceImages":
            MessageLookupByLibrary.simpleMessage("Reference Images"),
        "refresh": MessageLookupByLibrary.simpleMessage("Refresh"),
        "reject": MessageLookupByLibrary.simpleMessage("Reject"),
        "rejectAppeal": MessageLookupByLibrary.simpleMessage("Reject Appeal"),
        "rejectQuotation":
            MessageLookupByLibrary.simpleMessage("Reject Quotation"),
        "rejectReasonArtisticDisagreement":
            MessageLookupByLibrary.simpleMessage("Artistic Disagreement"),
        "rejectReasonBeyondExpertise":
            MessageLookupByLibrary.simpleMessage("Beyond Expertise"),
        "rejectReasonChangedMyMind":
            MessageLookupByLibrary.simpleMessage("Changed My Mind"),
        "rejectReasonFoundAnotherArtist":
            MessageLookupByLibrary.simpleMessage("Found Another Artist"),
        "rejectReasonInsufficientDetails":
            MessageLookupByLibrary.simpleMessage("Insufficient Details"),
        "rejectReasonNotWhatIWanted":
            MessageLookupByLibrary.simpleMessage("Not What I Wanted"),
        "rejectReasonOther": MessageLookupByLibrary.simpleMessage("Other"),
        "rejectReasonSchedulingConflict":
            MessageLookupByLibrary.simpleMessage("Scheduling Conflict"),
        "rejectReasonTooExpensive":
            MessageLookupByLibrary.simpleMessage("Too Expensive"),
        "rejectedTheQuotation":
            MessageLookupByLibrary.simpleMessage("rejected the quotation"),
        "rejectionReason":
            MessageLookupByLibrary.simpleMessage("Rejection Reason"),
        "relatedQuotation":
            MessageLookupByLibrary.simpleMessage("Related Quotation"),
        "removeImage": MessageLookupByLibrary.simpleMessage("Remove Image"),
        "reply": MessageLookupByLibrary.simpleMessage("Reply"),
        "request": MessageLookupByLibrary.simpleMessage("Request"),
        "requestDetails":
            MessageLookupByLibrary.simpleMessage("Request Details"),
        "requests": MessageLookupByLibrary.simpleMessage("Requests"),
        "required": MessageLookupByLibrary.simpleMessage("Required"),
        "requiredField": MessageLookupByLibrary.simpleMessage("Required Field"),
        "reset": MessageLookupByLibrary.simpleMessage("Reset"),
        "resetRange": MessageLookupByLibrary.simpleMessage("Reset Range"),
        "resetZoom": MessageLookupByLibrary.simpleMessage("Reset Zoom"),
        "respondToQuotation":
            MessageLookupByLibrary.simpleMessage("Respond to Quotation"),
        "responded": MessageLookupByLibrary.simpleMessage("Responded"),
        "results": MessageLookupByLibrary.simpleMessage("Results"),
        "retry": MessageLookupByLibrary.simpleMessage("Retry"),
        "reviews": MessageLookupByLibrary.simpleMessage("Reviews"),
        "save": MessageLookupByLibrary.simpleMessage("Save"),
        "saveChanges": MessageLookupByLibrary.simpleMessage("Save Changes"),
        "saveConfiguration":
            MessageLookupByLibrary.simpleMessage("Save Configuration"),
        "saveStencil": MessageLookupByLibrary.simpleMessage("Save Stencil"),
        "saveWork": MessageLookupByLibrary.simpleMessage("Save Work"),
        "scheduleAssistant":
            MessageLookupByLibrary.simpleMessage("Schedule Assistant"),
        "scheduleEvent": MessageLookupByLibrary.simpleMessage("Schedule Event"),
        "scheduleInfo": MessageLookupByLibrary.simpleMessage("Schedule Info"),
        "scheduled": MessageLookupByLibrary.simpleMessage("Scheduled"),
        "searchOrCreateTags":
            MessageLookupByLibrary.simpleMessage("Search or create tags"),
        "searchRadius": MessageLookupByLibrary.simpleMessage("Search Radius"),
        "selectDate": MessageLookupByLibrary.simpleMessage("Select Date"),
        "selectDateTime":
            MessageLookupByLibrary.simpleMessage("Select Date & Time"),
        "selectDates": MessageLookupByLibrary.simpleMessage("Select Dates"),
        "selectDuration":
            MessageLookupByLibrary.simpleMessage("Select Duration"),
        "selectEndTime":
            MessageLookupByLibrary.simpleMessage("Select End Time"),
        "selectMultiple":
            MessageLookupByLibrary.simpleMessage("Select Multiple"),
        "selectService": MessageLookupByLibrary.simpleMessage("Select Service"),
        "selectStartTime":
            MessageLookupByLibrary.simpleMessage("Select Start Time"),
        "selectTime": MessageLookupByLibrary.simpleMessage("Select Time"),
        "selectValidTimeRange": MessageLookupByLibrary.simpleMessage(
            "Please select a valid time range"),
        "selected": MessageLookupByLibrary.simpleMessage("Selected"),
        "send": MessageLookupByLibrary.simpleMessage("Send"),
        "sendMessage": MessageLookupByLibrary.simpleMessage("Send Message"),
        "services": MessageLookupByLibrary.simpleMessage("Services"),
        "settings": MessageLookupByLibrary.simpleMessage("Settings"),
        "shortDescription":
            MessageLookupByLibrary.simpleMessage("Short Description"),
        "show": MessageLookupByLibrary.simpleMessage("Show"),
        "showHiddenWorks":
            MessageLookupByLibrary.simpleMessage("Show Hidden Works"),
        "showingAllStencils":
            MessageLookupByLibrary.simpleMessage("Showing all stencils"),
        "source": MessageLookupByLibrary.simpleMessage("Source"),
        "start": MessageLookupByLibrary.simpleMessage("Start"),
        "startDate": MessageLookupByLibrary.simpleMessage("Start Date"),
        "startTime": MessageLookupByLibrary.simpleMessage("Start Time"),
        "state": MessageLookupByLibrary.simpleMessage("State"),
        "status": MessageLookupByLibrary.simpleMessage("Status"),
        "statusAccepted": MessageLookupByLibrary.simpleMessage("Accepted"),
        "statusAppealed": MessageLookupByLibrary.simpleMessage("Appealed"),
        "statusCanceled": MessageLookupByLibrary.simpleMessage("Canceled"),
        "statusPending": MessageLookupByLibrary.simpleMessage("Pending"),
        "statusQuoted": MessageLookupByLibrary.simpleMessage("Quoted"),
        "statusRejected": MessageLookupByLibrary.simpleMessage("Rejected"),
        "stencil": MessageLookupByLibrary.simpleMessage("Stencil"),
        "stencilCreatedSuccessfully": MessageLookupByLibrary.simpleMessage(
            "Stencil created successfully"),
        "stencilDeletedSuccessfully": MessageLookupByLibrary.simpleMessage(
            "Stencil deleted successfully"),
        "stencilDetails":
            MessageLookupByLibrary.simpleMessage("Stencil Details"),
        "stencilGallery":
            MessageLookupByLibrary.simpleMessage("Stencil Gallery"),
        "stencilUpdatedSuccessfully": MessageLookupByLibrary.simpleMessage(
            "Stencil updated successfully"),
        "stencilWillBeHiddenFromPublicView":
            MessageLookupByLibrary.simpleMessage(
                "Stencil will be hidden from public view"),
        "stencilWillBeHighlightedInProfile":
            MessageLookupByLibrary.simpleMessage(
                "Stencil will be highlighted in profile"),
        "stencils": MessageLookupByLibrary.simpleMessage("Stencils"),
        "studioPhoto": MessageLookupByLibrary.simpleMessage("Studio Photo"),
        "submit": MessageLookupByLibrary.simpleMessage("Submit"),
        "suggestions": MessageLookupByLibrary.simpleMessage("Suggestions"),
        "system": MessageLookupByLibrary.simpleMessage("System"),
        "tags": MessageLookupByLibrary.simpleMessage("Tags"),
        "tapToChangeImage":
            MessageLookupByLibrary.simpleMessage("Tap to change image"),
        "tapToSelectImage":
            MessageLookupByLibrary.simpleMessage("Tap to select an image"),
        "tattoo": MessageLookupByLibrary.simpleMessage("Tattoo"),
        "tattooDescriptionHint": MessageLookupByLibrary.simpleMessage(
            "E.g. A minimalist wolf silhouette with geometric patterns"),
        "tattooGenerator":
            MessageLookupByLibrary.simpleMessage("Tattoo Generator"),
        "tattooWorks": MessageLookupByLibrary.simpleMessage("Tattoo Works"),
        "tentativeEvent":
            MessageLookupByLibrary.simpleMessage("Tentative Event"),
        "termsAndConditions":
            MessageLookupByLibrary.simpleMessage("Terms and Conditions"),
        "termsAndConditionsContent": MessageLookupByLibrary.simpleMessage(
            "By using this app, you agree to the terms and conditions outlined here."),
        "time": MessageLookupByLibrary.simpleMessage("Time"),
        "timeSlotUnavailable": MessageLookupByLibrary.simpleMessage(
            "This time slot is unavailable"),
        "title": MessageLookupByLibrary.simpleMessage("Title"),
        "titleCannotBeEmpty":
            MessageLookupByLibrary.simpleMessage("Title cannot be empty"),
        "to": MessageLookupByLibrary.simpleMessage("To"),
        "today": MessageLookupByLibrary.simpleMessage("Today"),
        "toggleFeatured":
            MessageLookupByLibrary.simpleMessage("Toggle Featured"),
        "toggleVisibility":
            MessageLookupByLibrary.simpleMessage("Toggle Visibility"),
        "tryAgainLater":
            MessageLookupByLibrary.simpleMessage("Please try again later"),
        "tryRefreshingThePage": m12,
        "tryRemovingFilters":
            MessageLookupByLibrary.simpleMessage("Try removing filters"),
        "unavailableTime":
            MessageLookupByLibrary.simpleMessage("Unavailable Time"),
        "unavailableTimes":
            MessageLookupByLibrary.simpleMessage("Unavailable Times"),
        "unfeature": MessageLookupByLibrary.simpleMessage("Unfeature"),
        "upcomming": MessageLookupByLibrary.simpleMessage("Upcoming"),
        "update": MessageLookupByLibrary.simpleMessage("Update"),
        "updateStudioPhoto":
            MessageLookupByLibrary.simpleMessage("Update Studio Photo"),
        "username": MessageLookupByLibrary.simpleMessage("Username"),
        "viewAllStencils":
            MessageLookupByLibrary.simpleMessage("View All Stencils"),
        "viewDetails": MessageLookupByLibrary.simpleMessage("View Details"),
        "viewTattooDetails":
            MessageLookupByLibrary.simpleMessage("View Details"),
        "views": MessageLookupByLibrary.simpleMessage("Views"),
        "visibilitySettings":
            MessageLookupByLibrary.simpleMessage("Visibility Settings"),
        "visible": MessageLookupByLibrary.simpleMessage("Visible"),
        "week": MessageLookupByLibrary.simpleMessage("Week"),
        "workCreatedSuccessfully":
            MessageLookupByLibrary.simpleMessage("Work created successfully"),
        "workDeletedSuccessfully":
            MessageLookupByLibrary.simpleMessage("Work deleted successfully"),
        "workDetails": MessageLookupByLibrary.simpleMessage("Work Details"),
        "workEvidence": MessageLookupByLibrary.simpleMessage("Work Evidence"),
        "workUpdatedSuccessfully":
            MessageLookupByLibrary.simpleMessage("Work updated successfully"),
        "workWillBeHiddenFromPublicView": MessageLookupByLibrary.simpleMessage(
            "Work will be hidden from public view"),
        "workWillBeHighlightedInProfile": MessageLookupByLibrary.simpleMessage(
            "Work will be highlighted in profile"),
        "workingHours": MessageLookupByLibrary.simpleMessage("Working Hours"),
        "works": MessageLookupByLibrary.simpleMessage("Works"),
        "yearsAgo": m13,
        "yes": MessageLookupByLibrary.simpleMessage("Yes"),
        "yourResponse": MessageLookupByLibrary.simpleMessage("Your Response"),
        "zoomIn": MessageLookupByLibrary.simpleMessage("Zoom In"),
        "zoomOut": MessageLookupByLibrary.simpleMessage("Zoom Out")
      };
}
