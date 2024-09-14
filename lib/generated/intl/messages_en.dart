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
        "accept": MessageLookupByLibrary.simpleMessage("Accept"),
        "action": MessageLookupByLibrary.simpleMessage("Action"),
        "additionalDetails":
            MessageLookupByLibrary.simpleMessage("Additional Details"),
        "and": MessageLookupByLibrary.simpleMessage("and"),
        "appointmentDate":
            MessageLookupByLibrary.simpleMessage("Appointment Date"),
        "appointmentDateTime":
            MessageLookupByLibrary.simpleMessage("Appointment Date & Time"),
        "appointmentDuration":
            MessageLookupByLibrary.simpleMessage("Appointment Duration"),
        "barber": MessageLookupByLibrary.simpleMessage("Barber"),
        "between": MessageLookupByLibrary.simpleMessage("between"),
        "cancel": MessageLookupByLibrary.simpleMessage("Cancel"),
        "cancelEvent": MessageLookupByLibrary.simpleMessage("Cancel Event"),
        "cancelQuotationConfirmationMessage":
            MessageLookupByLibrary.simpleMessage(
                "Are you sure you want to cancel this quotation?"),
        "cancelQuotationConfirmationTitle":
            MessageLookupByLibrary.simpleMessage("Cancel Quotation"),
        "cancelled": MessageLookupByLibrary.simpleMessage("Cancelled"),
        "changeSelection":
            MessageLookupByLibrary.simpleMessage("Change Selection"),
        "characters": MessageLookupByLibrary.simpleMessage("characters"),
        "completed": MessageLookupByLibrary.simpleMessage("Completed"),
        "confirm": MessageLookupByLibrary.simpleMessage("Confirm"),
        "confirmTimeSelection":
            MessageLookupByLibrary.simpleMessage("Confirm Time Selection"),
        "conflictingEvent": MessageLookupByLibrary.simpleMessage(
            "This time conflicts with an existing event"),
        "createEvent": MessageLookupByLibrary.simpleMessage("Create Event"),
        "createQuotation":
            MessageLookupByLibrary.simpleMessage("Create Quotation"),
        "createdAt": MessageLookupByLibrary.simpleMessage("Created At"),
        "daysAgo": m0,
        "delete": MessageLookupByLibrary.simpleMessage("Delete"),
        "description": MessageLookupByLibrary.simpleMessage("Description"),
        "duration": MessageLookupByLibrary.simpleMessage("Duration"),
        "durationCannotBeZero":
            MessageLookupByLibrary.simpleMessage("Duration cannot be zero"),
        "edit": MessageLookupByLibrary.simpleMessage("Edit"),
        "editEvent": MessageLookupByLibrary.simpleMessage("Edit Event"),
        "end": MessageLookupByLibrary.simpleMessage("End"),
        "endDate": MessageLookupByLibrary.simpleMessage("End Date"),
        "errorMsgGuestValidationError":
            MessageLookupByLibrary.simpleMessage("Please select guest"),
        "errorMsgHoursValidationError":
            MessageLookupByLibrary.simpleMessage("Please select hours"),
        "errorMsgNotesValidationError": MessageLookupByLibrary.simpleMessage(
            "Notes exceed the limit of characters"),
        "estimatedCost": MessageLookupByLibrary.simpleMessage("Estimated Cost"),
        "estimatedCostDisclaimer": MessageLookupByLibrary.simpleMessage(
            "This is an estimated cost and may vary based on the final design or service"),
        "eventColor": MessageLookupByLibrary.simpleMessage("Event Color"),
        "eventDetails": MessageLookupByLibrary.simpleMessage("Event Details"),
        "eventLocation": MessageLookupByLibrary.simpleMessage("Event Location"),
        "eventOverlap": MessageLookupByLibrary.simpleMessage("Event Overlap"),
        "eventOverlapMessage": MessageLookupByLibrary.simpleMessage(
            "This event overlaps with an existing event. Do you want to proceed?"),
        "eventTitle": MessageLookupByLibrary.simpleMessage("Event Title"),
        "extraInfo": MessageLookupByLibrary.simpleMessage("Extra Info"),
        "from": MessageLookupByLibrary.simpleMessage("From"),
        "getArtistActionText":
            MessageLookupByLibrary.simpleMessage("Get Artist"),
        "goBack": MessageLookupByLibrary.simpleMessage("Go Back"),
        "guest": MessageLookupByLibrary.simpleMessage("Guest"),
        "haircut": MessageLookupByLibrary.simpleMessage("Haircut"),
        "hour": MessageLookupByLibrary.simpleMessage("Hour"),
        "hours": MessageLookupByLibrary.simpleMessage("hours"),
        "hoursAgo": m1,
        "invalidNumber": MessageLookupByLibrary.simpleMessage("Invalid Number"),
        "loadMore": MessageLookupByLibrary.simpleMessage("Load More"),
        "locale": MessageLookupByLibrary.simpleMessage("en"),
        "locationDetails":
            MessageLookupByLibrary.simpleMessage("Location Details"),
        "makeup": MessageLookupByLibrary.simpleMessage("Makeup"),
        "minutes": MessageLookupByLibrary.simpleMessage("minutes"),
        "minutesAgo": m2,
        "monthsAgo": m3,
        "nail": MessageLookupByLibrary.simpleMessage("Nail"),
        "nextWeek": MessageLookupByLibrary.simpleMessage("Next Week"),
        "no": MessageLookupByLibrary.simpleMessage("No"),
        "noEventsToday": MessageLookupByLibrary.simpleMessage(
            "No events scheduled for today"),
        "noWorkEvidence":
            MessageLookupByLibrary.simpleMessage("No Work Evidence"),
        "notSelected": MessageLookupByLibrary.simpleMessage("Not Selected"),
        "note": MessageLookupByLibrary.simpleMessage("Note"),
        "notification": MessageLookupByLibrary.simpleMessage("Notification"),
        "ok": MessageLookupByLibrary.simpleMessage("OK"),
        "other": MessageLookupByLibrary.simpleMessage("Other"),
        "piercing": MessageLookupByLibrary.simpleMessage("Piercing"),
        "pleaseSelectTimeRange":
            MessageLookupByLibrary.simpleMessage("Please select a time range"),
        "previousWeek": MessageLookupByLibrary.simpleMessage("Previous Week"),
        "proceed": MessageLookupByLibrary.simpleMessage("Proceed"),
        "proposedDesigns":
            MessageLookupByLibrary.simpleMessage("Proposed Designs"),
        "quotationCancelledSuccessfully": MessageLookupByLibrary.simpleMessage(
            "Quotation cancelled successfully"),
        "quotationDate": MessageLookupByLibrary.simpleMessage("Quotation Date"),
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
        "resetZoom": MessageLookupByLibrary.simpleMessage("Reset Zoom"),
        "respondToQuotation":
            MessageLookupByLibrary.simpleMessage("Respond to Quotation"),
        "scheduleAssistant":
            MessageLookupByLibrary.simpleMessage("Schedule Assistant"),
        "scheduleEvent": MessageLookupByLibrary.simpleMessage("Schedule Event"),
        "scheduleInfo": MessageLookupByLibrary.simpleMessage("Schedule Info"),
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
        "start": MessageLookupByLibrary.simpleMessage("Start"),
        "startDate": MessageLookupByLibrary.simpleMessage("Start Date"),
        "status": MessageLookupByLibrary.simpleMessage("Status"),
        "submit": MessageLookupByLibrary.simpleMessage("Submit"),
        "tattoo": MessageLookupByLibrary.simpleMessage("Tattoo"),
        "tentativeEvent":
            MessageLookupByLibrary.simpleMessage("Tentative Event"),
        "timeSlotUnavailable": MessageLookupByLibrary.simpleMessage(
            "This time slot is unavailable"),
        "to": MessageLookupByLibrary.simpleMessage("To"),
        "today": MessageLookupByLibrary.simpleMessage("Today"),
        "upcomming": MessageLookupByLibrary.simpleMessage("Upcoming"),
        "workEvidence": MessageLookupByLibrary.simpleMessage("Work Evidence"),
        "yearsAgo": m4,
        "yes": MessageLookupByLibrary.simpleMessage("Yes"),
        "yourResponse": MessageLookupByLibrary.simpleMessage("Your Response"),
        "zoomIn": MessageLookupByLibrary.simpleMessage("Zoom In"),
        "zoomOut": MessageLookupByLibrary.simpleMessage("Zoom Out")
      };
}
