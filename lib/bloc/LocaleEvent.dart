import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

// الأحداث الممكنة لـ LocaleBloc
abstract class LocaleEvent extends Equatable {
  const LocaleEvent();

  @override
  List<Object> get props => [];
}

class ChangeLanguage extends LocaleEvent {
  final Locale language;

  const ChangeLanguage(this.language);

  @override
  List<Object> get props => [language];
}

class ChangeTheme extends LocaleEvent {
  final ThemeData theme;

  const ChangeTheme(this.theme);

  @override
  List<Object> get props => [theme];
}

// الحالة الممكنة لـ LocaleBloc
class LocaleState extends Equatable {
  final Locale language;
  final ThemeData appTheme;

  const LocaleState({required this.language, required this.appTheme});

  @override
  List<Object> get props => [language, appTheme];

  LocaleState copyWith({Locale? language, ThemeData? appTheme}) {
    return LocaleState(
      language: language ?? this.language,
      appTheme: appTheme ?? this.appTheme,
    );
  }
}

// Bloc الفعلي
class LocaleBloc extends Bloc<LocaleEvent, LocaleState> {
  LocaleBloc()
      : super(LocaleState(
          language: const Locale('en'),
          appTheme: ThemeData.light(),
        )) {
    on<ChangeLanguage>((event, emit) {
      emit(state.copyWith(language: event.language));
    });

    on<ChangeTheme>((event, emit) {
      emit(state.copyWith(appTheme: event.theme));
    });
  }
}
