import 'package:inker_studio/data/api/user/dtos/create_user_request.dart';
import 'package:inker_studio/data/api/user/dtos/create_user_response.dart';
import 'package:inker_studio/domain/blocs/register/artist/register_artist_bloc.dart';
import 'package:inker_studio/domain/models/user/user_type.dart';
import 'package:inker_studio/domain/services/places/places_service.dart';
import 'package:inker_studio/domain/services/user/user_service.dart';

class DetailsNotFound implements Exception {}

class CreateUserUseCase {
  final UserService _userService;
  final PlacesService _gcpPlacesService;

  CreateUserUseCase(
      {required UserService userService,
      required PlacesService gcpPlacesService})
      : _userService = userService,
        _gcpPlacesService = gcpPlacesService;

  Future<CreateUserResponse?> execute(
      RegisterArtistState state, UserTypeEnum userType) async {
    if (userType == UserTypeEnum.artist) {
      final createUserResponse = await _handleArtistRegister(state, userType);
      return createUserResponse;
    }
    return null;
  }

  Future<CreateUserResponse> _handleArtistRegister(
      RegisterArtistState state, UserTypeEnum userType) async {
    // TODO: verify if details is already searched and stored in the database
    final details = await _gcpPlacesService
        .getPlaceDetails(state.form.location.value.placeId);

    if (details == null) {
      throw DetailsNotFound();
    }

    String? address1, shortAddress1, address2, city, region, country;
    String formattedAddress, googlePlaceId;
    Geometry geometry;

    final String? address3 = state.form.addressExtra.value;

    for (int i = 0; i < details.addressComponents.length; i++) {
      if (details.addressComponents[i].types.contains('route')) {
        address1 = details.addressComponents[i].longName;
        shortAddress1 = details.addressComponents[i].shortName;
      }

      if (details.addressComponents[i].types.contains('street_number')) {
        address2 = details.addressComponents[i].longName;
      }

      if (details.addressComponents[i].types.contains('locality')) {
        city = details.addressComponents[i].longName;
      }

      if (details.addressComponents[i].types
          .contains('administrative_area_level_1')) {
        region = details.addressComponents[i].longName;
      }

      if (details.addressComponents[i].types.contains('country')) {
        country = details.addressComponents[i].longName;
      }
    }

    formattedAddress = details.formattedAddress;
    googlePlaceId = state.form.location.value.placeId;

    geometry = Geometry(
      location: Location(
          lat: details.geometry!.location!.lat,
          lng: details.geometry!.location!.lng),
      viewport: Viewport(
        northeast: Location(
            lat: details.geometry!.viewport!.northeast!.lat,
            lng: details.geometry!.viewport!.northeast!.lng),
        southwest: Location(
            lat: details.geometry!.viewport!.southwest!.lat,
            lng: details.geometry!.viewport!.southwest!.lng),
      ),
    );
    final createUserResponse = await _userService.create(mapStateToRequest(
        state,
        userType,
        address1!,
        shortAddress1!,
        address2 ?? '0000',
        address3,
        city!,
        region!,
        country!,
        formattedAddress,
        googlePlaceId,
        geometry));
    return createUserResponse;
  }

  CreateUserRequest mapStateToRequest(
      RegisterArtistState state,
      UserTypeEnum userType,
      String address1,
      String shortAddress1,
      String address2,
      String? address3,
      String city,
      String region,
      String country,
      String formattedAddress,
      String googlePlaceId,
      Geometry geometry) {
    const defaultAgendaWorkingDays = [
      '2',
      '3',
      '4',
      '5',
      '6',
    ];
    return CreateUserRequest(
      username: state.form.username.value,
      email: state.form.email.value,
      password: state.form.password.value,
      firstName: state.form.firstName.value,
      lastName: state.form.lastName.value,
      userType: userType,
      phoneNumberDetails: PhoneNumberDetails(
        countryCode: state.form.phoneNumber.value.isoCode,
        dialCode: state.form.phoneNumber.value.dialCode,
        number: state.form.phoneNumber.value.phoneNumber,
      ),
      artistInfo: ArtistInfo(
          agendaIsOpen: true,
          agendaIsPublic: true,
          agendaWorkingDays: defaultAgendaWorkingDays,
          address: Address(
              address1: address1,
              shortAddress1: shortAddress1,
              address2: address2,
              address3: address3,
              addressType: state.addressType,
              city: city,
              state: region,
              country: country,
              formattedAddress: formattedAddress,
              googlePlaceId: googlePlaceId,
              geometry: geometry)),
    );
  }
}
