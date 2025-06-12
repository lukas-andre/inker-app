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
      "${Intl.plural(count, zero: 'No artists found', one: '1 artist found', other: '${count} artists found')}";

  static String m1(name) => "Artist: ${name}";

  static String m2(amount, currency) =>
      "The artist updated the offer cost to ${amount} ${currency}";

  static String m3(artistsFound, range) =>
      "${artistsFound} artists found in ${range}km";

  static String m4(error) => "Could not pick image: ${error}";

  static String m5(count) =>
      "${Intl.plural(count, one: '1 day ago', other: '${count} days ago')}";

  static String m6(message) => "Error loading event details: ${message}";

  static String m7(message) => "Error loading events: ${message}";

  static String m8(message) => "Error loading open quotations: ${message}";

  static String m9(sourceName) => "Filtering by source: ${sourceName}";

  static String m10(tagName) => "Filtering by tag: ${tagName}";

  static String m11(count) =>
      "${Intl.plural(count, zero: 'No followers', one: '1 follower', other: '${count} followers')}";

  static String m12(count) =>
      "${Intl.plural(count, one: '1 hour ago', other: '${count} hours ago')}";

  static String m13(hoursv2, minutesv2) =>
      "${hoursv2} hours and ${minutesv2} minutes";

  static String m14(hoursv2) => "${hoursv2} hours";

  static String m15(distance) => "Max distance: ${distance} km";

  static String m16(preview) => "Message: ${preview}";

  static String m17(count, messageWord) => "${count} ${messageWord}";

  static String m18(length) =>
      "Description must be at least ${length} characters";

  static String m19(rating) => "Minimum Rating: ${rating}";

  static String m20(count) =>
      "${Intl.plural(count, one: '1 minute ago', other: '${count} minutes ago')}";

  static String m21(minutesv2) => "${minutesv2} minutes";

  static String m22(count) =>
      "${Intl.plural(count, one: '1 month ago', other: '${count} months ago')}";

  static String m23(tagName) => "No stencils with tag \'${tagName}\'";

  static String m24(amount) => "Your offer of ${amount} has been submitted";

  static String m25(count) =>
      "${Intl.plural(count, zero: 'No offers', one: '1 offer', other: '${count} offers')}";

  static String m26(count, offerWord) =>
      "You have received ${count} ${offerWord}";

  static String m27(amount, currency) =>
      "Reference budget: ${amount} ${currency}";

  static String m28(status) => "Status: ${status}";

  static String m29(amount) =>
      "The artist updated the offer cost to ${amount} CLP.";

  static String m30(count) =>
      "${Intl.plural(count, zero: 'No reviews yet', one: '1 review', other: '${count} reviews')}";

  static String m31(message) => "Try refreshing the page: ${message}";

  static String m32(count) =>
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
        "addPhoto": MessageLookupByLibrary.simpleMessage("Add Photo"),
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
        "additionalInformation":
            MessageLookupByLibrary.simpleMessage("Additional Information"),
        "address": MessageLookupByLibrary.simpleMessage("Address"),
        "addressDetails":
            MessageLookupByLibrary.simpleMessage("Address Details"),
        "aftercarePeriod":
            MessageLookupByLibrary.simpleMessage("Aftercare Period"),
        "agenda": MessageLookupByLibrary.simpleMessage("Agenda"),
        "agendaSettings":
            MessageLookupByLibrary.simpleMessage("Agenda Settings"),
        "all": MessageLookupByLibrary.simpleMessage("All"),
        "allConsentsCompleted":
            MessageLookupByLibrary.simpleMessage("All consent forms completed"),
        "allOtherStencils":
            MessageLookupByLibrary.simpleMessage("All Other Stencils"),
        "allSources": MessageLookupByLibrary.simpleMessage("All Sources"),
        "allStencils": MessageLookupByLibrary.simpleMessage("All Stencils"),
        "alreadyOffered":
            MessageLookupByLibrary.simpleMessage("You\'ve already offered"),
        "alreadySubmittedOffer": MessageLookupByLibrary.simpleMessage(
            "You\'ve already submitted an offer"),
        "and": MessageLookupByLibrary.simpleMessage("and"),
        "anonymous": MessageLookupByLibrary.simpleMessage("Anonymous"),
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
        "appointmentCanceled": MessageLookupByLibrary.simpleMessage(
            "Appointment canceled successfully"),
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
        "appointmentNotFound":
            MessageLookupByLibrary.simpleMessage("Appointment not found"),
        "appointmentRescheduled": MessageLookupByLibrary.simpleMessage(
            "Appointment rescheduled successfully"),
        "appointmentsAvailable":
            MessageLookupByLibrary.simpleMessage("Appointments available"),
        "april": MessageLookupByLibrary.simpleMessage("April"),
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
        "artistFound": m0,
        "artistLabel": m1,
        "artistUpdatedOfferCost": m2,
        "artisticDisagreement":
            MessageLookupByLibrary.simpleMessage("Artistic Disagreement"),
        "artistsFound": m3,
        "attachStencilOrGeneratedDesignHint": MessageLookupByLibrary.simpleMessage(
            "You can attach a stencil or a generated design to your quotation"),
        "august": MessageLookupByLibrary.simpleMessage("August"),
        "averageRating": MessageLookupByLibrary.simpleMessage("Average Rating"),
        "awaitingArtist":
            MessageLookupByLibrary.simpleMessage("Awaiting Artist"),
        "awaitingCustomer":
            MessageLookupByLibrary.simpleMessage("Awaiting Customer"),
        "awaitingReply": MessageLookupByLibrary.simpleMessage("Awaiting Reply"),
        "backToGallery":
            MessageLookupByLibrary.simpleMessage("Back to Gallery"),
        "backToSearch": MessageLookupByLibrary.simpleMessage("Back to Search"),
        "backToStencils":
            MessageLookupByLibrary.simpleMessage("Back to Stencils"),
        "backToTattoos":
            MessageLookupByLibrary.simpleMessage("Back to Tattoos"),
        "barber": MessageLookupByLibrary.simpleMessage("Barber"),
        "best": MessageLookupByLibrary.simpleMessage("Best"),
        "between": MessageLookupByLibrary.simpleMessage("between"),
        "beyondExpertise":
            MessageLookupByLibrary.simpleMessage("Beyond Expertise"),
        "bookAppointment":
            MessageLookupByLibrary.simpleMessage("Book Appointment"),
        "budget": MessageLookupByLibrary.simpleMessage("Budget"),
        "callArtist": MessageLookupByLibrary.simpleMessage("Call Artist"),
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
        "canceled": MessageLookupByLibrary.simpleMessage("Canceled"),
        "canceledTheQuotation":
            MessageLookupByLibrary.simpleMessage("canceled the quotation"),
        "cancellationReason":
            MessageLookupByLibrary.simpleMessage("Cancellation Reason"),
        "cancelled": MessageLookupByLibrary.simpleMessage("Cancelled"),
        "cannotDeleteLastLocation": MessageLookupByLibrary.simpleMessage(
            "Cannot delete the last location. Artists must have at least one location."),
        "cannotOpenDetailsRightNowTryAgainLater":
            MessageLookupByLibrary.simpleMessage(
                "Cannot open details right now. Try again later."),
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
        "changedMyMind":
            MessageLookupByLibrary.simpleMessage("Changed My Mind"),
        "changedStatusFrom":
            MessageLookupByLibrary.simpleMessage("changed the status from"),
        "characters": MessageLookupByLibrary.simpleMessage("characters"),
        "chatDirectlyWithArtist": MessageLookupByLibrary.simpleMessage(
            "Chat directly with the artist"),
        "chooseGeneratedDesign":
            MessageLookupByLibrary.simpleMessage("Choose Generated Design"),
        "chooseImage": MessageLookupByLibrary.simpleMessage("Choose Image"),
        "chooseStyle": MessageLookupByLibrary.simpleMessage("Choose a style"),
        "city": MessageLookupByLibrary.simpleMessage("City"),
        "clear": MessageLookupByLibrary.simpleMessage("Clear"),
        "clearFilter": MessageLookupByLibrary.simpleMessage("Clear Filter"),
        "clearFilters": MessageLookupByLibrary.simpleMessage("Clear Filters"),
        "clearSearch": MessageLookupByLibrary.simpleMessage("Clear Search"),
        "clearSelection":
            MessageLookupByLibrary.simpleMessage("Clear Selection"),
        "close": MessageLookupByLibrary.simpleMessage("Close"),
        "collapse": MessageLookupByLibrary.simpleMessage("Collapse"),
        "comment": MessageLookupByLibrary.simpleMessage("Comment"),
        "completed": MessageLookupByLibrary.simpleMessage("completed"),
        "confirm": MessageLookupByLibrary.simpleMessage("Confirm"),
        "confirmDeletion":
            MessageLookupByLibrary.simpleMessage("Confirm Deletion"),
        "confirmDeletionMessage": MessageLookupByLibrary.simpleMessage(
            "Are you sure you want to delete your account? This action cannot be undone."),
        "confirmEvent": MessageLookupByLibrary.simpleMessage("Confirm Event"),
        "confirmEventMessage": MessageLookupByLibrary.simpleMessage(
            "Are you sure you want to confirm this event?"),
        "confirmLogout": MessageLookupByLibrary.simpleMessage("Confirm Logout"),
        "confirmNewPassword":
            MessageLookupByLibrary.simpleMessage("Confirm New Password"),
        "confirmPassword":
            MessageLookupByLibrary.simpleMessage("Confirm Password"),
        "confirmTimeSelection":
            MessageLookupByLibrary.simpleMessage("Confirm Time Selection"),
        "confirmationPending":
            MessageLookupByLibrary.simpleMessage("Confirmation Pending"),
        "confirmed": MessageLookupByLibrary.simpleMessage("Confirmed"),
        "conflictingEvent": MessageLookupByLibrary.simpleMessage(
            "This time conflicts with an existing event"),
        "consentFormDescription": MessageLookupByLibrary.simpleMessage(
            "Please review and complete this consent form"),
        "consentForms": MessageLookupByLibrary.simpleMessage("Consent Forms"),
        "consentProgress":
            MessageLookupByLibrary.simpleMessage("Consent Progress"),
        "consentRequired":
            MessageLookupByLibrary.simpleMessage("Consent Required"),
        "consentTemplates":
            MessageLookupByLibrary.simpleMessage("Consent Templates"),
        "consents": MessageLookupByLibrary.simpleMessage("Consents"),
        "contactArtist": MessageLookupByLibrary.simpleMessage(
            "Please contact the artist for further details."),
        "contactInfo":
            MessageLookupByLibrary.simpleMessage("Contact Information"),
        "contactInformation":
            MessageLookupByLibrary.simpleMessage("Contact Information"),
        "continue_": MessageLookupByLibrary.simpleMessage("Continue"),
        "copiedToClipboard":
            MessageLookupByLibrary.simpleMessage("Copied to clipboard"),
        "couldNotGetLocation":
            MessageLookupByLibrary.simpleMessage("Could not get location"),
        "couldNotGetLocationPleaseRetry": MessageLookupByLibrary.simpleMessage(
            "Could not get your location. Please try again."),
        "couldNotLoadImage":
            MessageLookupByLibrary.simpleMessage("Could not load image"),
        "couldNotPickImage": m4,
        "createEvent": MessageLookupByLibrary.simpleMessage("Create Event"),
        "createFirstTemplate":
            MessageLookupByLibrary.simpleMessage("Create First Template"),
        "createNewTag": MessageLookupByLibrary.simpleMessage("Create new tag"),
        "createOpenQuotation":
            MessageLookupByLibrary.simpleMessage("Create Open Quotation"),
        "createQuotation":
            MessageLookupByLibrary.simpleMessage("Create Quotation"),
        "createQuotationForTattoo":
            MessageLookupByLibrary.simpleMessage("Create Quotation"),
        "createYourOwnDesign":
            MessageLookupByLibrary.simpleMessage("Create Your Own Design"),
        "created": MessageLookupByLibrary.simpleMessage("Created"),
        "createdAt": MessageLookupByLibrary.simpleMessage("Created At"),
        "currency": MessageLookupByLibrary.simpleMessage("USD"),
        "currentPassword":
            MessageLookupByLibrary.simpleMessage("Current Password"),
        "currentStatus": MessageLookupByLibrary.simpleMessage("Current Status"),
        "customRange": MessageLookupByLibrary.simpleMessage("Custom Range"),
        "customer": MessageLookupByLibrary.simpleMessage("Customer"),
        "customerLookingForOffers": MessageLookupByLibrary.simpleMessage(
            "Customer is looking for offers!"),
        "date": MessageLookupByLibrary.simpleMessage("Date"),
        "day": MessageLookupByLibrary.simpleMessage("Day"),
        "daysAgo": m5,
        "december": MessageLookupByLibrary.simpleMessage("December"),
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
        "direct": MessageLookupByLibrary.simpleMessage("Direct"),
        "directQuotations":
            MessageLookupByLibrary.simpleMessage("Direct Quotations"),
        "directions": MessageLookupByLibrary.simpleMessage("Directions"),
        "done": MessageLookupByLibrary.simpleMessage("Done"),
        "duration": MessageLookupByLibrary.simpleMessage("Duration"),
        "durationCannotBeZero":
            MessageLookupByLibrary.simpleMessage("Duration cannot be zero"),
        "durationMustBePositive":
            MessageLookupByLibrary.simpleMessage("Duration must be positive"),
        "edit": MessageLookupByLibrary.simpleMessage("Edit"),
        "editEvent": MessageLookupByLibrary.simpleMessage("Edit Event"),
        "editEventWarning": MessageLookupByLibrary.simpleMessage(
            "Editing this event may affect customer information. Please confirm to continue."),
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
        "endHour": MessageLookupByLibrary.simpleMessage("End Hour"),
        "endTime": MessageLookupByLibrary.simpleMessage("End Time"),
        "enterAddress": MessageLookupByLibrary.simpleMessage("Enter address"),
        "enterDistanceKm":
            MessageLookupByLibrary.simpleMessage("Enter distance in km"),
        "enterLocationName":
            MessageLookupByLibrary.simpleMessage("Enter location name"),
        "enterSearchTermOrSelectTags": MessageLookupByLibrary.simpleMessage(
            "Enter search term or select tags"),
        "error": MessageLookupByLibrary.simpleMessage("Error"),
        "errorCreatingQuotation":
            MessageLookupByLibrary.simpleMessage("Error creating quotation"),
        "errorLoadingAvailableTimeSlots": MessageLookupByLibrary.simpleMessage(
            "Error loading available time slots"),
        "errorLoadingEventDetails": m6,
        "errorLoadingEvents": m7,
        "errorLoadingImage":
            MessageLookupByLibrary.simpleMessage("Error loading image"),
        "errorLoadingOpenQuotations": MessageLookupByLibrary.simpleMessage(
            "Error loading open quotations"),
        "errorLoadingOpenQuotationsWithMessage": m8,
        "errorLoadingPortfolio":
            MessageLookupByLibrary.simpleMessage("Error loading portfolio"),
        "errorLoadingQuotationDetails": MessageLookupByLibrary.simpleMessage(
            "Error loading quotation details"),
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
        "estimatedBudgetOptional":
            MessageLookupByLibrary.simpleMessage("Estimated Budget (Optional)"),
        "estimatedCost": MessageLookupByLibrary.simpleMessage("Estimated Cost"),
        "estimatedCostChangedFrom":
            MessageLookupByLibrary.simpleMessage("Estimated cost changed from"),
        "estimatedCostDisclaimer": MessageLookupByLibrary.simpleMessage(
            "This is an estimated cost and may vary based on the final design or service"),
        "estimatedCostLabel":
            MessageLookupByLibrary.simpleMessage("Estimated cost (CLP)"),
        "estimatedDuration":
            MessageLookupByLibrary.simpleMessage("Est. Duration"),
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
        "explore": MessageLookupByLibrary.simpleMessage("Explore"),
        "exploreDesignsAndArtistWorks": MessageLookupByLibrary.simpleMessage(
            "Explore designs and artist works"),
        "exploreInspiration":
            MessageLookupByLibrary.simpleMessage("Explore Inspiration"),
        "extraInfo": MessageLookupByLibrary.simpleMessage("Extra Info"),
        "favorites": MessageLookupByLibrary.simpleMessage("Favorites"),
        "feature": MessageLookupByLibrary.simpleMessage("Feature"),
        "featured": MessageLookupByLibrary.simpleMessage("Featured"),
        "featuredArtist":
            MessageLookupByLibrary.simpleMessage("Featured Artist"),
        "featuredStencil":
            MessageLookupByLibrary.simpleMessage("Featured Stencil"),
        "featuredStencils":
            MessageLookupByLibrary.simpleMessage("Featured Stencils"),
        "featuredWork": MessageLookupByLibrary.simpleMessage("Featured Work"),
        "featuredWorks": MessageLookupByLibrary.simpleMessage("Featured Works"),
        "february": MessageLookupByLibrary.simpleMessage("February"),
        "fieldRequired":
            MessageLookupByLibrary.simpleMessage("This field is required"),
        "filter": MessageLookupByLibrary.simpleMessage("Filter"),
        "filterBySource":
            MessageLookupByLibrary.simpleMessage("Filter by Source"),
        "filteringBySource": m9,
        "filteringByTag": m10,
        "filters": MessageLookupByLibrary.simpleMessage("Filters"),
        "findDesignsAndTattoosMadeByArtists":
            MessageLookupByLibrary.simpleMessage(
                "Find designs and tattoos made by artists"),
        "findingArtists":
            MessageLookupByLibrary.simpleMessage("Finding Artists..."),
        "follow": MessageLookupByLibrary.simpleMessage("Follow"),
        "follower": m11,
        "followers": MessageLookupByLibrary.simpleMessage("Followers"),
        "following": MessageLookupByLibrary.simpleMessage("Following"),
        "foundAnotherArtist":
            MessageLookupByLibrary.simpleMessage("Found Another Artist"),
        "friday": MessageLookupByLibrary.simpleMessage("Friday"),
        "from": MessageLookupByLibrary.simpleMessage("From"),
        "fullName": MessageLookupByLibrary.simpleMessage("Full Name"),
        "gallery": MessageLookupByLibrary.simpleMessage("Gallery"),
        "generalTerms": MessageLookupByLibrary.simpleMessage("General Terms"),
        "generate": MessageLookupByLibrary.simpleMessage("Generate"),
        "generateNewDesign":
            MessageLookupByLibrary.simpleMessage("Generate New Design"),
        "generateTattoo":
            MessageLookupByLibrary.simpleMessage("Generate Tattoo"),
        "generateTattooDesignsWithAI": MessageLookupByLibrary.simpleMessage(
            "Generate tattoo designs with AI"),
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
        "hoursAgo": m12,
        "hoursAndMinutes": m13,
        "hoursv2": m14,
        "id": MessageLookupByLibrary.simpleMessage("ID"),
        "imageRelease": MessageLookupByLibrary.simpleMessage("Image Release"),
        "inProgress": MessageLookupByLibrary.simpleMessage("In Progress"),
        "inspiration": MessageLookupByLibrary.simpleMessage("Inspiration"),
        "insufficientDetails":
            MessageLookupByLibrary.simpleMessage("Insufficient Details"),
        "invalidNumber": MessageLookupByLibrary.simpleMessage("Invalid Number"),
        "invalidRange": MessageLookupByLibrary.simpleMessage("Invalid Range"),
        "january": MessageLookupByLibrary.simpleMessage("January"),
        "july": MessageLookupByLibrary.simpleMessage("July"),
        "june": MessageLookupByLibrary.simpleMessage("June"),
        "km": MessageLookupByLibrary.simpleMessage("km"),
        "kmAway": MessageLookupByLibrary.simpleMessage("km away"),
        "language": MessageLookupByLibrary.simpleMessage("Language"),
        "lastUpdated": MessageLookupByLibrary.simpleMessage("Last Updated"),
        "leaveReview": MessageLookupByLibrary.simpleMessage("Leave Review"),
        "legal": MessageLookupByLibrary.simpleMessage("Legal"),
        "likes": MessageLookupByLibrary.simpleMessage("Likes"),
        "loadMore": MessageLookupByLibrary.simpleMessage("Load More"),
        "loadingAppointmentDetails": MessageLookupByLibrary.simpleMessage(
            "Loading appointment details..."),
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
        "march": MessageLookupByLibrary.simpleMessage("March"),
        "maxDistance": m15,
        "maxTravelDistanceKm": MessageLookupByLibrary.simpleMessage(
            "Maximum travel distance (km)"),
        "may": MessageLookupByLibrary.simpleMessage("May"),
        "memberSince": MessageLookupByLibrary.simpleMessage("Member since"),
        "message": MessageLookupByLibrary.simpleMessage("Message"),
        "messageCustomer":
            MessageLookupByLibrary.simpleMessage("Message Customer"),
        "messagePreview": m16,
        "messages": MessageLookupByLibrary.simpleMessage("messages"),
        "messagesCount": m17,
        "meters": MessageLookupByLibrary.simpleMessage("meters"),
        "minDescriptionLengthRequired": m18,
        "minimumRating": m19,
        "minute": MessageLookupByLibrary.simpleMessage("minute"),
        "minutes": MessageLookupByLibrary.simpleMessage("minutes"),
        "minutesAgo": m20,
        "minutesv2": m21,
        "monday": MessageLookupByLibrary.simpleMessage("Monday"),
        "month": MessageLookupByLibrary.simpleMessage("Month"),
        "monthsAgo": m22,
        "moreInfoAboutSizesPricesAvailability":
            MessageLookupByLibrary.simpleMessage(
                "I would like more information about sizes, prices, and availability"),
        "myAppointments":
            MessageLookupByLibrary.simpleMessage("My Appointments"),
        "myProfile": MessageLookupByLibrary.simpleMessage("My Profile"),
        "n": MessageLookupByLibrary.simpleMessage("New"),
        "nail": MessageLookupByLibrary.simpleMessage("Nail"),
        "newPassword": MessageLookupByLibrary.simpleMessage("New Password"),
        "newQuotation": MessageLookupByLibrary.simpleMessage("New Quotation"),
        "newRequest": MessageLookupByLibrary.simpleMessage("New Request"),
        "newRequests": MessageLookupByLibrary.simpleMessage("New Requests"),
        "nextWeek": MessageLookupByLibrary.simpleMessage("Next Week"),
        "no": MessageLookupByLibrary.simpleMessage("No"),
        "noActiveSession":
            MessageLookupByLibrary.simpleMessage("No active session found"),
        "noApplicationsFound":
            MessageLookupByLibrary.simpleMessage("No applications found"),
        "noAvailableTimeSlotsFound": MessageLookupByLibrary.simpleMessage(
            "No available time slots found"),
        "noConsentRequired": MessageLookupByLibrary.simpleMessage(
            "No consent forms required for this appointment"),
        "noConsentTemplates": MessageLookupByLibrary.simpleMessage(
            "No consent templates created yet"),
        "noContactInfo": MessageLookupByLibrary.simpleMessage(
            "No contact information available"),
        "noDescription": MessageLookupByLibrary.simpleMessage("No description"),
        "noDesignsOnFavorites":
            MessageLookupByLibrary.simpleMessage("No designs in favorites"),
        "noDesignsOnHistory":
            MessageLookupByLibrary.simpleMessage("No designs in history"),
        "noDirectArtistRequestsFoundBody": MessageLookupByLibrary.simpleMessage(
            "You don\'t have any direct requests from artists at the moment."),
        "noDirectArtistRequestsFoundTitle":
            MessageLookupByLibrary.simpleMessage("No Direct Requests"),
        "noDirectCustomerQuotationsFoundBody": MessageLookupByLibrary.simpleMessage(
            "You don\'t have any direct quotations from customers at the moment."),
        "noDirectCustomerQuotationsFoundTitle":
            MessageLookupByLibrary.simpleMessage("No Direct Quotations"),
        "noDistanceLimit":
            MessageLookupByLibrary.simpleMessage("No distance limit"),
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
        "noMapsApplicationAvailable": MessageLookupByLibrary.simpleMessage(
            "No maps application available"),
        "noMessagesYet":
            MessageLookupByLibrary.simpleMessage("No messages yet"),
        "noNotificationsMessage": MessageLookupByLibrary.simpleMessage(
            "You don\'t have any notifications yet."),
        "noNotificationsTitle":
            MessageLookupByLibrary.simpleMessage("No notifications"),
        "noOffersReceived": MessageLookupByLibrary.simpleMessage(
            "You have not received any offers yet"),
        "noOffersYet": MessageLookupByLibrary.simpleMessage("No offers yet"),
        "noOpenQuotationsFoundBody": MessageLookupByLibrary.simpleMessage(
            "You don\'t have any open quotation requests at the moment."),
        "noOpenQuotationsFoundTitle":
            MessageLookupByLibrary.simpleMessage("No Open Quotations"),
        "noParticipatingQuotationsFoundBody": MessageLookupByLibrary.simpleMessage(
            "You are not participating in any quotation requests at the moment."),
        "noParticipatingQuotationsFoundTitle":
            MessageLookupByLibrary.simpleMessage("No Participating Quotations"),
        "noPortfolio":
            MessageLookupByLibrary.simpleMessage("No portfolio available"),
        "noPortfolioShared":
            MessageLookupByLibrary.simpleMessage("No portfolio shared yet"),
        "noQuotationsFound":
            MessageLookupByLibrary.simpleMessage("No quotations found"),
        "noRequestsFound":
            MessageLookupByLibrary.simpleMessage("No requests found"),
        "noResultsFound":
            MessageLookupByLibrary.simpleMessage("No results found"),
        "noReviews": MessageLookupByLibrary.simpleMessage("No reviews yet"),
        "noReviewsYet": MessageLookupByLibrary.simpleMessage("No reviews yet"),
        "noServicesAvailable":
            MessageLookupByLibrary.simpleMessage("No services available"),
        "noStencils":
            MessageLookupByLibrary.simpleMessage("No stencils available"),
        "noStencilsAddedYet":
            MessageLookupByLibrary.simpleMessage("No stencils added yet"),
        "noStencilsFoundWithCurrentCriteria":
            MessageLookupByLibrary.simpleMessage(
                "No stencils found with current criteria"),
        "noStencilsShared":
            MessageLookupByLibrary.simpleMessage("No stencils shared yet"),
        "noStencilsWithTag": m23,
        "noStencilsYet":
            MessageLookupByLibrary.simpleMessage("No Stencils Yet"),
        "noStudioPhotoAvailable":
            MessageLookupByLibrary.simpleMessage("No studio photo available"),
        "noTattooWorksAddedYet":
            MessageLookupByLibrary.simpleMessage("No tattoo works added yet"),
        "noTattoosFoundWithCurrentCriteria":
            MessageLookupByLibrary.simpleMessage(
                "No tattoos found with current criteria"),
        "noUnavailableTimesConfigured": MessageLookupByLibrary.simpleMessage(
            "No unavailable times configured"),
        "noWorkEvidence":
            MessageLookupByLibrary.simpleMessage("No Work Evidence"),
        "noWorks": MessageLookupByLibrary.simpleMessage("No works available"),
        "noWorksFound": MessageLookupByLibrary.simpleMessage("No Works Found"),
        "noWorksShared":
            MessageLookupByLibrary.simpleMessage("No works shared yet"),
        "notAttended": MessageLookupByLibrary.simpleMessage("Not Attended"),
        "notAvailable": MessageLookupByLibrary.simpleMessage("Not Available"),
        "notLoggedIn": MessageLookupByLibrary.simpleMessage("Not logged in"),
        "notSelected": MessageLookupByLibrary.simpleMessage("Not Selected"),
        "notSpecified": MessageLookupByLibrary.simpleMessage("Not specified"),
        "notWhatIWanted":
            MessageLookupByLibrary.simpleMessage("Not What I Wanted"),
        "note": MessageLookupByLibrary.simpleMessage("Note"),
        "notification": MessageLookupByLibrary.simpleMessage("Notification"),
        "notifications": MessageLookupByLibrary.simpleMessage("Notifications"),
        "notificationsDescription": MessageLookupByLibrary.simpleMessage(
            "Enable or disable notifications."),
        "notificationsPermissionRequired": MessageLookupByLibrary.simpleMessage(
            "Notifications permission required"),
        "november": MessageLookupByLibrary.simpleMessage("November"),
        "october": MessageLookupByLibrary.simpleMessage("October"),
        "of5": MessageLookupByLibrary.simpleMessage("of 5"),
        "offerAcceptedSuccessfully":
            MessageLookupByLibrary.simpleMessage("Offer accepted successfully"),
        "offerCost": MessageLookupByLibrary.simpleMessage("Offer Cost"),
        "offerSubmitted":
            MessageLookupByLibrary.simpleMessage("Offer submitted"),
        "offerSubmittedMessage": MessageLookupByLibrary.simpleMessage(
            "Your offer has been successfully sent to the customer."),
        "offerSubmittedTitle":
            MessageLookupByLibrary.simpleMessage("Offer Submitted!"),
        "offerSubmittedWithAmount": m24,
        "offered": MessageLookupByLibrary.simpleMessage("Offered"),
        "offers": MessageLookupByLibrary.simpleMessage("Offers"),
        "offersAppearHere": MessageLookupByLibrary.simpleMessage(
            "Offers will appear here when you receive them"),
        "offersCount": m25,
        "offersReceived": m26,
        "offersReceivedTitle":
            MessageLookupByLibrary.simpleMessage("Offers received"),
        "ok": MessageLookupByLibrary.simpleMessage("OK"),
        "onlyStencilsFound":
            MessageLookupByLibrary.simpleMessage("Only stencils found"),
        "onlyWorksFound":
            MessageLookupByLibrary.simpleMessage("Only works found"),
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
        "pendingSignature":
            MessageLookupByLibrary.simpleMessage("Pending Signature"),
        "permissionRequired":
            MessageLookupByLibrary.simpleMessage("Permission required"),
        "phone": MessageLookupByLibrary.simpleMessage("Phone"),
        "photoLibrary": MessageLookupByLibrary.simpleMessage("Photo Library"),
        "piercing": MessageLookupByLibrary.simpleMessage("Piercing"),
        "pleaseEnableGps":
            MessageLookupByLibrary.simpleMessage("Please enable GPS"),
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
        "pleaseSignConsents": MessageLookupByLibrary.simpleMessage(
            "Please sign the required consent forms before proceeding"),
        "popularTags": MessageLookupByLibrary.simpleMessage("Popular Tags"),
        "portfolio": MessageLookupByLibrary.simpleMessage("Portfolio"),
        "previousWeek": MessageLookupByLibrary.simpleMessage("Previous Week"),
        "privacyPolicy": MessageLookupByLibrary.simpleMessage("Privacy Policy"),
        "privacyPolicyContent": MessageLookupByLibrary.simpleMessage(
            "Your privacy is important to us. We do not collect personal information without your consent."),
        "proceed": MessageLookupByLibrary.simpleMessage("Proceed"),
        "processingQuotation":
            MessageLookupByLibrary.simpleMessage("Processing Quotation"),
        "processingQuotationMessage": MessageLookupByLibrary.simpleMessage(
            "Please wait while we process your quotation"),
        "processingRequest":
            MessageLookupByLibrary.simpleMessage("Processing request..."),
        "profileImage": MessageLookupByLibrary.simpleMessage("Profile Image"),
        "proposedAppointment":
            MessageLookupByLibrary.simpleMessage("Proposed Appointment"),
        "proposedDesign":
            MessageLookupByLibrary.simpleMessage("Proposed Design"),
        "proposedDesigns":
            MessageLookupByLibrary.simpleMessage("Proposed Designs"),
        "proposedDesignsOptional":
            MessageLookupByLibrary.simpleMessage("Proposed Designs (Optional)"),
        "public": MessageLookupByLibrary.simpleMessage("Public"),
        "publicAgenda": MessageLookupByLibrary.simpleMessage("Public Agenda"),
        "publicAgendaDescription": MessageLookupByLibrary.simpleMessage(
            "Make your agenda visible to clients"),
        "quotation": MessageLookupByLibrary.simpleMessage("Quotation"),
        "quotationAcceptedSuccess":
            MessageLookupByLibrary.simpleMessage("Offer accepted successfully"),
        "quotationCancelledSuccessfully": MessageLookupByLibrary.simpleMessage(
            "Quotation cancelled successfully"),
        "quotationCreatedSuccessfullyDescription":
            MessageLookupByLibrary.simpleMessage(
                "Your quotation has been created successfully. We will notify you when it is reviewed."),
        "quotationCreatedSuccessfullyTitle":
            MessageLookupByLibrary.simpleMessage(
                "Quotation Created Successfully"),
        "quotationDate": MessageLookupByLibrary.simpleMessage("Quotation Date"),
        "quotationDetails":
            MessageLookupByLibrary.simpleMessage("Quotation Details"),
        "quotationForStencilId":
            MessageLookupByLibrary.simpleMessage("Quotation for stencil ID"),
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
        "quoteThisDesign":
            MessageLookupByLibrary.simpleMessage("Quote This Design"),
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
        "referenceBudget": m27,
        "referenceBudgetHint": MessageLookupByLibrary.simpleMessage(
            "Reference budget for the artist"),
        "referenceImages":
            MessageLookupByLibrary.simpleMessage("Reference Images"),
        "refresh": MessageLookupByLibrary.simpleMessage("Refresh"),
        "reject": MessageLookupByLibrary.simpleMessage("Reject"),
        "rejectAppeal": MessageLookupByLibrary.simpleMessage("Reject Appeal"),
        "rejectEvent": MessageLookupByLibrary.simpleMessage("Reject Event"),
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
        "requestChange": MessageLookupByLibrary.simpleMessage("Request Change"),
        "requestDetails":
            MessageLookupByLibrary.simpleMessage("Request Details"),
        "requestQuotationForDesign": MessageLookupByLibrary.simpleMessage(
            "Request quotation for design"),
        "requestQuote": MessageLookupByLibrary.simpleMessage("Request Quote"),
        "requests": MessageLookupByLibrary.simpleMessage("Requests"),
        "required": MessageLookupByLibrary.simpleMessage("Required"),
        "requiredField": MessageLookupByLibrary.simpleMessage("Required Field"),
        "reschedule": MessageLookupByLibrary.simpleMessage("Reschedule"),
        "rescheduled": MessageLookupByLibrary.simpleMessage("Rescheduled"),
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
        "reviewFunctionalityComingSoon": MessageLookupByLibrary.simpleMessage(
            "Review functionality coming soon"),
        "reviewed": MessageLookupByLibrary.simpleMessage("Reviewed"),
        "reviews": MessageLookupByLibrary.simpleMessage("Reviews"),
        "reviewsTotal": MessageLookupByLibrary.simpleMessage("reviews"),
        "saturday": MessageLookupByLibrary.simpleMessage("Saturday"),
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
        "schedulingConflict":
            MessageLookupByLibrary.simpleMessage("Scheduling Conflict"),
        "search": MessageLookupByLibrary.simpleMessage("Search"),
        "searchArtistPlaceholder": MessageLookupByLibrary.simpleMessage(
            "Search artists, styles or locations..."),
        "searchInspiration":
            MessageLookupByLibrary.simpleMessage("Search Inspiration"),
        "searchInspirationForYourNextTattoo":
            MessageLookupByLibrary.simpleMessage(
                "Search inspiration for your next tattoo"),
        "searchOrCreateTags":
            MessageLookupByLibrary.simpleMessage("Search or create tags"),
        "searchRadius": MessageLookupByLibrary.simpleMessage("Search Radius"),
        "searchTattoosStencilsOrTags": MessageLookupByLibrary.simpleMessage(
            "Search tattoos, stencils, or tags"),
        "searching": MessageLookupByLibrary.simpleMessage("Searching..."),
        "seeLess": MessageLookupByLibrary.simpleMessage("See Less"),
        "seeMore": MessageLookupByLibrary.simpleMessage("See More"),
        "seeReviews": MessageLookupByLibrary.simpleMessage("See Reviews"),
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
        "sendEmail": MessageLookupByLibrary.simpleMessage("Send Email"),
        "sendMessage": MessageLookupByLibrary.simpleMessage("Send Message"),
        "sendMessageInApp":
            MessageLookupByLibrary.simpleMessage("Send message in app"),
        "sendOffer": MessageLookupByLibrary.simpleMessage("Send Offer"),
        "sentOffer": MessageLookupByLibrary.simpleMessage("Sent offer"),
        "september": MessageLookupByLibrary.simpleMessage("September"),
        "services": MessageLookupByLibrary.simpleMessage("Services"),
        "settings": MessageLookupByLibrary.simpleMessage("Settings"),
        "shareArtistProfile":
            MessageLookupByLibrary.simpleMessage("Share Artist Profile"),
        "shortDescription":
            MessageLookupByLibrary.simpleMessage("Short Description"),
        "show": MessageLookupByLibrary.simpleMessage("Show"),
        "showHiddenWorks":
            MessageLookupByLibrary.simpleMessage("Show Hidden Works"),
        "showOnlyAvailableResults":
            MessageLookupByLibrary.simpleMessage("Show only available results"),
        "showingAllStencils":
            MessageLookupByLibrary.simpleMessage("Showing all stencils"),
        "signConsent": MessageLookupByLibrary.simpleMessage("Sign Consent"),
        "signRequiredConsents":
            MessageLookupByLibrary.simpleMessage("Sign Required Consents"),
        "signed": MessageLookupByLibrary.simpleMessage("Signed"),
        "source": MessageLookupByLibrary.simpleMessage("Source"),
        "start": MessageLookupByLibrary.simpleMessage("Start"),
        "startChat": MessageLookupByLibrary.simpleMessage("Start chat"),
        "startConversation": MessageLookupByLibrary.simpleMessage(
            "Start the conversation by sending a message"),
        "startDate": MessageLookupByLibrary.simpleMessage("Start Date"),
        "startHour": MessageLookupByLibrary.simpleMessage("Start Hour"),
        "startSearching":
            MessageLookupByLibrary.simpleMessage("Start Searching"),
        "startTime": MessageLookupByLibrary.simpleMessage("Start Time"),
        "state": MessageLookupByLibrary.simpleMessage("State"),
        "status": MessageLookupByLibrary.simpleMessage("Status"),
        "statusAccepted": MessageLookupByLibrary.simpleMessage("Accepted"),
        "statusAppealed": MessageLookupByLibrary.simpleMessage("Appealed"),
        "statusCanceled": MessageLookupByLibrary.simpleMessage("Canceled"),
        "statusOpen": MessageLookupByLibrary.simpleMessage("Open"),
        "statusPending": MessageLookupByLibrary.simpleMessage("Pending"),
        "statusQuoted": MessageLookupByLibrary.simpleMessage("Quoted"),
        "statusRejected": MessageLookupByLibrary.simpleMessage("Rejected"),
        "statusWithText": m28,
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
        "suggestedTags": MessageLookupByLibrary.simpleMessage("Suggested Tags"),
        "suggestions": MessageLookupByLibrary.simpleMessage("Suggestions"),
        "sunday": MessageLookupByLibrary.simpleMessage("Sunday"),
        "swipe": MessageLookupByLibrary.simpleMessage("Swipe"),
        "system": MessageLookupByLibrary.simpleMessage("System"),
        "systemCancellationReason":
            MessageLookupByLibrary.simpleMessage("System Cancellation Reason"),
        "systemOfferUpdate": m29,
        "systemTimeout": MessageLookupByLibrary.simpleMessage("System Timeout"),
        "tags": MessageLookupByLibrary.simpleMessage("Tags"),
        "tapToChangeImage":
            MessageLookupByLibrary.simpleMessage("Tap to change image"),
        "tapToSelectImage":
            MessageLookupByLibrary.simpleMessage("Tap to select an image"),
        "tapToSign": MessageLookupByLibrary.simpleMessage("Tap to sign"),
        "tattoo": MessageLookupByLibrary.simpleMessage("Tattoo"),
        "tattooConsent": MessageLookupByLibrary.simpleMessage("Tattoo Consent"),
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
        "tattoos": MessageLookupByLibrary.simpleMessage("Tattoos"),
        "tentativeEvent":
            MessageLookupByLibrary.simpleMessage("Tentative Event"),
        "termsAndConditions":
            MessageLookupByLibrary.simpleMessage("Terms and Conditions"),
        "termsAndConditionsContent": MessageLookupByLibrary.simpleMessage(
            "By using this app, you agree to the terms and conditions outlined here."),
        "thisFeatureWillBeAvailableSoon": MessageLookupByLibrary.simpleMessage(
            "This feature will be available soon"),
        "thursday": MessageLookupByLibrary.simpleMessage("Thursday"),
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
        "tooExpensive": MessageLookupByLibrary.simpleMessage("Too Expensive"),
        "totalReviews": m30,
        "tryAgain": MessageLookupByLibrary.simpleMessage("Try Again"),
        "tryAgainLater":
            MessageLookupByLibrary.simpleMessage("Please try again later"),
        "tryDifferentSearchOrFilters": MessageLookupByLibrary.simpleMessage(
            "Try a different search term or filters"),
        "tryRefreshingThePage": m31,
        "tryRemovingFilters":
            MessageLookupByLibrary.simpleMessage("Try removing filters"),
        "trySettingUpYourWorkingHoursInAgendaSettingsOrTryAShorterAppointmentDuration":
            MessageLookupByLibrary.simpleMessage(
                "Try setting up your working hours in agenda settings or try a shorter appointment duration"),
        "tuesday": MessageLookupByLibrary.simpleMessage("Tuesday"),
        "typeAMessage": MessageLookupByLibrary.simpleMessage("Type a message"),
        "unavailableTime":
            MessageLookupByLibrary.simpleMessage("Unavailable Time"),
        "unavailableTimes":
            MessageLookupByLibrary.simpleMessage("Unavailable Times"),
        "unfeature": MessageLookupByLibrary.simpleMessage("Unfeature"),
        "unknown": MessageLookupByLibrary.simpleMessage("Unknown"),
        "upcomming": MessageLookupByLibrary.simpleMessage("Upcoming"),
        "update": MessageLookupByLibrary.simpleMessage("Update"),
        "updateStudioPhoto":
            MessageLookupByLibrary.simpleMessage("Update Studio Photo"),
        "username": MessageLookupByLibrary.simpleMessage("Username"),
        "viewAllStencils":
            MessageLookupByLibrary.simpleMessage("View All Stencils"),
        "viewConsents": MessageLookupByLibrary.simpleMessage("View Consents"),
        "viewDetails": MessageLookupByLibrary.simpleMessage("View Details"),
        "viewOffers": MessageLookupByLibrary.simpleMessage("View Offers"),
        "viewStencils": MessageLookupByLibrary.simpleMessage("View Stencils"),
        "viewTattooDetails":
            MessageLookupByLibrary.simpleMessage("View Details"),
        "viewTattoos": MessageLookupByLibrary.simpleMessage("View Tattoos"),
        "views": MessageLookupByLibrary.simpleMessage("Views"),
        "visibilitySettings":
            MessageLookupByLibrary.simpleMessage("Visibility Settings"),
        "visible": MessageLookupByLibrary.simpleMessage("Visible"),
        "waitingForPhotos":
            MessageLookupByLibrary.simpleMessage("Waiting for Photos"),
        "waitingForReview":
            MessageLookupByLibrary.simpleMessage("Waiting for Review"),
        "weTriedToFindSlotsAcrossMultipleDaysButCouldNotFindAnyAvailableTimes":
            MessageLookupByLibrary.simpleMessage(
                "We tried to find slots across multiple days but could not find any available times"),
        "wednesday": MessageLookupByLibrary.simpleMessage("Wednesday"),
        "week": MessageLookupByLibrary.simpleMessage("Week"),
        "withDescription":
            MessageLookupByLibrary.simpleMessage("with description"),
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
        "workingDays": MessageLookupByLibrary.simpleMessage("Working Days"),
        "workingHours": MessageLookupByLibrary.simpleMessage("Working Hours"),
        "works": MessageLookupByLibrary.simpleMessage("Works"),
        "yearsAgo": m32,
        "yes": MessageLookupByLibrary.simpleMessage("Yes"),
        "yourOffer": MessageLookupByLibrary.simpleMessage("Your Offer"),
        "yourResponse": MessageLookupByLibrary.simpleMessage("Your Response"),
        "zoomIn": MessageLookupByLibrary.simpleMessage("Zoom In"),
        "zoomOut": MessageLookupByLibrary.simpleMessage("Zoom Out")
      };
}
