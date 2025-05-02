// Primero creamos una clase que contenga toda la información que necesitamos mostrar
import 'package:inker_studio/domain/models/artist/artist.dart';
import 'package:inker_studio/domain/models/customer/customer.dart';

enum CounterpartType {
  artist,
  customer,
  open,
}

class CounterpartInfo {
  final String displayName;
  final String? profileThumbnail;
  final String? username;
  final String? contactInfo;
  final String firstLetter;
  final CounterpartType type;

  CounterpartInfo._({
    required this.displayName,
    required this.type,
    this.profileThumbnail,
    this.username,
    this.contactInfo,
  }) : firstLetter = displayName.isNotEmpty ? displayName[0] : '?';

  factory CounterpartInfo.open() {
    return CounterpartInfo._(
      displayName: 'Cotización Abierta',
      type: CounterpartType.open,
      profileThumbnail: null,
      username: null,
      contactInfo: null,
    );
  }

  factory CounterpartInfo.fromCustomer(Customer? customer) {
    if (customer == null) {
      return CounterpartInfo._(displayName: 'Usuario desconocido', type: CounterpartType.customer);
    }
    
    final firstName = customer.firstName;   
    final lastName = customer.lastName;
    final displayName = '$firstName $lastName'.trim();
    final contactEmail = customer.contactEmail;
    
    return CounterpartInfo._(
      displayName: displayName,
      profileThumbnail: customer.profileThumbnail,
      contactInfo: contactEmail,
      type: CounterpartType.customer,
    );
  }

  factory CounterpartInfo.fromArtist(Artist? artist) {    
    if (artist == null) {
      return CounterpartInfo._(displayName: 'Artista desconocido', type: CounterpartType.artist);
    }

    final firstName = artist.firstName ?? '';
    final lastName = artist.lastName ?? '';
    final displayName = '$firstName $lastName'.trim();
    
    return CounterpartInfo._(
      displayName: displayName,
      profileThumbnail: artist.profileThumbnail ?? artist.studioPhoto,
      username: artist.username,
      type: CounterpartType.artist,
    );
  }
}
