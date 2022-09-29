import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/explorer/explorer_page/explorer_page_bloc.dart';
import 'package:inker_studio/ui/customer/explore/widgets/explorer_switch_button.dart';
import 'package:inker_studio/ui/theme/overlay_style.dart';

class ExplorerSwitchViewButtons extends StatelessWidget {
  const ExplorerSwitchViewButtons({Key? key}) : super(key: key);

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
            ExplorerSwitchButton(
                view: ExplorerView.list,
                onTap: () {
                  explorerPageBloc.add(const ExplorerPageEventViewChanged(
                      view: ExplorerView.list));
                  OverlayStyle.setWhite();
                },
                selectedView: state.view,
                text: 'Todos'),
            SizedBox(
              width: size.width * 0.04,
            ),
            ExplorerSwitchButton(
                view: ExplorerView.map,
                onTap: () {
                  explorerPageBloc.add(const ExplorerPageEventViewChanged(
                      view: ExplorerView.map));
                  OverlayStyle.setBlack();
                },
                selectedView: state.view,
                text: 'Mapa'),
          ]),
        ));
      },
    );
  }
}
