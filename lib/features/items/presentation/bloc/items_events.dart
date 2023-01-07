import 'package:freezed_annotation/freezed_annotation.dart';
part 'items_events.freezed.dart';

@freezed
class ItemsEvent with _$ItemsEvent {
  const factory ItemsEvent.load() = ItemsLoadEvent;
}