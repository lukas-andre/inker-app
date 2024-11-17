// Primero creamos una clase que contenga toda la información que necesitamos mostrar
import 'package:inker_studio/data/api/location/dtos/find_artist_by_location_response.dart';
import 'package:inker_studio/domain/models/customer/customer.dart';

class CounterpartInfo {
  final String displayName;
  final String? profileThumbnail;
  final String? username;
  final String? contactInfo;
  final String firstLetter;

  CounterpartInfo({
    required this.displayName,
    this.profileThumbnail,
    this.username,
    this.contactInfo,
  }) : firstLetter = displayName.isNotEmpty ? displayName[0] : '?';

  factory CounterpartInfo.fromCustomer(Customer? customer) {
    if (customer == null) {
      return CounterpartInfo(displayName: 'Usuario desconocido');
    }
    
    final firstName = customer.firstName;   
    final lastName = customer.lastName;
    final displayName = '$firstName $lastName'.trim();
    final contactEmail = customer.contactEmail;
    
    return CounterpartInfo(
      displayName: displayName,
      profileThumbnail: customer.profileThumbnail,
      contactInfo: contactEmail,
    );
  }

  factory CounterpartInfo.fromArtist(Artist? artist) {    
    if (artist == null) {
      return CounterpartInfo(displayName: 'Artista desconocido');
    }

    final firstName = artist.firstName ?? '';
    final lastName = artist.lastName ?? '';
    final displayName = '$firstName $lastName'.trim();
    
    return CounterpartInfo(
      displayName: displayName,
      profileThumbnail: artist.profileThumbnail ?? artist.studioPhoto,
      username: artist.username,
    );
  }
}
