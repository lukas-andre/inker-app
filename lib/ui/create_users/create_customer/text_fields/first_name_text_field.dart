import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/customer/creation/customer_creation_bloc.dart';
import 'package:inker_studio/utils/dev.dart';

class FirstNameTextField extends StatelessWidget {
  const FirstNameTextField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CustomerCreationBloc, CustomerCreationState>(
      buildWhen: (previous, current) => previous.firstName != current.firstName,
      builder: (context, state) {
        return TextField(
          key: const Key('createCustomerForm_firstNameInput_textField'),
          onChanged: (firstName) {
            context
                .read<CustomerCreationBloc>()
                .add(CustomerCreationFirstNameChanged(firstName));
            dev.log(firstName, 'FirtNameInput');
          },
          decoration: InputDecoration(
            labelText: 'first name',
            errorText: state.firstName.invalid ? 'invalid first name' : null,
          ),
        );
      },
    );
  }
}
