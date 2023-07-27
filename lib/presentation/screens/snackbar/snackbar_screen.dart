import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void showCustomSnackbar(BuildContext context, String text) {
  ScaffoldMessenger.of(context).clearSnackBars();
  final snackbar = SnackBar(
    content: Text(text),
    action: SnackBarAction(
      label: 'Ok!',
      onPressed: () {},
    ),
    duration: const Duration(seconds: 2),
  );
  ScaffoldMessenger.of(context).showSnackBar(snackbar);
}

void openDialog(BuildContext context) {
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (context) => AlertDialog(
      title: const Text('¿Estás Seguro?'),
      content: const Text(
          'Ad eiusmod voluptate id id adipisicing in enim id. Ut aute mollit excepteur ex minim ut duis adipisicing ut sunt est ullamco nisi. Reprehenderit do eiusmod incididunt cupidatat ipsum non ullamco consectetur in aute culpa minim adipisicing nulla. Irure enim sit laborum ex eiusmod anim excepteur nostrud quis consequat.'),
      actions: [
        TextButton(
          onPressed: () => context.pop(),
          child: const Text('Cancelar'),
        ),
        FilledButton(
          onPressed: () => context.pop(),
          child: const Text('Aceptar'),
        ),
      ],
    ),
  );
}

class SnackbarScreen extends StatelessWidget {
  static const name = 'snackbar_screen';

  const SnackbarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbars y Dialogos'),
      ),
      floatingActionButton: FloatingActionButton.extended(
        icon: const Icon(Icons.remove_red_eye_outlined),
        label: const Text('Mostrar Snackbar'),
        onPressed: () {
          showCustomSnackbar(context, 'Mensaje de prueba');
        },
      ),
      body: const _SnackbarView(),
    );
  }
}

class _SnackbarView extends StatelessWidget {
  const _SnackbarView();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FilledButton.tonal(
            onPressed: () {
              showAboutDialog(
                context: context,
                children: [
                  const Text('Sit nulla minim aliqua enim nisi qui commodo.')
                ],
              );
            },
            child: const Text('Licencias usadas'),
          ),
          FilledButton.tonal(
            onPressed: () {
              openDialog(context);
            },
            child: const Text('Mostrar dialogo'),
          )
        ],
      ),
    );
  }
}
