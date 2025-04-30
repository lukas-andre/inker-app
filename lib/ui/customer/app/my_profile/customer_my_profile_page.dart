import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:inker_studio/domain/blocs/customer_my_profile/customer_my_profile_bloc.dart';
import 'package:inker_studio/domain/models/customer/customer.dart';
import 'package:inker_studio/generated/l10n.dart';
import 'package:inker_studio/keys.dart';
import 'package:inker_studio/ui/shared/edit_field_page.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/layout/inker_progress_indicator.dart';
import 'package:inker_studio/utils/styles/app_styles.dart';
import 'package:inker_studio/utils/image/cached_image_manager.dart';
import 'package:inker_studio/ui/settings/settings_page.dart';
import 'package:intl/intl.dart';

class CustomerMyProfilePage extends StatefulWidget {
  final bool hideHeader;

  const CustomerMyProfilePage({super.key, this.hideHeader = false});

  static const String kFullName = 'fullName';
  static const String kDescription = 'description';
  static const String kProfileImage = 'profileImage';
  static const String kEmail = 'email';
  static const String kPhone = 'phone';

  @override
  State<CustomerMyProfilePage> createState() => _CustomerMyProfilePageState();
}

class _CustomerMyProfilePageState extends State<CustomerMyProfilePage> {
  final _imageCache = CachedImageManager();

  @override
  void initState() {
    super.initState();
    final bloc = context.read<CustomerMyProfileBloc>();
    bloc.add(const CustomerProfileEvent.loadProfile());

    // Precargar la imagen de perfil si está disponible
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final customerBloc = context.read<CustomerMyProfileBloc>();
      final state = customerBloc.state;

      state.maybeWhen(
        loaded: (customer) {
          if (customer.profileThumbnail != null &&
              customer.profileThumbnail!.isNotEmpty) {
            _imageCache.preloadCriticalImages(
              context,
              profileImageUrl: customer.profileThumbnail,
              additionalUrls: null,
            );
          }
        },
        orElse: () {},
      );
    });
  }

  Future<void> _refreshProfile() async {
    final bloc = context.read<CustomerMyProfileBloc>();
    bloc.add(const CustomerProfileEvent.loadProfile());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: widget.hideHeader
          ? null
          : AppBar(
              backgroundColor: primaryColor,
              title: Text(
                S.of(context).myProfile,
                style: TextStyleTheme.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              elevation: 1,
              actions: [
                IconButton(
                  key: K.settingsButton,
                  icon: const Icon(Icons.settings, color: Colors.white),
                  onPressed: () =>
                      Navigator.of(context).push(SettingsPage.route()),
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
    return RefreshIndicator(
      onRefresh: _refreshProfile,
      color: secondaryColor,
      backgroundColor: primaryColor,
      child: CustomScrollView(
        key: const Key('customerProfileContent'),
        slivers: [
          _buildAppBar(context, customer),
          SliverToBoxAdapter(
            child: Column(
              children: [
                _buildProfileHeader(context, customer),
                _buildProfileDetails(context, customer),
                const SizedBox(height: 16),
                _buildContactInfo(context, customer),
              ],
            ),
          ),
        ],
      ),
    );
  }

  SliverAppBar _buildAppBar(BuildContext context, Customer customer) {
    return SliverAppBar(
      expandedHeight: 120.0,
      floating: false,
      pinned: true,
      backgroundColor: primaryColor.withOpacity(0.8),
      flexibleSpace: FlexibleSpaceBar(
        title: Text(
          S.of(context).myProfile,
          style: TextStyleTheme.headline2.copyWith(
            shadows: [
              Shadow(
                blurRadius: 10.0,
                color: Colors.black.withOpacity(0.5),
                offset: const Offset(2.0, 2.0),
              ),
            ],
          ),
        ),
        background: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                secondaryColor.withOpacity(0.7),
                primaryColor,
              ],
            ),
          ),
          child: Center(
            child: Icon(
              Icons.person,
              size: 40,
              color: Colors.white.withOpacity(0.3),
            ),
          ),
        ),
      ),
      actions: widget.hideHeader
          ? []
          : [
              IconButton(
                key: const Key('settingsButton'),
                icon: const Icon(Icons.settings, color: Colors.white),
                onPressed: () =>
                    Navigator.of(context).push(SettingsPage.route()),
                tooltip: S.of(context).settings,
              ),
            ],
    );
  }

  Widget _buildProfileHeader(BuildContext context, Customer customer) {
    return Padding(
      key: const Key('customerProfileHeader'),
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              if (widget.hideHeader)
                IconButton(
                  key: const Key('settingsButton'),
                  icon: const Icon(Icons.settings, color: Colors.white),
                  onPressed: () =>
                      Navigator.of(context).push(SettingsPage.route()),
                  tooltip: S.of(context).settings,
                ),
            ],
          ),
          GestureDetector(
            onTap: () => _navigateToEditField(
              context,
              EditFieldArguments(
                type: EditFieldType.image,
                initialValue: customer.profileThumbnail,
                label: S.of(context).profileImage,
                labelKey: CustomerMyProfilePage.kProfileImage,
              ),
            ),
            child: Stack(
              children: [
                Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: secondaryColor, width: 3),
                    boxShadow: [
                      BoxShadow(
                        color: secondaryColor.withOpacity(0.3),
                        blurRadius: 15,
                        spreadRadius: 2,
                      ),
                    ],
                  ),
                  child: _imageCache.buildProfileImage(
                    imageUrl: customer.profileThumbnail ?? '',
                    size: 120,
                    heroTag: 'profile_${customer.id}',
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: secondaryColor,
                      shape: BoxShape.circle,
                      border: Border.all(color: primaryColor, width: 2),
                    ),
                    child: const Icon(
                      Icons.edit,
                      color: Colors.white,
                      size: 18,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          Text(
            '${customer.firstName} ${customer.lastName}',
            style: TextStyleTheme.headline1.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          if (customer.shortDescription != null &&
              customer.shortDescription!.isNotEmpty)
            Padding(
              padding: const EdgeInsets.only(top: 12.0),
              child: Text(
                customer.shortDescription!,
                style: TextStyleTheme.bodyText1.copyWith(
                  color: Colors.grey.shade300,
                  fontStyle: FontStyle.italic,
                ),
                textAlign: TextAlign.center,
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildProfileDetails(BuildContext context, Customer customer) {
    return Container(
      key: const Key('customerProfileDetails'),
      color: HSLColor.fromColor(primaryColor).withLightness(0.15).toColor(),
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                S.of(context).aboutMe,
                style: TextStyleTheme.headline3.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              IconButton(
                icon: const Icon(Icons.edit, color: secondaryColor, size: 20),
                onPressed: () => _navigateToEditField(
                  context,
                  EditFieldArguments(
                    type: EditFieldType.text,
                    initialValue: customer.shortDescription,
                    label: S.of(context).shortDescription,
                    labelKey: CustomerMyProfilePage.kDescription,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color:
                  HSLColor.fromColor(primaryColor).withLightness(0.2).toColor(),
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.grey.shade800),
            ),
            child: Text(
              customer.shortDescription ??
                  S
                      .of(context)
                      .addAShortDescriptionAboutYourselfAndYourTattooStyle,
              style: TextStyleTheme.bodyText1.copyWith(
                color: customer.shortDescription != null
                    ? Colors.white
                    : Colors.grey.shade600,
                fontStyle: customer.shortDescription != null
                    ? FontStyle.normal
                    : FontStyle.italic,
              ),
            ),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                S.of(context).fullName,
                style: TextStyleTheme.headline3.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              IconButton(
                icon: const Icon(Icons.edit, color: secondaryColor, size: 20),
                onPressed: () => _navigateToEditField(
                  context,
                  EditFieldArguments(
                    type: EditFieldType.text,
                    initialValue: '${customer.firstName} ${customer.lastName}',
                    label: S.of(context).fullName,
                    labelKey: CustomerMyProfilePage.kFullName,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          _buildInfoTile(
            context: context,
            icon: Icons.person,
            label: S.of(context).fullName,
            value: '${customer.firstName} ${customer.lastName}',
            isEditable: true,
            onTap: () => _navigateToEditField(
              context,
              EditFieldArguments(
                type: EditFieldType.text,
                initialValue: '${customer.firstName} ${customer.lastName}',
                label: S.of(context).fullName,
                labelKey: CustomerMyProfilePage.kFullName,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildContactInfo(BuildContext context, Customer customer) {
    return Container(
      key: const Key('customerProfileContactInfo'),
      color: primaryColor,
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            S.of(context).contactInformation,
            style: TextStyleTheme.headline3.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          _buildInfoTile(
            context: context,
            icon: Icons.email,
            label: S.of(context).email,
            value: customer.contactEmail,
            isEditable: false,
          ),
          const SizedBox(height: 8),
          _buildInfoTile(
            context: context,
            icon: Icons.phone,
            label: S.of(context).phone,
            value: customer.contactPhoneNumber ?? '',
            isEditable: false,
          ),
          const SizedBox(height: 8),
          _buildInfoTile(
            context: context,
            icon: Icons.calendar_today,
            label: S.of(context).memberSince,
            value: customer.createdAt != null
                ? DateFormat('MMMM yyyy', S.of(context).locale)
                    .format(customer.createdAt!)
                : '',
            isEditable: false,
          ),
        ],
      ),
    );
  }

  Widget _buildInfoTile({
    required BuildContext context,
    required IconData icon,
    required String label,
    required String value,
    VoidCallback? onTap,
    bool isEditable = true,
  }) {
    return Container(
      padding: const EdgeInsets.all(12),
      margin: const EdgeInsets.only(bottom: 8),
      decoration: BoxDecoration(
        color: HSLColor.fromColor(primaryColor).withLightness(0.15).toColor(),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey.shade800),
      ),
      child: InkWell(
        onTap: isEditable && onTap != null ? onTap : null,
        borderRadius: BorderRadius.circular(8),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: secondaryColor.withOpacity(0.2),
                shape: BoxShape.circle,
              ),
              child: Icon(icon, color: secondaryColor, size: 20),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    label,
                    style: TextStyleTheme.caption.copyWith(
                      color: Colors.grey.shade400,
                    ),
                  ),
                  Text(
                    value.isEmpty ? S.of(context).notAvailable : value,
                    style: TextStyleTheme.bodyText2.copyWith(
                      color:
                          value.isEmpty ? Colors.grey.shade600 : Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            if (isEditable && onTap != null)
              const Icon(Icons.edit, color: secondaryColor, size: 16),
          ],
        ),
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
        case CustomerMyProfilePage.kFullName:
          final names = (result.value as String).split(' ');
          bloc.add(CustomerProfileEvent.updateName(
            firstName: names.first,
            lastName: names.length > 1 ? names.sublist(1).join(' ') : '',
          ));
          break;
        case CustomerMyProfilePage.kDescription:
          bloc.add(
              CustomerProfileEvent.updateDescription(result.value as String));
          break;
        case CustomerMyProfilePage.kProfileImage:
          if (result.value != null) {
            bloc.add(
                CustomerProfileEvent.updateProfileImage(result.value as XFile));
          }
          break;
        case CustomerMyProfilePage.kEmail:
          bloc.add(CustomerProfileEvent.updateEmail(result.value as String));
          break;
        case CustomerMyProfilePage.kPhone:
          bloc.add(
              CustomerProfileEvent.updatePhoneNumber(result.value as String));
          break;
      }
    }
  }
}
