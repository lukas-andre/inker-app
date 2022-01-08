import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:inker_studio/domain/blocs/customer/creation/customer_creation_bloc.dart';
import 'package:inker_studio/ui/account_verification/account_verification_page.dart';
import 'package:inker_studio/ui/create_account/create_customer/text_fields/text_fields.dart';
import 'package:inker_studio/utils/bloc_navigator.dart';

class CreateCustomerForm extends StatelessWidget {
  static const String className = 'CreateCustomerForm';

  const CreateCustomerForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<CustomerCreationBloc, CustomerCreationState>(
      listener: (context, state) {
        if (state.status.isSubmissionFailure) {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(content: Text(state.errorMessage!)),
            );
        } else if (state.status.isSubmissionSuccess) {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(const SnackBar(content: Text('Customer created !')));

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
    return BlocBuilder<CustomerCreationBloc, CustomerCreationState>(
      buildWhen: (previous, current) => previous.status != current.status,
      builder: (context, state) {
        return state.status.isSubmissionInProgress
            ? const CircularProgressIndicator()
            : ElevatedButton(
                key: const Key('createCustomerForm_continue_raisedButton'),
                child: const Text('Create Customer'),
                onPressed: state.status.isValidated
                    ? () {
                        context
                            .read<CustomerCreationBloc>()
                            .add(const CustomerCreationSubmitted());
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
    return BlocBuilder<CustomerCreationBloc, CustomerCreationState>(
      builder: (context, state) {
        return ElevatedButton(
          key: const Key('createCustomerForm_continue_raisedButton_test'),
          child: const Text('Load Data'),
          onPressed: () {
            final bloc = context.read<CustomerCreationBloc>();
            bloc.add(const CustomerCreationFirstNameChanged('Lucas'));
            bloc.add(const CustomerCreationLastNameChanged('Henry Diaz'));
            bloc.add(const CustomerCreationUsernameChanged('noname152121112'));
            bloc.add(
                const CustomerCreationEmailChanged('lucas@hotmail2111222.com'));
            bloc.add(const CustomerCreationPhoneNumberChanged('+56964484712'));
            bloc.add(const CustomerCreationPasswordChanged('1qaz2pwsx'));
            bloc.add(const CustomerCreationRepeatedPasswordChanged('1qaz2wsx'));
          },
        );
      },
    );
  }
}
