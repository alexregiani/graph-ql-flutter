part of 'data_bloc.dart';

sealed class DataState extends Equatable {
  const DataState();
}

final class DataInitial extends DataState {
  @override
  List<Object> get props => [];
}
