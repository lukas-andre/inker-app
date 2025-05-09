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

  static String m0(name) => "Artist: ${name}";

  static String m1(artistsFound, range) =>
      "${artistsFound} artists found in ${range}km";

  static String m2(error) => "Could not pick image: ${error}";

  static String m3(count) =>
      "${Intl.plural(count, one: '1 day ago', other: '${count} days ago')}";

  static String m4(message) => "Error loading events: ${message}";

  static String m5(sourceName) => "Filtering by source: ${sourceName}";

  static String m6(tagName) => "Filtering by tag: ${tagName}";

  static String m7(count) =>
      "${Intl.plural(count, one: '1 hour ago', other: '${count} hours ago')}";

  static String m8(hoursv2, minutesv2) =>
      "${hoursv2} hours and ${minutesv2} minutes";

  static String m9(hoursv2) => "${hoursv2} hours";

  static String m10(preview) => "Message: ${preview}";

  static String m11(count, messageWord) => "${count} ${messageWord}";

  static String m12(count) =>
      "${Intl.plural(count, one: '1 minute ago', other: '${count} minutes ago')}";

  static String m13(minutesv2) => "${minutesv2} minutes";

  static String m14(count) =>
      "${Intl.plural(count, one: '1 month ago', other: '${count} months ago')}";

  static String m15(tagName) => "No stencils with tag \'${tagName}\'";

  static String m16(amount) => "Your offer of ${amount} has been submitted";

  static String m17(count) =>
      "${Intl.plural(count, zero: 'No offers', one: '1 offer', other: '${count} offers')}";

  static String m18(count, offerWord) =>
      "You have received ${count} ${offerWord}";

  static String m19(amount, currency) =>
      "Reference budget: ${amount} ${currency}";

  static String m20(status) => "Status: ${status}";

  static String m21(amount) =>
      "The artist updated the offer cost to ${amount} CLP.";

  static String m22(message) => "Try refreshing the page: ${message}";

  static String m23(count) =>
      "${Intl.plural(count, one: '1 year ago', other: '${count} years ago')}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "aboutMe": MessageLookupByLibrary.simpleMessage("About Me"),
        "accept": MessageLookupByLibrary.simpleMessage("Accept"),
        "acceptOffer": MessageLookupByLibrary.simpleMessage("Accept offer"),
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
        "addDesign": MessageLookupByLibrary.simpleMessage("Add Design"),
        "addLocation": MessageLookupByLibrary.simpleMessage("Add Location"),
        "addMoreImages":
            MessageLookupByLibrary.simpleMessage("Add more images"),
        "addPhotosOfYourBestTattooWorkToShowcaseYourStyle":
            MessageLookupByLibrary.simpleMessage(
                "Add photos of your best tattoo work to showcase your style"),
        "addReferenceImages":
            MessageLookupByLibrary.simpleMessage("Add reference images"),
        "addReferenceImagesOptional": MessageLookupByLibrary.simpleMessage(
            "Add reference images (optional)"),
        "addReferenceImagesOrSketches": MessageLookupByLibrary.simpleMessage(
            "Add any reference images or sketches for your proposal."),
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
        "additionalDetailsOptional": MessageLookupByLibrary.simpleMessage(
            "Additional Details (Optional)"),
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
        "alreadyOffered":
            MessageLookupByLibrary.simpleMessage("You\'ve already offered"),
        "alreadySubmittedOffer": MessageLookupByLibrary.simpleMessage(
            "You\'ve already submitted an offer"),
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
        "artistLabel": m0,
        "artistsFound": m1,
        "attachStencilOrGeneratedDesignHint": MessageLookupByLibrary.simpleMessage(
            "You can attach a stencil or a generated design to your quotation"),
        "averageRating": MessageLookupByLibrary.simpleMessage("Average Rating"),
        "awaitingArtist":
            MessageLookupByLibrary.simpleMessage("Awaiting Artist"),
        "awaitingCustomer":
            MessageLookupByLibrary.simpleMessage("Awaiting Customer"),
        "awaitingReply": MessageLookupByLibrary.simpleMessage("Awaiting Reply"),
        "barber": MessageLookupByLibrary.simpleMessage("Barber"),
        "between": MessageLookupByLibrary.simpleMessage("between"),
        "camera": MessageLookupByLibrary.simpleMessage("Camera"),
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
        "cannotSelectStencilAndDesign": MessageLookupByLibrary.simpleMessage(
            "You cannot select both a stencil and a design"),
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
        "clearSelection":
            MessageLookupByLibrary.simpleMessage("Clear Selection"),
        "close": MessageLookupByLibrary.simpleMessage("Close"),
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
        "couldNotGetLocation":
            MessageLookupByLibrary.simpleMessage("Could not get location"),
        "couldNotGetLocationPleaseRetry": MessageLookupByLibrary.simpleMessage(
            "Could not get your location. Please try again."),
        "couldNotPickImage": m2,
        "createEvent": MessageLookupByLibrary.simpleMessage("Create Event"),
        "createNewTag": MessageLookupByLibrary.simpleMessage("Create new tag"),
        "createOpenQuotation":
            MessageLookupByLibrary.simpleMessage("Create Open Quotation"),
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
        "customerLookingForOffers": MessageLookupByLibrary.simpleMessage(
            "Customer is looking for offers!"),
        "date": MessageLookupByLibrary.simpleMessage("Date"),
        "day": MessageLookupByLibrary.simpleMessage("Day"),
        "daysAgo": m3,
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
        "describeYourTattooIdea":
            MessageLookupByLibrary.simpleMessage("Describe your tattoo idea"),
        "description": MessageLookupByLibrary.simpleMessage("Description"),
        "designAddedToFavorites":
            MessageLookupByLibrary.simpleMessage("Design added to favorites"),
        "designRemovedFromFavorites": MessageLookupByLibrary.simpleMessage(
            "Design removed from favorites"),
        "designSavedToYourGeneratedDesigns":
            MessageLookupByLibrary.simpleMessage(
                "Design saved to your generated designs"),
        "directQuotations":
            MessageLookupByLibrary.simpleMessage("Direct Quotations"),
        "done": MessageLookupByLibrary.simpleMessage("Done"),
        "duration": MessageLookupByLibrary.simpleMessage("Duration"),
        "durationCannotBeZero":
            MessageLookupByLibrary.simpleMessage("Duration cannot be zero"),
        "durationMustBePositive":
            MessageLookupByLibrary.simpleMessage("Duration must be positive"),
        "edit": MessageLookupByLibrary.simpleMessage("Edit"),
        "editEvent": MessageLookupByLibrary.simpleMessage("Edit Event"),
        "editLocation": MessageLookupByLibrary.simpleMessage("Edit Location"),
        "editOffer": MessageLookupByLibrary.simpleMessage("Edit offer"),
        "editProfile": MessageLookupByLibrary.simpleMessage("Edit Profile"),
        "editStencil": MessageLookupByLibrary.simpleMessage("Edit Stencil"),
        "editWork": MessageLookupByLibrary.simpleMessage("Edit Work"),
        "email": MessageLookupByLibrary.simpleMessage("Email"),
        "emptyTattooGeneratorMessage": MessageLookupByLibrary.simpleMessage(
            "Enter a description and choose a style\nto generate tattoo designs"),
        "enableLocationServicesAndPermissions":
            MessageLookupByLibrary.simpleMessage(
                "Enable location services and permissions"),
        "end": MessageLookupByLibrary.simpleMessage("End"),
        "endDate": MessageLookupByLibrary.simpleMessage("End Date"),
        "endTime": MessageLookupByLibrary.simpleMessage("End Time"),
        "enterAddress": MessageLookupByLibrary.simpleMessage("Enter address"),
        "enterDistanceKm":
            MessageLookupByLibrary.simpleMessage("Enter distance in km"),
        "enterLocationName":
            MessageLookupByLibrary.simpleMessage("Enter location name"),
        "error": MessageLookupByLibrary.simpleMessage("Error"),
        "errorCreatingQuotation":
            MessageLookupByLibrary.simpleMessage("Error creating quotation"),
        "errorLoadingEvents": m4,
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
        "estimatedCostLabel":
            MessageLookupByLibrary.simpleMessage("Estimated cost (CLP)"),
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
        "exampleAmount": MessageLookupByLibrary.simpleMessage("E.g.: 50000"),
        "expand": MessageLookupByLibrary.simpleMessage("Expand"),
        "extraInfo": MessageLookupByLibrary.simpleMessage("Extra Info"),
        "favorites": MessageLookupByLibrary.simpleMessage("Favorites"),
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
        "filteringBySource": m5,
        "filteringByTag": m6,
        "filters": MessageLookupByLibrary.simpleMessage("Filters"),
        "findingArtists":
            MessageLookupByLibrary.simpleMessage("Finding Artists..."),
        "followers": MessageLookupByLibrary.simpleMessage("Followers"),
        "following": MessageLookupByLibrary.simpleMessage("Following"),
        "from": MessageLookupByLibrary.simpleMessage("From"),
        "fullName": MessageLookupByLibrary.simpleMessage("Full Name"),
        "generate": MessageLookupByLibrary.simpleMessage("Generate"),
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
        "history": MessageLookupByLibrary.simpleMessage("History"),
        "hour": MessageLookupByLibrary.simpleMessage("Hour"),
        "hours": MessageLookupByLibrary.simpleMessage("hours"),
        "hoursAgo": m7,
        "hoursAndMinutes": m8,
        "hoursv2": m9,
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
        "maxTravelDistanceKm": MessageLookupByLibrary.simpleMessage(
            "Maximum travel distance (km)"),
        "memberSince": MessageLookupByLibrary.simpleMessage("Member since"),
        "messageCustomer":
            MessageLookupByLibrary.simpleMessage("Message Customer"),
        "messagePreview": m10,
        "messagesCount": m11,
        "minutes": MessageLookupByLibrary.simpleMessage("minutes"),
        "minutesAgo": m12,
        "minutesv2": m13,
        "month": MessageLookupByLibrary.simpleMessage("Month"),
        "monthsAgo": m14,
        "myProfile": MessageLookupByLibrary.simpleMessage("My Profile"),
        "nail": MessageLookupByLibrary.simpleMessage("Nail"),
        "newPassword": MessageLookupByLibrary.simpleMessage("New Password"),
        "newRequest": MessageLookupByLibrary.simpleMessage("New Request"),
        "newRequests": MessageLookupByLibrary.simpleMessage("New Requests"),
        "nextWeek": MessageLookupByLibrary.simpleMessage("Next Week"),
        "no": MessageLookupByLibrary.simpleMessage("No"),
        "noActiveSession":
            MessageLookupByLibrary.simpleMessage("No active session found"),
        "noDesignsOnFavorites":
            MessageLookupByLibrary.simpleMessage("No designs in favorites"),
        "noDesignsOnHistory":
            MessageLookupByLibrary.simpleMessage("No designs in history"),
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
        "noMessagesYet":
            MessageLookupByLibrary.simpleMessage("No messages yet"),
        "noNotificationsMessage": MessageLookupByLibrary.simpleMessage(
            "You don\'t have any notifications yet."),
        "noNotificationsTitle":
            MessageLookupByLibrary.simpleMessage("No notifications"),
        "noOffersReceived": MessageLookupByLibrary.simpleMessage(
            "You have not received any offers yet"),
        "noOffersYet": MessageLookupByLibrary.simpleMessage("No offers yet"),
        "noQuotationsFound":
            MessageLookupByLibrary.simpleMessage("No quotations found"),
        "noReviewsYet": MessageLookupByLibrary.simpleMessage("No reviews yet"),
        "noServicesAvailable":
            MessageLookupByLibrary.simpleMessage("No services available"),
        "noStencilsAddedYet":
            MessageLookupByLibrary.simpleMessage("No stencils added yet"),
        "noStencilsWithTag": m15,
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
        "notLoggedIn": MessageLookupByLibrary.simpleMessage("Not logged in"),
        "notSelected": MessageLookupByLibrary.simpleMessage("Not Selected"),
        "notSpecified": MessageLookupByLibrary.simpleMessage("Not specified"),
        "note": MessageLookupByLibrary.simpleMessage("Note"),
        "notification": MessageLookupByLibrary.simpleMessage("Notification"),
        "notifications": MessageLookupByLibrary.simpleMessage("Notifications"),
        "notificationsDescription": MessageLookupByLibrary.simpleMessage(
            "Enable or disable notifications."),
        "notificationsPermissionRequired": MessageLookupByLibrary.simpleMessage(
            "Notifications permission required"),
        "offerSubmitted":
            MessageLookupByLibrary.simpleMessage("Offer submitted"),
        "offerSubmittedMessage": MessageLookupByLibrary.simpleMessage(
            "Your offer has been successfully sent to the customer."),
        "offerSubmittedTitle":
            MessageLookupByLibrary.simpleMessage("Offer Submitted!"),
        "offerSubmittedWithAmount": m16,
        "offered": MessageLookupByLibrary.simpleMessage("Offered"),
        "offersAppearHere": MessageLookupByLibrary.simpleMessage(
            "Offers will appear here when you receive them"),
        "offersCount": m17,
        "offersReceived": m18,
        "offersReceivedTitle":
            MessageLookupByLibrary.simpleMessage("Offers received"),
        "ok": MessageLookupByLibrary.simpleMessage("OK"),
        "open": MessageLookupByLibrary.simpleMessage("Open"),
        "openForReservations":
            MessageLookupByLibrary.simpleMessage("Open for Reservations"),
        "openForReservationsDescription": MessageLookupByLibrary.simpleMessage(
            "Allow clients to book appointments"),
        "openQuotationCreatedSuccessfully":
            MessageLookupByLibrary.simpleMessage(
                "Open quotation created successfully"),
        "openQuotationRequest":
            MessageLookupByLibrary.simpleMessage("Open Quotation Request"),
        "openQuotationRequestDesc": MessageLookupByLibrary.simpleMessage(
            "This customer is looking for offers. You can send your quotation to win this project."),
        "openQuotations":
            MessageLookupByLibrary.simpleMessage("Open Quotations"),
        "openSettings": MessageLookupByLibrary.simpleMessage("Open Settings"),
        "optional": MessageLookupByLibrary.simpleMessage("Optional"),
        "optionalAddStencilOrDesign": MessageLookupByLibrary.simpleMessage(
            "Optional: Add stencil or design"),
        "optionalAttachDesign":
            MessageLookupByLibrary.simpleMessage("Optional: Attach a design"),
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
        "photoLibrary": MessageLookupByLibrary.simpleMessage("Photo Library"),
        "piercing": MessageLookupByLibrary.simpleMessage("Piercing"),
        "pleaseEnterATitle":
            MessageLookupByLibrary.simpleMessage("Please enter a title"),
        "pleaseEnterDescription":
            MessageLookupByLibrary.simpleMessage("Please enter a description"),
        "pleaseEnterTravelRadius": MessageLookupByLibrary.simpleMessage(
            "Please enter a travel radius"),
        "pleaseEnterValidPositiveNumber": MessageLookupByLibrary.simpleMessage(
            "Please enter a valid positive number"),
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
        "proposedAppointment":
            MessageLookupByLibrary.simpleMessage("Proposed Appointment"),
        "proposedDesigns":
            MessageLookupByLibrary.simpleMessage("Proposed Designs"),
        "proposedDesignsOptional":
            MessageLookupByLibrary.simpleMessage("Proposed Designs (Optional)"),
        "publicAgenda": MessageLookupByLibrary.simpleMessage("Public Agenda"),
        "publicAgendaDescription": MessageLookupByLibrary.simpleMessage(
            "Make your agenda visible to clients"),
        "quotationAcceptedSuccess":
            MessageLookupByLibrary.simpleMessage("Offer accepted successfully"),
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
        "quotationStatusArtistOpen":
            MessageLookupByLibrary.simpleMessage("Open"),
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
        "quotationStatusCustomerOpen":
            MessageLookupByLibrary.simpleMessage("Open"),
        "quotationStatusCustomerPending":
            MessageLookupByLibrary.simpleMessage("Awaiting Reply"),
        "quotationStatusCustomerQuoted":
            MessageLookupByLibrary.simpleMessage("Received Quotation"),
        "quotationStatusCustomerRejected":
            MessageLookupByLibrary.simpleMessage("Rejected by You"),
        "quotations": MessageLookupByLibrary.simpleMessage("Quotations"),
        "quote": MessageLookupByLibrary.simpleMessage("Quote"),
        "quoteDetails": MessageLookupByLibrary.simpleMessage("Quote Details"),
        "quoted": MessageLookupByLibrary.simpleMessage("Quoted"),
        "quotedTheRequest":
            MessageLookupByLibrary.simpleMessage("Quoted the request"),
        "quotes": MessageLookupByLibrary.simpleMessage("Quotes"),
        "range": MessageLookupByLibrary.simpleMessage("Range"),
        "rating": MessageLookupByLibrary.simpleMessage("Rating"),
        "reason": MessageLookupByLibrary.simpleMessage("Reason"),
        "receivedOffers":
            MessageLookupByLibrary.simpleMessage("Received Offers"),
        "receivedQuotation":
            MessageLookupByLibrary.simpleMessage("Received Quotation"),
        "receivedQuotations":
            MessageLookupByLibrary.simpleMessage("Received Quotations"),
        "referenceBudget": m19,
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
        "reviewAndSubmitOffer": MessageLookupByLibrary.simpleMessage(
            "Review the details and submit your offer to win this project."),
        "reviewDetailsAndSubmitOffer": MessageLookupByLibrary.simpleMessage(
            "Review details and submit your offer"),
        "reviewEachOffer": MessageLookupByLibrary.simpleMessage(
            "Review each offer and chat with the artists"),
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
        "selectGeneratedDesign":
            MessageLookupByLibrary.simpleMessage("Select Generated Design"),
        "selectMultiple":
            MessageLookupByLibrary.simpleMessage("Select Multiple"),
        "selectService": MessageLookupByLibrary.simpleMessage("Select Service"),
        "selectStartTime":
            MessageLookupByLibrary.simpleMessage("Select Start Time"),
        "selectStencil": MessageLookupByLibrary.simpleMessage("Select Stencil"),
        "selectTime": MessageLookupByLibrary.simpleMessage("Select Time"),
        "selectValidTimeRange": MessageLookupByLibrary.simpleMessage(
            "Please select a valid time range"),
        "selected": MessageLookupByLibrary.simpleMessage("Selected"),
        "selectedDesign":
            MessageLookupByLibrary.simpleMessage("Selected design"),
        "selectedGeneratedDesign":
            MessageLookupByLibrary.simpleMessage("Selected Generated Design"),
        "selectedStencil":
            MessageLookupByLibrary.simpleMessage("Selected Stencil"),
        "send": MessageLookupByLibrary.simpleMessage("Send"),
        "sendMessage": MessageLookupByLibrary.simpleMessage("Send Message"),
        "sendOffer": MessageLookupByLibrary.simpleMessage("Send Offer"),
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
        "startChat": MessageLookupByLibrary.simpleMessage("Start chat"),
        "startConversation": MessageLookupByLibrary.simpleMessage(
            "Start the conversation by sending a message"),
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
        "statusWithText": m20,
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
        "submitOffer": MessageLookupByLibrary.simpleMessage("Submit Offer"),
        "submitOpenQuotation":
            MessageLookupByLibrary.simpleMessage("Submit Open Quotation"),
        "submittingOffer":
            MessageLookupByLibrary.simpleMessage("Submitting Offer..."),
        "submittingOfferMessage": MessageLookupByLibrary.simpleMessage(
            "Please wait while your offer is submitted."),
        "suggestions": MessageLookupByLibrary.simpleMessage("Suggestions"),
        "system": MessageLookupByLibrary.simpleMessage("System"),
        "systemOfferUpdate": m21,
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
        "tattooStyleAbstract": MessageLookupByLibrary.simpleMessage("Abstract"),
        "tattooStyleBiomechanical":
            MessageLookupByLibrary.simpleMessage("Biomechanical"),
        "tattooStyleBlackwork":
            MessageLookupByLibrary.simpleMessage("Blackwork"),
        "tattooStyleCeltic": MessageLookupByLibrary.simpleMessage("Celtic"),
        "tattooStyleChicano": MessageLookupByLibrary.simpleMessage("Chicano"),
        "tattooStyleDotwork": MessageLookupByLibrary.simpleMessage("Dotwork"),
        "tattooStyleFineline": MessageLookupByLibrary.simpleMessage("Fineline"),
        "tattooStyleGeometric":
            MessageLookupByLibrary.simpleMessage("Geometric"),
        "tattooStyleIgnorantStyle":
            MessageLookupByLibrary.simpleMessage("Ignorant Style"),
        "tattooStyleJapanese": MessageLookupByLibrary.simpleMessage("Japanese"),
        "tattooStyleMandala": MessageLookupByLibrary.simpleMessage("Mandala"),
        "tattooStyleMinimalist":
            MessageLookupByLibrary.simpleMessage("Minimalist"),
        "tattooStyleNeoJapanese":
            MessageLookupByLibrary.simpleMessage("Neo Japanese"),
        "tattooStyleNeotraditional":
            MessageLookupByLibrary.simpleMessage("Neotraditional"),
        "tattooStyleNewSchool":
            MessageLookupByLibrary.simpleMessage("New School"),
        "tattooStyleOrnamental":
            MessageLookupByLibrary.simpleMessage("Ornamental"),
        "tattooStyleRealism": MessageLookupByLibrary.simpleMessage("Realism"),
        "tattooStyleSurrealism":
            MessageLookupByLibrary.simpleMessage("Surrealism"),
        "tattooStyleTraditionalAmerican":
            MessageLookupByLibrary.simpleMessage("Traditional American"),
        "tattooStyleTribal": MessageLookupByLibrary.simpleMessage("Tribal"),
        "tattooStyleWatercolor":
            MessageLookupByLibrary.simpleMessage("Watercolor"),
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
        "tryAgain": MessageLookupByLibrary.simpleMessage("Try Again"),
        "tryAgainLater":
            MessageLookupByLibrary.simpleMessage("Please try again later"),
        "tryRefreshingThePage": m22,
        "tryRemovingFilters":
            MessageLookupByLibrary.simpleMessage("Try removing filters"),
        "typeAMessage": MessageLookupByLibrary.simpleMessage("Type a message"),
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
        "viewOffers": MessageLookupByLibrary.simpleMessage("View Offers"),
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
        "yearsAgo": m23,
        "yes": MessageLookupByLibrary.simpleMessage("Yes"),
        "yourOffer": MessageLookupByLibrary.simpleMessage("Your Offer"),
        "yourResponse": MessageLookupByLibrary.simpleMessage("Your Response"),
        "zoomIn": MessageLookupByLibrary.simpleMessage("Zoom In"),
        "zoomOut": MessageLookupByLibrary.simpleMessage("Zoom Out")
      };
}
