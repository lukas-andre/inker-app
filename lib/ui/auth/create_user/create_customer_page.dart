import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/customer/creation/customer_creation_bloc.dart';
import 'package:inker_studio/domain/usescases/customer/create_customer_usecase.dart';
import 'package:inker_studio/ui/auth/create_user/create_customer_form.dart';

class CreateCustomerPage extends StatelessWidget {
  const CreateCustomerPage({Key? key}) : super(key: key);

  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => const CreateCustomerPage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: BlocProvider(
          create: (context) => CustomerCreationBloc(
              createCustomerUseCase: context.read<CreateCustomerUseCase>()),
          child: const CreateCustomerForm(),
        ),
      ),
    );
  }
}
