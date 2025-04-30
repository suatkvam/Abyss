// main.dart
import 'package:abyss/core/theme/app_theme.dart';
import 'package:abyss/data/datasources/dummy_data_source.dart';
import 'package:abyss/data/repositories/chat_repository.dart';
import 'package:abyss/logic/auth/auth_bloc.dart';
import 'package:abyss/presentation/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<ChatRepository>(
          create: (_) => ChatRepositoryImpl(DummyDataSource()),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider<AuthBloc>(
            create: (context) => AuthBloc(context.read<ChatRepository>()),
          ),
        ],
        child: MaterialApp.router(
          theme: AppTheme.darkTheme,
          title: 'ABYSS',
          routerConfig: router,
        ),
      ),
    );
  }
}
