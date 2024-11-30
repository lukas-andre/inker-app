import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:inker_studio/domain/blocs/customer_my_profile/customer_my_profile_bloc.dart';
import 'package:inker_studio/domain/models/customer/customer.dart';
import 'package:inker_studio/generated/l10n.dart';
import 'package:inker_studio/ui/shared/edit_field_page.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/layout/inker_progress_indicator.dart';
import 'package:inker_studio/utils/styles/app_styles.dart';
import 'package:intl/intl.dart';

class CustomerMyProfilePage extends StatelessWidget {
  const CustomerMyProfilePage({super.key});

  static const String kFullName = 'fullName';
  static const String kDescription = 'description';
  static const String kProfileImage = 'profileImage';
  static const String kEmail = 'email';
  static const String kPhone = 'phone';

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<CustomerMyProfileBloc>(context);
    bloc.state.whenOrNull(
        initial: () => bloc.add(const CustomerProfileEvent.loadProfile()));

    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: Text(
          S.of(context).myProfile,
          style: TextStyleTheme.headline2,
        ),
        elevation: 0,
        actions: [
          IconButton(
            key: const Key('settingsButton'),
            icon: const Icon(Icons.settings, color: Colors.white),
            onPressed: () => Navigator.pushNamed(context, '/settings'),
            tooltip: S.of(context).settings,
          ),
        ],
      ),
      body: BlocConsumer<CustomerMyProfileBloc, CustomerProfileState>(
        listener: (context, state) {
          state.maybeWhen(
            error: (message) => ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(message)),
            ),
            orElse: () {},
          );
        },
        builder: (context, state) {
          return state.when(
            initial: () => const Center(child: InkerProgressIndicator()),
            loading: () => const Center(child: InkerProgressIndicator()),
            loaded: (customer) => _buildProfileContent(context, customer),
            error: (message) => Center(
              child: Text('${S.of(context).error}: $message',
                  style: TextStyleTheme.headline2),
            ),
          );
        },
      ),
    );
  }

  Widget _buildProfileContent(BuildContext context, Customer customer) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // _buildProfileHeader(context, customer),
          _buildProfileDetails(context, customer),
          _buildContactInfo(context, customer),
        ],
      ),
    );
  }

  Widget _buildProfileDetails(BuildContext context, Customer customer) {
    return Container(
      color: primaryColor,
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildEditableField(
            context: context,
            label: S.of(context).fullName,
            value: '${customer.firstName} ${customer.lastName}',
            onTap: () => _navigateToEditField(
              context,
              EditFieldArguments(
                type: EditFieldType.text,
                initialValue: '${customer.firstName} ${customer.lastName}',
                label: S.of(context).fullName,
                labelKey: kFullName,
              ),
            ),
          ),
          _buildEditableField(
            context: context,
            label: S.of(context).shortDescription,
            value: customer.shortDescription ?? '',
            onTap: () => _navigateToEditField(
              context,
              EditFieldArguments(
                type: EditFieldType.text,
                initialValue: customer.shortDescription,
                label: S.of(context).shortDescription,
                labelKey: kDescription,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildContactInfo(BuildContext context, Customer customer) {
    return Container(
      color: primaryColor,
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(S.of(context).contactInformation,
              style: TextStyleTheme.headline3),
          const SizedBox(height: 8),
          _buildNonEditableField(
            context: context,
            label: S.of(context).email,
            value: customer.contactEmail,
          ),
          _buildNonEditableField(
            context: context,
            label: S.of(context).phone,
            value: customer.contactPhoneNumber ?? '',
          ),
          // Si quieres agregar información adicional no editable:
          _buildNonEditableField(
            context: context,
            label: S.of(context).memberSince,
            value: customer.createdAt != null
                ? DateFormat('MMMM yyyy', S.of(context).locale)
                    .format(customer.createdAt!)
                : '',
          ),
          // _buildNonEditableField(
          //   context: context,
          //   label: S.of(context).rating,
          //   value: '${customer.rating}/5',
          // ),
          // Puedes agregar más campos no editables aquí
        ],
      ),
    );
  }

  Widget _buildNonEditableField({
    required BuildContext context,
    required String label,
    required String value,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label, style: TextStyleTheme.headline3),
          const SizedBox(height: 4),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade600),
              borderRadius: BorderRadius.circular(4.0),
              color: Colors.grey
                  .shade800, // Un poco más oscuro para indicar que no es editable
            ),
            child: Text(
              value.isEmpty ? S.of(context).notAvailable : value,
              style: TextStyleTheme.bodyText1.copyWith(
                color: value.isEmpty ? Colors.grey : Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildEditableField({
    required BuildContext context,
    required String label,
    required String value,
    required VoidCallback onTap,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label, style: TextStyleTheme.headline3),
          const SizedBox(height: 4),
          InkWell(
            onTap: onTap,
            child: Container(
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade600),
                borderRadius: BorderRadius.circular(4.0),
                color: primaryColor,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(value, style: TextStyleTheme.bodyText1),
                  ),
                  const Icon(Icons.edit, color: Colors.grey),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _navigateToEditField(
    BuildContext context,
    EditFieldArguments arguments,
  ) async {
    final result = await Navigator.push<EditFieldResult>(
      context,
      MaterialPageRoute(
        builder: (context) => EditFieldPage(arguments: arguments),
      ),
    );

    if (result != null) {
      final bloc = context.read<CustomerMyProfileBloc>();
      switch (result.labelKey) {
        case kFullName:
          final names = (result.value as String).split(' ');
          bloc.add(CustomerProfileEvent.updateName(
            firstName: names.first,
            lastName: names.length > 1 ? names.sublist(1).join(' ') : '',
          ));
          break;
        case kDescription:
          bloc.add(
              CustomerProfileEvent.updateDescription(result.value as String));
          break;
        case kProfileImage:
          if (result.value != null) {
            bloc.add(
                CustomerProfileEvent.updateProfileImage(result.value as XFile));
          }
          break;
        case kEmail:
          bloc.add(CustomerProfileEvent.updateEmail(result.value as String));
          break;
        case kPhone:
          bloc.add(
              CustomerProfileEvent.updatePhoneNumber(result.value as String));
          break;
      }
    }
  }
}
