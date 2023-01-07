import 'package:blocinterview/features/items/domain/usecases/get_items.dart';
import 'package:blocinterview/features/items/presentation/bloc/items_bloc.dart';
import 'package:blocinterview/features/items/presentation/bloc/items_events.dart';
import 'package:blocinterview/features/items/presentation/bloc/items_state.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';

class MockGetItems extends Mock implements GetItems {}

class MockItemsLoadEvent extends Mock implements ItemsLoadEvent {}

void main() {
  MockGetItems mockGetItems = MockGetItems();

  ItemsBloc bloc = ItemsBloc(
    getItems: mockGetItems,
  );

  test('initialState should be Empty', () {
    expect(bloc.state, equals(const ItemsInitial()));
  });
}
