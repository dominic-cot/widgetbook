import 'package:meta/meta.dart';

import '../fields/fields.dart';
import '../state/state.dart';
import 'knob.dart';

@internal
class StringKnob extends Knob<String> {
  StringKnob({
    required super.label,
    required super.value,
    super.description,
    this.maxLines,
  });

  final int? maxLines;

  @override
  List<Field> get fields {
    return [
      StringField(
        group: 'knobs',
        name: label,
        initialValue: value,
        maxLines: maxLines,
        onChanged: (context, String? value) {
          if (value == null) return;
          WidgetbookState.of(context).updateKnobValue(label, value);
        },
      ),
    ];
  }
}

@internal
class StringOrNullKnob extends Knob<String?> {
  StringOrNullKnob({
    required super.label,
    required super.value,
    super.description,
    this.maxLines,
  });

  final int? maxLines;

  @override
  List<Field> get fields {
    return [
      StringField(
        group: 'knobs',
        name: label,
        initialValue: value,
        maxLines: maxLines,
        onChanged: (context, String? value) {
          if (value == null) return;
          WidgetbookState.of(context).updateKnobValue(label, value);
        },
      ),
    ];
  }
}