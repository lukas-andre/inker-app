import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/customer/creation/customer_creation_bloc.dart';

class LastNameTextField extends StatelessWidget {
  const LastNameTextField({
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
