import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:inker_studio/domain/blocs/artist/creation/artist_creation_bloc.dart';
import 'package:inker_studio/ui/account_verification/account_verification_page.dart';
import 'package:inker_studio/ui/create_account/create_artist/form_fields/fields.dart';
import 'package:inker_studio/utils/bloc_navigator.dart';

class CreateArtistForm extends StatelessWidget {
  static const String className = 'CreateArtistForm';

  const CreateArtistForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<ArtistCreationBloc, ArtistCreationState>(
      listener: (context, state) {
        if (state.formState.status.isSubmissionFailure) {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(content: Text(state.errorMessage)),
            );
        } else if (state.formState.status.isSubmissionSuccess) {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(const SnackBar(content: Text('Artist created !')));

          InkerNavigator.push(context, const AccountVerificationPage());
        }
      },
      child: Align(
        alignment: const Alignment(0, -1 / 3),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _NamesRow(),
            const Padding(padding: EdgeInsets.all(12)),
            const EmailTextField(),
            const Padding(padding: EdgeInsets.all(12)),
            const UsernameTextField(),
            const Padding(padding: EdgeInsets.all(12)),
            PhoneNumberTextField(),
            const Padding(padding: EdgeInsets.all(12)),
            const PasswordTextField(),
            const Padding(padding: EdgeInsets.all(12)),
            _CreateUserButton(),
            const Padding(padding: EdgeInsets.all(12)),
            _LoadDataForTest(),
          ],
        ),
      ),
    );
  }
}

class _NamesRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Expanded(child: FirstNameTextField()),
        Expanded(child: LastNameTextField())
      ],
    );
  }
}

class _CreateUserButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ArtistCreationBloc, ArtistCreationState>(
      buildWhen: (previous, current) =>
          previous.formState.status != current.formState.status,
      builder: (context, state) {
        return state.formState.status.isSubmissionInProgress
            ? const CircularProgressIndicator()
            : ElevatedButton(
                key: const Key('createArtistForm_continue_raisedButton'),
                child: const Text('Create Artist'),
                onPressed: state.formState.status.isValidated
                    ? () {
                        context
                            .read<ArtistCreationBloc>()
                            .add(const ArtistCreationSubmitted());
                      }
                    : null,
              );
      },
    );
  }
}

class _LoadDataForTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ArtistCreationBloc, ArtistCreationState>(
      builder: (context, state) {
        return ElevatedButton(
          key: const Key('createArtistForm_continue_raisedButton_test'),
          child: const Text('Load Data'),
          onPressed: () {
            final bloc = context.read<ArtistCreationBloc>();
            bloc.add(const ArtistCreationFirstNameChanged('Lucas'));
            bloc.add(const ArtistCreationLastNameChanged('Henry Diaz'));
            bloc.add(const ArtistCreationUsernameChanged('noname152121112'));
            bloc.add(
                const ArtistCreationEmailChanged('lucas@hotmail2111222.com'));
            bloc.add(const ArtistCreationPhoneNumberChanged('+56964484712'));
            bloc.add(const ArtistCreationPasswordChanged('1qaz2pwsx'));
            bloc.add(const ArtistCreationRepeatedPasswordChanged('1qaz2wsx'));
          },
        );
      },
    );
  }
}
