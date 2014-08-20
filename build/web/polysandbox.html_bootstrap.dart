library app_bootstrap;

import 'package:polymer/polymer.dart';

import 'clickcounter.dart' as i0;
import 'randomlabel.dart' as i1;
import 'package:core_elements/core_input.dart' as i2;
import 'package:paper_elements/paper_input.dart' as i3;
import 'polysandbox.html.0.dart' as i4;
import 'package:smoke/smoke.dart' show Declaration, PROPERTY, METHOD;
import 'package:smoke/static.dart' show useGeneratedCode, StaticConfiguration;
import 'clickcounter.dart' as smoke_0;
import 'package:polymer/polymer.dart' as smoke_1;
import 'package:observe/src/metadata.dart' as smoke_2;
import 'randomlabel.dart' as smoke_3;
abstract class _M0 {} // PolymerElement & ChangeNotifier

void main() {
  useGeneratedCode(new StaticConfiguration(
      checkedMode: false,
      getters: {
        #blurAction: (o) => o.blurAction,
        #clicked: (o) => o.clicked,
        #count: (o) => o.count,
        #disabled: (o) => o.disabled,
        #downAction: (o) => o.downAction,
        #error: (o) => o.error,
        #focusAction: (o) => o.focusAction,
        #increment: (o) => o.increment,
        #inputChangeAction: (o) => o.inputChangeAction,
        #inputValue: (o) => o.inputValue,
        #invalid: (o) => o.invalid,
        #label: (o) => o.label,
        #multiline: (o) => o.multiline,
        #placeholder: (o) => o.placeholder,
        #rows: (o) => o.rows,
        #transitionEndAction: (o) => o.transitionEndAction,
        #upAction: (o) => o.upAction,
      },
      setters: {
        #count: (o, v) { o.count = v; },
        #inputValue: (o, v) { o.inputValue = v; },
        #label: (o, v) { o.label = v; },
      },
      parents: {
        smoke_0.ClickCounter: _M0,
        smoke_3.RandomLabel: _M0,
        _M0: smoke_1.PolymerElement,
      },
      declarations: {
        smoke_0.ClickCounter: {
          #count: const Declaration(#count, int, kind: PROPERTY, annotations: const [smoke_2.reflectable, smoke_1.published]),
        },
        smoke_3.RandomLabel: {
          #label: const Declaration(#label, String, kind: PROPERTY, annotations: const [smoke_2.reflectable, smoke_1.published]),
        },
      },
      names: {
        #blurAction: r'blurAction',
        #clicked: r'clicked',
        #count: r'count',
        #disabled: r'disabled',
        #downAction: r'downAction',
        #error: r'error',
        #focusAction: r'focusAction',
        #increment: r'increment',
        #inputChangeAction: r'inputChangeAction',
        #inputValue: r'inputValue',
        #invalid: r'invalid',
        #label: r'label',
        #multiline: r'multiline',
        #placeholder: r'placeholder',
        #rows: r'rows',
        #transitionEndAction: r'transitionEndAction',
        #upAction: r'upAction',
      }));
  configureForDeployment([
      () => Polymer.register('click-counter', i0.ClickCounter),
      () => Polymer.register('random-label', i1.RandomLabel),
      i2.upgradeCoreInput,
      i3.upgradePaperInput,
    ]);
  i4.main();
}
