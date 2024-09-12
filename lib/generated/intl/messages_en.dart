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

  static String m0(count) =>
      "${Intl.plural(count, one: '1 day ago', other: '${count} days ago')}";

  static String m1(count) =>
      "${Intl.plural(count, one: '1 hour ago', other: '${count} hours ago')}";

  static String m2(count) =>
      "${Intl.plural(count, one: '1 minute ago', other: '${count} minutes ago')}";

  static String m3(count) =>
      "${Intl.plural(count, one: '1 month ago', other: '${count} months ago')}";

  static String m4(count) =>
      "${Intl.plural(count, one: '1 year ago', other: '${count} years ago')}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "action": MessageLookupByLibrary.simpleMessage("Action"),
        "additionalDetails":
            MessageLookupByLibrary.simpleMessage("Additional Details"),
        "appointmentDate":
            MessageLookupByLibrary.simpleMessage("Appointment Date"),
        "appointmentDuration":
            MessageLookupByLibrary.simpleMessage("Appointment Duration"),
        "barber": MessageLookupByLibrary.simpleMessage("Barber"),
        "cancel": MessageLookupByLibrary.simpleMessage("Cancel"),
        "cancelEvent": MessageLookupByLibrary.simpleMessage("Cancel Event"),
        "cancelQuotationConfirmationMessage":
            MessageLookupByLibrary.simpleMessage(
                "Are you sure you want to cancel this quotation?"),
        "cancelQuotationConfirmationTitle":
            MessageLookupByLibrary.simpleMessage("Cancel Quotation"),
        "cancelled": MessageLookupByLibrary.simpleMessage("Cancelled"),
        "characters": MessageLookupByLibrary.simpleMessage("characters"),
        "completed": MessageLookupByLibrary.simpleMessage("Completed"),
        "confirm": MessageLookupByLibrary.simpleMessage("Confirm"),
        "createEvent": MessageLookupByLibrary.simpleMessage("Create Event"),
        "createQuotation":
            MessageLookupByLibrary.simpleMessage("Create Quotation"),
        "createdAt": MessageLookupByLibrary.simpleMessage("Created At"),
        "daysAgo": m0,
        "delete": MessageLookupByLibrary.simpleMessage("Delete"),
        "description": MessageLookupByLibrary.simpleMessage("Description"),
        "duration": MessageLookupByLibrary.simpleMessage("Duration"),
        "edit": MessageLookupByLibrary.simpleMessage("Edit"),
        "editEvent": MessageLookupByLibrary.simpleMessage("Edit Event"),
        "endDate": MessageLookupByLibrary.simpleMessage("End Date"),
        "errorMsgGuestValidationError":
            MessageLookupByLibrary.simpleMessage("Please select guest"),
        "errorMsgHoursValidationError":
            MessageLookupByLibrary.simpleMessage("Please select hours"),
        "errorMsgNotesValidationError": MessageLookupByLibrary.simpleMessage(
            "Notes exceed the limit of characters"),
        "estimatedCost": MessageLookupByLibrary.simpleMessage("Estimated Cost"),
        "eventColor": MessageLookupByLibrary.simpleMessage("Event Color"),
        "eventDetails": MessageLookupByLibrary.simpleMessage("Event Details"),
        "eventLocation": MessageLookupByLibrary.simpleMessage("Event Location"),
        "eventTitle": MessageLookupByLibrary.simpleMessage("Event Title"),
        "extraInfo": MessageLookupByLibrary.simpleMessage("Extra Info"),
        "getArtistActionText":
            MessageLookupByLibrary.simpleMessage("Get Artist"),
        "guest": MessageLookupByLibrary.simpleMessage("Guest"),
        "haircut": MessageLookupByLibrary.simpleMessage("Haircut"),
        "hour": MessageLookupByLibrary.simpleMessage("Hour"),
        "hoursAgo": m1,
        "invalidNumber": MessageLookupByLibrary.simpleMessage("Invalid Number"),
        "loadMore": MessageLookupByLibrary.simpleMessage("Load More"),
        "locale": MessageLookupByLibrary.simpleMessage("en"),
        "locationDetails":
            MessageLookupByLibrary.simpleMessage("Location Details"),
        "makeup": MessageLookupByLibrary.simpleMessage("Makeup"),
        "minutesAgo": m2,
        "monthsAgo": m3,
        "nail": MessageLookupByLibrary.simpleMessage("Nail"),
        "no": MessageLookupByLibrary.simpleMessage("No"),
        "noWorkEvidence":
            MessageLookupByLibrary.simpleMessage("No Work Evidence"),
        "notSelected": MessageLookupByLibrary.simpleMessage("Not Selected"),
        "note": MessageLookupByLibrary.simpleMessage("Note"),
        "notification": MessageLookupByLibrary.simpleMessage("Notification"),
        "other": MessageLookupByLibrary.simpleMessage("Other"),
        "piercing": MessageLookupByLibrary.simpleMessage("Piercing"),
        "proposedDesigns":
            MessageLookupByLibrary.simpleMessage("Proposed Designs"),
        "quotationCancelledSuccessfully": MessageLookupByLibrary.simpleMessage(
            "Quotation cancelled successfully"),
        "quotationDetails":
            MessageLookupByLibrary.simpleMessage("Quotation Details"),
        "quotationResponseSuccess": MessageLookupByLibrary.simpleMessage(
            "Quotation response sent successfully"),
        "quote": MessageLookupByLibrary.simpleMessage("Quote"),
        "quoteDetails": MessageLookupByLibrary.simpleMessage("Quote Details"),
        "quoted": MessageLookupByLibrary.simpleMessage("Quoted"),
        "quotes": MessageLookupByLibrary.simpleMessage("Quotes"),
        "referenceImages":
            MessageLookupByLibrary.simpleMessage("Reference Images"),
        "reject": MessageLookupByLibrary.simpleMessage("Reject"),
        "rejectAppeal": MessageLookupByLibrary.simpleMessage("Reject Appeal"),
        "rejectionReason":
            MessageLookupByLibrary.simpleMessage("Rejection Reason"),
        "reply": MessageLookupByLibrary.simpleMessage("Reply"),
        "request": MessageLookupByLibrary.simpleMessage("Request"),
        "requestDetails":
            MessageLookupByLibrary.simpleMessage("Request Details"),
        "requests": MessageLookupByLibrary.simpleMessage("Requests"),
        "requiredField": MessageLookupByLibrary.simpleMessage("Required Field"),
        "respondToQuotation":
            MessageLookupByLibrary.simpleMessage("Respond to Quotation"),
        "scheduleEvent": MessageLookupByLibrary.simpleMessage("Schedule Event"),
        "selectService": MessageLookupByLibrary.simpleMessage("Select Service"),
        "send": MessageLookupByLibrary.simpleMessage("Send"),
        "sendMessage": MessageLookupByLibrary.simpleMessage("Send Message"),
        "startDate": MessageLookupByLibrary.simpleMessage("Start Date"),
        "status": MessageLookupByLibrary.simpleMessage("Status"),
        "submit": MessageLookupByLibrary.simpleMessage("Submit"),
        "tattoo": MessageLookupByLibrary.simpleMessage("Tattoo"),
        "upcomming": MessageLookupByLibrary.simpleMessage("Upcoming"),
        "workEvidence": MessageLookupByLibrary.simpleMessage("Work Evidence"),
        "yearsAgo": m4,
        "yes": MessageLookupByLibrary.simpleMessage("Yes"),
        "yourResponse": MessageLookupByLibrary.simpleMessage("Your Response")
      };
}
