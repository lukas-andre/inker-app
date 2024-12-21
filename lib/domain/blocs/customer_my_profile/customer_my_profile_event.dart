part of 'customer_my_profile_bloc.dart';

@freezed
class CustomerProfileEvent with _$CustomerProfileEvent {
  const factory CustomerProfileEvent.loadProfile() = _LoadProfile;
  const factory CustomerProfileEvent.updateProfile(Customer customer) = _UpdateProfile;
  const factory CustomerProfileEvent.updateName({
    required String firstName,
    required String lastName,
  }) = _UpdateName;
  const factory CustomerProfileEvent.updateDescription(String description) = _UpdateDescription;
  const factory CustomerProfileEvent.updateProfileImage(XFile image) = _UpdateProfileImage;
  const factory CustomerProfileEvent.updateEmail(String email) = _UpdateEmail;
  const factory CustomerProfileEvent.updatePhoneNumber(String phoneNumber) = _UpdatePhoneNumber;
}