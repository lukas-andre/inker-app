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

  static String m2(count) =>
      "${Intl.plural(count, one: '1 hour ago', other: '${count} hours ago')}";

  static String m3(hoursv2, minutesv2) =>
      "${hoursv2} hours and ${minutesv2} minutes";

  static String m4(hoursv2) => "${hoursv2} hours";

  static String m5(count) =>
      "${Intl.plural(count, one: '1 minute ago', other: '${count} minutes ago')}";

  static String m6(minutesv2) => "${minutesv2} minutes";

  static String m7(count) =>
      "${Intl.plural(count, one: '1 month ago', other: '${count} months ago')}";

  static String m8(count) =>
      "${Intl.plural(count, one: '1 year ago', other: '${count} years ago')}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "accept": MessageLookupByLibrary.simpleMessage("Accept"),
        "acceptQuotation":
            MessageLookupByLibrary.simpleMessage("Accept Quotation"),
        "accepted": MessageLookupByLibrary.simpleMessage("Accepted"),
        "acceptedTheQuotation":
            MessageLookupByLibrary.simpleMessage("accepted the quotation"),
        "accountSettings":
            MessageLookupByLibrary.simpleMessage("Account Settings"),
        "action": MessageLookupByLibrary.simpleMessage("Action"),
        "addDescription":
            MessageLookupByLibrary.simpleMessage("Add Description"),
        "addStudioPhoto":
            MessageLookupByLibrary.simpleMessage("Add Studio Photo"),
        "additionalDetails":
            MessageLookupByLibrary.simpleMessage("Additional Details"),
        "address": MessageLookupByLibrary.simpleMessage("Address"),
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
        "appointmentDate":
            MessageLookupByLibrary.simpleMessage("Appointment Date"),
        "appointmentDateChangedFrom": MessageLookupByLibrary.simpleMessage(
            "Appointment date changed from"),
        "appointmentDateTime":
            MessageLookupByLibrary.simpleMessage("Appointment Date & Time"),
        "appointmentDuration":
            MessageLookupByLibrary.simpleMessage("Appointment Duration"),
        "areYouSureLogout": MessageLookupByLibrary.simpleMessage(
            "Are you sure you want to log out?"),
        "artist": MessageLookupByLibrary.simpleMessage("Artist"),
        "artistsFound": m0,
        "awaitingArtist":
            MessageLookupByLibrary.simpleMessage("Awaiting Artist"),
        "awaitingCustomer":
            MessageLookupByLibrary.simpleMessage("Awaiting Customer"),
        "awaitingReply": MessageLookupByLibrary.simpleMessage("Awaiting Reply"),
        "barber": MessageLookupByLibrary.simpleMessage("Barber"),
        "between": MessageLookupByLibrary.simpleMessage("between"),
        "cancel": MessageLookupByLibrary.simpleMessage("Cancel"),
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
        "change": MessageLookupByLibrary.simpleMessage("Change"),
        "changeImage": MessageLookupByLibrary.simpleMessage("Change Image"),
        "changePassword":
            MessageLookupByLibrary.simpleMessage("Change Password"),
        "changeSelection":
            MessageLookupByLibrary.simpleMessage("Change Selection"),
        "changedStatusFrom":
            MessageLookupByLibrary.simpleMessage("changed the status from"),
        "characters": MessageLookupByLibrary.simpleMessage("characters"),
        "chooseImage": MessageLookupByLibrary.simpleMessage("Choose Image"),
        "city": MessageLookupByLibrary.simpleMessage("City"),
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
        "createQuotation":
            MessageLookupByLibrary.simpleMessage("Create Quotation"),
        "createdAt": MessageLookupByLibrary.simpleMessage("Created At"),
        "currentPassword":
            MessageLookupByLibrary.simpleMessage("Current Password"),
        "currentStatus": MessageLookupByLibrary.simpleMessage("Current Status"),
        "customer": MessageLookupByLibrary.simpleMessage("Customer"),
        "date": MessageLookupByLibrary.simpleMessage("Date"),
        "daysAgo": m1,
        "delete": MessageLookupByLibrary.simpleMessage("Delete"),
        "deleteAccount": MessageLookupByLibrary.simpleMessage("Delete Account"),
        "deleteAccountWarning": MessageLookupByLibrary.simpleMessage(
            "Are you sure you want to delete your account? This action is irreversible and will delete all data associated with your account."),
        "description": MessageLookupByLibrary.simpleMessage("Description"),
        "done": MessageLookupByLibrary.simpleMessage("Done"),
        "duration": MessageLookupByLibrary.simpleMessage("Duration"),
        "durationCannotBeZero":
            MessageLookupByLibrary.simpleMessage("Duration cannot be zero"),
        "edit": MessageLookupByLibrary.simpleMessage("Edit"),
        "editEvent": MessageLookupByLibrary.simpleMessage("Edit Event"),
        "editProfile": MessageLookupByLibrary.simpleMessage("Edit Profile"),
        "email": MessageLookupByLibrary.simpleMessage("Email"),
        "end": MessageLookupByLibrary.simpleMessage("End"),
        "endDate": MessageLookupByLibrary.simpleMessage("End Date"),
        "error": MessageLookupByLibrary.simpleMessage("Error"),
        "errorMsgGuestValidationError":
            MessageLookupByLibrary.simpleMessage("Please select guest"),
        "errorMsgHoursValidationError":
            MessageLookupByLibrary.simpleMessage("Please select hours"),
        "errorMsgNotesValidationError": MessageLookupByLibrary.simpleMessage(
            "Notes exceed the limit of characters"),
        "estimatedCost": MessageLookupByLibrary.simpleMessage("Estimated Cost"),
        "estimatedCostChangedFrom":
            MessageLookupByLibrary.simpleMessage("Estimated cost changed from"),
        "estimatedCostDisclaimer": MessageLookupByLibrary.simpleMessage(
            "This is an estimated cost and may vary based on the final design or service"),
        "eventColor": MessageLookupByLibrary.simpleMessage("Event Color"),
        "eventDetails": MessageLookupByLibrary.simpleMessage("Event Details"),
        "eventLocation": MessageLookupByLibrary.simpleMessage("Event Location"),
        "eventOverlap": MessageLookupByLibrary.simpleMessage("Event Overlap"),
        "eventOverlapMessage": MessageLookupByLibrary.simpleMessage(
            "This event overlaps with an existing event. Do you want to proceed?"),
        "eventTitle": MessageLookupByLibrary.simpleMessage("Event Title"),
        "expand": MessageLookupByLibrary.simpleMessage("Expand"),
        "extraInfo": MessageLookupByLibrary.simpleMessage("Extra Info"),
        "followers": MessageLookupByLibrary.simpleMessage("Followers"),
        "following": MessageLookupByLibrary.simpleMessage("Following"),
        "from": MessageLookupByLibrary.simpleMessage("From"),
        "fullName": MessageLookupByLibrary.simpleMessage("Full Name"),
        "genres": MessageLookupByLibrary.simpleMessage("Genres"),
        "getArtistActionText":
            MessageLookupByLibrary.simpleMessage("Get Artist"),
        "goBack": MessageLookupByLibrary.simpleMessage("Go Back"),
        "guest": MessageLookupByLibrary.simpleMessage("Guest"),
        "haircut": MessageLookupByLibrary.simpleMessage("Haircut"),
        "hour": MessageLookupByLibrary.simpleMessage("Hour"),
        "hours": MessageLookupByLibrary.simpleMessage("hours"),
        "hoursAgo": m2,
        "hoursAndMinutes": m3,
        "hoursv2": m4,
        "invalidNumber": MessageLookupByLibrary.simpleMessage("Invalid Number"),
        "invalidRange": MessageLookupByLibrary.simpleMessage("Invalid Range"),
        "km": MessageLookupByLibrary.simpleMessage("km"),
        "language": MessageLookupByLibrary.simpleMessage("Language"),
        "legal": MessageLookupByLibrary.simpleMessage("Legal"),
        "loadMore": MessageLookupByLibrary.simpleMessage("Load More"),
        "locale": MessageLookupByLibrary.simpleMessage("en"),
        "location": MessageLookupByLibrary.simpleMessage("Location"),
        "locationDetails":
            MessageLookupByLibrary.simpleMessage("Location Details"),
        "locationPermissionRequired": MessageLookupByLibrary.simpleMessage(
            "Location permission required"),
        "locationServices":
            MessageLookupByLibrary.simpleMessage("Location Services"),
        "locationServicesDescription": MessageLookupByLibrary.simpleMessage(
            "Enable or disable location services."),
        "logOut": MessageLookupByLibrary.simpleMessage("Log Out"),
        "logout": MessageLookupByLibrary.simpleMessage("Logout"),
        "makeup": MessageLookupByLibrary.simpleMessage("Makeup"),
        "memberSince": MessageLookupByLibrary.simpleMessage("Member since"),
        "minutes": MessageLookupByLibrary.simpleMessage("minutes"),
        "minutesAgo": m5,
        "minutesv2": m6,
        "monthsAgo": m7,
        "myProfile": MessageLookupByLibrary.simpleMessage("My Profile"),
        "nail": MessageLookupByLibrary.simpleMessage("Nail"),
        "newPassword": MessageLookupByLibrary.simpleMessage("New Password"),
        "newRequest": MessageLookupByLibrary.simpleMessage("New Request"),
        "newRequests": MessageLookupByLibrary.simpleMessage("New Requests"),
        "nextWeek": MessageLookupByLibrary.simpleMessage("Next Week"),
        "no": MessageLookupByLibrary.simpleMessage("No"),
        "noEventsToday": MessageLookupByLibrary.simpleMessage(
            "No events scheduled for today"),
        "noImageSelected":
            MessageLookupByLibrary.simpleMessage("No image selected"),
        "noImagesAvailable":
            MessageLookupByLibrary.simpleMessage("No images available"),
        "noNotificationsMessage": MessageLookupByLibrary.simpleMessage(
            "You don\'t have any notifications yet."),
        "noNotificationsTitle":
            MessageLookupByLibrary.simpleMessage("No notifications"),
        "noQuotationsFound":
            MessageLookupByLibrary.simpleMessage("No quotations found"),
        "noReviewsYet": MessageLookupByLibrary.simpleMessage("No reviews yet"),
        "noServicesAvailable":
            MessageLookupByLibrary.simpleMessage("No services available"),
        "noStudioPhotoAvailable":
            MessageLookupByLibrary.simpleMessage("No studio photo available"),
        "noWorkEvidence":
            MessageLookupByLibrary.simpleMessage("No Work Evidence"),
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
        "openSettings": MessageLookupByLibrary.simpleMessage("Open Settings"),
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
        "pleaseSelectTimeRange":
            MessageLookupByLibrary.simpleMessage("Please select a time range"),
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
        "retry": MessageLookupByLibrary.simpleMessage("Retry"),
        "save": MessageLookupByLibrary.simpleMessage("Save"),
        "saveChanges": MessageLookupByLibrary.simpleMessage("Save Changes"),
        "scheduleAssistant":
            MessageLookupByLibrary.simpleMessage("Schedule Assistant"),
        "scheduleEvent": MessageLookupByLibrary.simpleMessage("Schedule Event"),
        "scheduleInfo": MessageLookupByLibrary.simpleMessage("Schedule Info"),
        "scheduled": MessageLookupByLibrary.simpleMessage("Scheduled"),
        "searchRadius": MessageLookupByLibrary.simpleMessage("Search Radius"),
        "selectDate": MessageLookupByLibrary.simpleMessage("Select Date"),
        "selectDateTime":
            MessageLookupByLibrary.simpleMessage("Select Date & Time"),
        "selectDuration":
            MessageLookupByLibrary.simpleMessage("Select Duration"),
        "selectEndTime":
            MessageLookupByLibrary.simpleMessage("Select End Time"),
        "selectService": MessageLookupByLibrary.simpleMessage("Select Service"),
        "selectStartTime":
            MessageLookupByLibrary.simpleMessage("Select Start Time"),
        "selectTime": MessageLookupByLibrary.simpleMessage("Select Time"),
        "selectValidTimeRange": MessageLookupByLibrary.simpleMessage(
            "Please select a valid time range"),
        "send": MessageLookupByLibrary.simpleMessage("Send"),
        "sendMessage": MessageLookupByLibrary.simpleMessage("Send Message"),
        "services": MessageLookupByLibrary.simpleMessage("Services"),
        "settings": MessageLookupByLibrary.simpleMessage("Settings"),
        "shortDescription":
            MessageLookupByLibrary.simpleMessage("Short Description"),
        "start": MessageLookupByLibrary.simpleMessage("Start"),
        "startDate": MessageLookupByLibrary.simpleMessage("Start Date"),
        "state": MessageLookupByLibrary.simpleMessage("State"),
        "status": MessageLookupByLibrary.simpleMessage("Status"),
        "statusAccepted": MessageLookupByLibrary.simpleMessage("Accepted"),
        "statusAppealed": MessageLookupByLibrary.simpleMessage("Appealed"),
        "statusCanceled": MessageLookupByLibrary.simpleMessage("Canceled"),
        "statusPending": MessageLookupByLibrary.simpleMessage("Pending"),
        "statusQuoted": MessageLookupByLibrary.simpleMessage("Quoted"),
        "statusRejected": MessageLookupByLibrary.simpleMessage("Rejected"),
        "studioPhoto": MessageLookupByLibrary.simpleMessage("Studio Photo"),
        "submit": MessageLookupByLibrary.simpleMessage("Submit"),
        "system": MessageLookupByLibrary.simpleMessage("System"),
        "tags": MessageLookupByLibrary.simpleMessage("Tags"),
        "tattoo": MessageLookupByLibrary.simpleMessage("Tattoo"),
        "tentativeEvent":
            MessageLookupByLibrary.simpleMessage("Tentative Event"),
        "termsAndConditions":
            MessageLookupByLibrary.simpleMessage("Terms and Conditions"),
        "termsAndConditionsContent": MessageLookupByLibrary.simpleMessage(
            "By using this app, you agree to the terms and conditions outlined here."),
        "time": MessageLookupByLibrary.simpleMessage("Time"),
        "timeSlotUnavailable": MessageLookupByLibrary.simpleMessage(
            "This time slot is unavailable"),
        "to": MessageLookupByLibrary.simpleMessage("To"),
        "today": MessageLookupByLibrary.simpleMessage("Today"),
        "upcomming": MessageLookupByLibrary.simpleMessage("Upcoming"),
        "updateStudioPhoto":
            MessageLookupByLibrary.simpleMessage("Update Studio Photo"),
        "username": MessageLookupByLibrary.simpleMessage("Username"),
        "viewDetails": MessageLookupByLibrary.simpleMessage("View Details"),
        "workEvidence": MessageLookupByLibrary.simpleMessage("Work Evidence"),
        "yearsAgo": m8,
        "yes": MessageLookupByLibrary.simpleMessage("Yes"),
        "yourResponse": MessageLookupByLibrary.simpleMessage("Your Response"),
        "zoomIn": MessageLookupByLibrary.simpleMessage("Zoom In"),
        "zoomOut": MessageLookupByLibrary.simpleMessage("Zoom Out")
      };
}
