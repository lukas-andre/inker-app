import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/explorer/explorer_page/explorer_plage_bloc.dart';
import 'package:inker_studio/ui/customer/explore/widgets/explorer_switch.dart';

class ExplorerSwitchViews extends StatelessWidget {
  const ExplorerSwitchViews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final explorerPageBloc = context.read<ExplorerPageBloc>();
    return BlocBuilder<ExplorerPageBloc, ExplorerPageState>(
      builder: (context, state) {
        return SafeArea(
            child: Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Row(children: [
            SizedBox(
              width: size.width * 0.5,
            ),
            ExplorerSwitch(
                view: ExplorerView.list,
                onTap: () => explorerPageBloc.add(
                    const ExplorerPageEventViewChanged(
                        view: ExplorerView.list)),
                selectedView: state.view,
                text: 'Todos'),
            SizedBox(
              width: size.width * 0.04,
            ),
            ExplorerSwitch(
                view: ExplorerView.map,
                onTap: () => explorerPageBloc.add(
                    const ExplorerPageEventViewChanged(view: ExplorerView.map)),
                selectedView: state.view,
                text: 'Mapa'),
          ]),
        ));
      },
    );
  }
}
