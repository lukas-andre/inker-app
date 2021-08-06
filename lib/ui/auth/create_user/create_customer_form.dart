import 'package:flutter/material.dart';
import 'package:formz/formz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/customer/creation/customer_creation_bloc.dart';
import 'package:inker_studio/utils/dev.dart' show dev;

class CreateCustomerForm extends StatelessWidget {
  static const String className = 'CreateCustomerForm';

  const CreateCustomerForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<CustomerCreationBloc, CustomerCreationState>(
      listener: (context, state) {
        dev.log('Form status: ${state.status}', className);
        if (state.status.isSubmissionFailure) {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              const SnackBar(content: Text('Create Account Failure')),
            );
        }
      },
      child: Align(
        alignment: const Alignment(0, -1 / 3),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _NamesRow(),
            const Padding(padding: EdgeInsets.all(12)),
            _EmailInput(),
            const Padding(padding: EdgeInsets.all(12)),
            _UsernameInput(),
            const Padding(padding: EdgeInsets.all(12)),
            _PhoneNumberInput(),
            const Padding(padding: EdgeInsets.all(12)),
            _PasswordInput(),
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

class _UsernameInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CustomerCreationBloc, CustomerCreationState>(
      buildWhen: (previous, current) => previous.username != current.username,
      builder: (context, state) {
        return TextField(
          key: const Key('createCustomerForm_usernameInput_textField'),
          onChanged: (username) => context
              .read<CustomerCreationBloc>()
              .add(CustomerCreationUsernameChanged(username)),
          decoration: InputDecoration(
            labelText: 'username',
            errorText: state.username.invalid ? 'invalid username' : null,
          ),
        );
      },
    );
  }
}

class _EmailInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CustomerCreationBloc, CustomerCreationState>(
      buildWhen: (previous, current) => previous.email != current.email,
      builder: (context, state) {
        return TextField(
          key: const Key('createCustomerForm_emailInput_textField'),
          onChanged: (email) => context
              .read<CustomerCreationBloc>()
              .add(CustomerCreationEmailChanged(email)),
          decoration: InputDecoration(
            labelText: 'email',
            errorText: state.email.invalid ? 'invalid email' : null,
          ),
        );
      },
    );
  }
}

class _PhoneNumberInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CustomerCreationBloc, CustomerCreationState>(
      buildWhen: (previous, current) =>
          previous.phoneNumber != current.phoneNumber,
      builder: (context, state) {
        return TextField(
          key: const Key('createCustomerForm_phoneNumberInput_textField'),
          onChanged: (phoneNumber) => context
              .read<CustomerCreationBloc>()
              .add(CustomerCreationPhoneNumberChanged(phoneNumber)),
          decoration: InputDecoration(
            labelText: 'phoneNumber',
            errorText:
                state.phoneNumber.invalid ? 'invalid phone number' : null,
          ),
        );
      },
    );
  }
}

class _NamesRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Expanded(child: FirstNameInput()),
        Expanded(child: LastNameInput())
      ],
    );
  }
}

class FirstNameInput extends StatelessWidget {
  const FirstNameInput({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CustomerCreationBloc, CustomerCreationState>(
      buildWhen: (previous, current) => previous.firstName != current.firstName,
      builder: (context, state) {
        return TextField(
          key: const Key('createCustomerForm_firstNameInput_textField'),
          onChanged: (firstName) => context
              .read<CustomerCreationBloc>()
              .add(CustomerCreationFirstNameChanged(firstName)),
          decoration: InputDecoration(
            labelText: 'first name',
            errorText: state.firstName.invalid ? 'invalid first name' : null,
          ),
        );
      },
    );
  }
}

class LastNameInput extends StatelessWidget {
  const LastNameInput({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CustomerCreationBloc, CustomerCreationState>(
      buildWhen: (previous, current) => previous.lastName != current.lastName,
      builder: (context, state) {
        return TextField(
          key: const Key('createCustomerForm_lastNameInput_textField'),
          onChanged: (lastName) => context
              .read<CustomerCreationBloc>()
              .add(CustomerCreationLastNameChanged(lastName)),
          decoration: InputDecoration(
            labelText: 'last name',
            errorText: state.lastName.invalid ? 'invalid last name' : null,
          ),
        );
      },
    );
  }
}

class _PasswordInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CustomerCreationBloc, CustomerCreationState>(
      buildWhen: (previous, current) => previous.password != current.password,
      builder: (context, state) {
        return TextField(
          key: const Key('createCustomerForm_passwordInput_textField'),
          onChanged: (password) => context
              .read<CustomerCreationBloc>()
              .add(CustomerCreationPasswordChanged(password)),
          obscureText: true,
          decoration: InputDecoration(
            labelText: 'password',
            errorText: state.password.invalid ? 'invalid password' : null,
          ),
        );
      },
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
                child: const Text('CustomerCreation'),
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
      buildWhen: (previous, current) => previous.status != current.status,
      builder: (context, state) {
        return state.status.isSubmissionInProgress
            ? const CircularProgressIndicator()
            : ElevatedButton(
                key: const Key('createCustomerForm_continue_raisedButton_test'),
                child: const Text('Load Data'),
                onPressed: () {
                  final bloc = context.read<CustomerCreationBloc>();
                  bloc.add(const CustomerCreationFirstNameChanged('Lucas'));
                  bloc.add(const CustomerCreationUsernameChanged(
                      'noname_eter33344'));
                  bloc.add(const CustomerCreationLastNameChanged('Diaz'));
                  bloc.add(
                      const CustomerCreationEmailChanged('lucas@henrydz.com'));
                  bloc.add(
                      const CustomerCreationPhoneNumberChanged('+56987654321'));
                  bloc.add(const CustomerCreationPasswordChanged('1qaz2wsx'));
                  bloc.add(const CustomerCreationRepeatedPasswordChanged(
                      '1qaz2wsx'));
                },
              );
      },
    );
  }
}
