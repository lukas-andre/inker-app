import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/customer/creation/customer_creation_bloc.dart';
import 'package:inker_studio/domain/usescases/customer/create_customer_usecase.dart';

import 'create_artist_form.dart';

class CreateArtistPage extends StatelessWidget {
  const CreateArtistPage({Key? key}) : super(key: key);

  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => const CreateArtistPage());
  }

  static Page page() {
    return const MaterialPage<void>(child: CreateArtistPage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Create Artist Account')),
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: BlocProvider(
          create: (context) => CustomerCreationBloc(
              createCustomerUseCase: context.read<CreateCustomerUseCase>()),
          child: const CreateArtistForm(),
        ),
      ),
    );
  }
}
