import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/customer/creation/customer_creation_bloc.dart';

class UsernameTextField extends StatelessWidget {
  const UsernameTextField({Key? key}) : super(key: key);

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
