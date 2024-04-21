import 'dart:math';

import 'package:flutter/material.dart';
import 'package:faker/faker.dart';

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

enum StatusTask { todo, wip, done }

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool switchValue = false;
  int? groupValue = 1;
  bool? checkboxValue = true;
  String? dayWeek;
  bool buyPizza = true;
  String? dropDownValue;
  Set<StatusTask> status = {StatusTask.todo};
  double sliderValue = 5.0;
  final faker = Faker();
  List<String> names = [
    'Alan',
    'Bruce',
    'Andrew',
    'Luis',
    'Keanu',
    'Mel',
    'May',
    'June',
    'Quan Ha',
    'Liu'
  ];

  List<String> months = [
    'Janeiro',
    'Fevereiro',
    'Março',
    'Abril',
    'Maio',
    'Junho',
    'Julho',
    'Aosto',
    'Setembro',
    'Outubro',
    'Novembro',
    'Dezembro'
  ];

  List<String> selectedMonth = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('InForm'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.sizeOf(context).width,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 24),
                  child: Text('Quais botões devo utilizar?',
                      style: Theme.of(context).textTheme.displaySmall),
                ),
                Wrap(
                  runAlignment: WrapAlignment.spaceAround,
                  runSpacing: 4,
                  spacing: 4,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        final snackBar = SnackBar(
                          content: const Text('Yay! A SnackBar!'),
                          action: SnackBarAction(
                            label: 'Undo',
                            onPressed: () {
                              // Some code to undo the change.
                            },
                          ),
                        );

                        // Find the ScaffoldMessenger in the widget tree
                        // and use it to show a SnackBar.
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      },
                      child: const Text('ElevatedButton'),
                    ),
                    ElevatedButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.favorite),
                      label: const Text('ElevatedButtom'),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text('TextButton'),
                    ),
                    TextButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.favorite),
                      label: const Text('TextButton'),
                    ),
                    FilledButton(
                      onPressed: () {},
                      child: const Text('FilledButton'),
                    ),
                    FilledButton.tonal(
                      onPressed: () {},
                      child: const Text('FilledButtonTonal'),
                    ),
                    TextButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.favorite),
                      label: const Text('FilledButton'),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 24),
                  child: Text('Quais botões de ícones devo utilizar?',
                      style: Theme.of(context).textTheme.displaySmall),
                ),
                Wrap(
                  spacing: 16,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.favorite),
                    ),
                    IconButton.filled(
                      onPressed: () {},
                      icon: const Icon(Icons.favorite),
                    ),
                    IconButton.filledTonal(
                      onPressed: () {},
                      icon: const Icon(Icons.favorite),
                    ),
                    IconButton.outlined(
                      onPressed: () {},
                      icon: const Icon(Icons.favorite),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 24),
                  child: Text('Quais widgets de selação única devo utilizar?',
                      style: Theme.of(context).textTheme.displaySmall),
                ),
                SwitchListTile(
                  title: const Text('Habilitar Go-Horse'),
                  value: switchValue,
                  onChanged: (value) {
                    setState(() {
                      switchValue = value;
                    });
                  },
                ),
                CheckboxListTile(
                  title: const Text('Aceitar mais café'),
                  value: checkboxValue,
                  onChanged: (checked) =>
                      setState(() => checkboxValue = checked),
                ),
                ChoiceChip(
                  label: const Text('Encomentar pizza'),
                  selected: buyPizza,
                  onSelected: (selected) {
                    setState(() {
                      buyPizza = !buyPizza;
                    });
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16, left: 16),
                  child: Text(
                    'Quantos pedaços?',
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                ),
                Slider(
                  min: 0,
                  max: 16,
                  divisions: 4,
                  label: sliderValue.toString(),
                  value: sliderValue,
                  onChanged: (value) => setState(() => sliderValue = value),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 24),
                  child: Text(
                      'Quais widgets de selação única devo utilizar? com mútiplas opções',
                      style: Theme.of(context).textTheme.displaySmall),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Text('Radio',
                      style: Theme.of(context).textTheme.bodyLarge),
                ),
                Column(
                  children: [
                    RadioListTile(
                      title: const Text('Front-end'),
                      value: 1,
                      groupValue: groupValue,
                      onChanged: (index) {
                        setState(() {
                          groupValue = index;
                        });
                      },
                    ),
                    RadioListTile(
                      title: const Text('Back-end'),
                      value: 2,
                      groupValue: groupValue,
                      onChanged: (index) {
                        setState(() {
                          groupValue = index;
                        });
                      },
                    ),
                    RadioListTile(
                      title: const Text('Fullstack'),
                      value: 3,
                      groupValue: groupValue,
                      onChanged: (index) {
                        setState(() {
                          groupValue = index;
                        });
                      },
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Text('ChoiceChip',
                      style: Theme.of(context).textTheme.bodyLarge),
                ),
                Wrap(
                  runSpacing: 8,
                  spacing: 8,
                  children: <String?>[
                    'Domingo',
                    'Segunda',
                    'Terça',
                    'Quarta',
                    'Quinta',
                    'Sexta',
                    'Sábado',
                  ]
                      .map((day) => ChoiceChip(
                            label: Text(day!),
                            selected: dayWeek == day,
                            onSelected: (selected) {
                              setState(() {
                                dayWeek = selected ? day : null;
                              });
                            },
                          ))
                      .toList(),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 24),
                  child: Text('Lista suspensa',
                      style: Theme.of(context).textTheme.bodyLarge),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: DropdownButton<String?>(
                      value: dropDownValue,
                      isExpanded: true,
                      items: <String?>[
                        'Interestelar',
                        'Openheimmer',
                        'Barbie',
                        'Saldosa Maloca',
                      ]
                          .map(
                            (filme) => DropdownMenuItem<String>(
                              value: filme,
                              child: Text(filme!),
                            ),
                          )
                          .toList(),
                      onChanged: (value) {
                        setState(() {
                          dropDownValue = value;
                        });
                      }),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 24),
                  child: Text('Segmented Buttom',
                      style: Theme.of(context).textTheme.bodyLarge),
                ),
                SegmentedButton(
                  segments: const [
                    ButtonSegment<StatusTask>(
                      value: StatusTask.todo,
                      label: Text('Todo'),
                    ),
                    ButtonSegment<StatusTask>(
                      value: StatusTask.wip,
                      label: Text('WIP'),
                    ),
                    ButtonSegment<StatusTask>(
                      value: StatusTask.done,
                      label: Text('Done'),
                    ),
                  ],
                  selected: status,
                  onSelectionChanged: (Set<StatusTask> newState) {
                    setState(() {
                      status = newState;
                    });
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 24),
                  child: Text(
                      'Quais widgets de selação múltiplos valores devo utilizar?',
                      style: Theme.of(context).textTheme.displaySmall),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 24),
                  child: Text('Filter Chip',
                      style: Theme.of(context).textTheme.bodyLarge),
                ),
                Wrap(
                  children: months
                      .map((month) => FilterChip(
                            label: Text(month),
                            selected: selectedMonth.contains(month),
                            onSelected: (selected) {
                              setState(() {
                                if (selected) {
                                  selectedMonth.add(month);
                                } else {
                                  selectedMonth.remove(month);
                                }
                              });
                            },
                          ))
                      .toList(),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 24),
                  child: Text('CheckBox',
                      style: Theme.of(context).textTheme.bodyLarge),
                ),
                Column(
                  children: months
                      .map((e) => CheckboxListTile(
                            title: Text(e),
                            value: selectedMonth.contains(e),
                            onChanged: (selected) {
                              setState(() {
                                if (selected ?? false) {
                                  selectedMonth.add(e);
                                } else {
                                  selectedMonth.remove(e);
                                }
                              });
                            },
                          ))
                      .toList(),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 24),
                  child: Text('Como agrupar um conjunto de ações ou tags?',
                      style: Theme.of(context).textTheme.displaySmall),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Action Chip',
                        style: Theme.of(context).textTheme.bodyLarge),
                    IconButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: const Text('Chips'),
                              content: const Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                      'Os Chips são uma uma forma atraente e intuitiva de exibir e interagir com selecções ou tags.'),
                                  Text(
                                      'Com ele você pode fazer seleção últipla de itens, filtrar conteúdo, stilizar tags, formulários dinâmicos, listar permissões visualmente, dentre outras possibilidades.')
                                ],
                              ),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: const Text('LEGAL'),
                                ),
                              ],
                            );
                          },
                        );
                      },
                      icon: const Icon(Icons.info),
                    ),
                  ],
                ),
                Wrap(
                  runSpacing: 4,
                  spacing: 4,
                  children: <(String, IconData)>[
                    ('Play', Icons.play_arrow),
                    ('Pause', Icons.pause),
                    ('Stop', Icons.stop),
                    ('Rewind', Icons.fast_rewind),
                    ('Forwind', Icons.fast_forward),
                    ('Record', Icons.record_voice_over)
                  ]
                      .map((action) => ActionChip(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(32),
                            ),
                            pressElevation: 8,
                            labelPadding: const EdgeInsets.all(4),
                            avatar: Icon(action.$2),
                            onPressed: () {},
                            label: Text(action.$1),
                          ))
                      .toList(),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 24),
                  child: Text('Input Chip',
                      style: Theme.of(context).textTheme.bodyLarge),
                ),
                Wrap(
                  runSpacing: 4,
                  spacing: 4,
                  children: names
                      .map((name) => InputChip(
                            onPressed: () {
                              if (!mounted) return;
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(SnackBar(
                                content: Text('Voce selecionou $name!'),
                                duration: const Duration(seconds: 1),
                                action: SnackBarAction(
                                    label: 'OK', onPressed: () {}),
                              ));
                            },
                            onDeleted: () {
                              setState(() {
                                names.remove(name);
                              });
                            },
                            label: Text(faker.person.name().split(' ').first),
                            avatar: CircleAvatar(
                              radius: 24,
                              backgroundImage: NetworkImage(
                                faker.image.image(
                                    width: 100,
                                    height: 100,
                                    keywords: ['faces'],
                                    random: true),
                              ),
                            ),
                          ))
                      .toList(),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 24),
                  child: Text('Chip',
                      style: Theme.of(context).textTheme.bodyLarge),
                ),
                Wrap(
                  runSpacing: 4,
                  spacing: 4,
                  children: <String>[
                    'Personal',
                    'Work',
                    'School',
                    'Business',
                    'Social',
                  ]
                      .map((tag) => Chip(
                            backgroundColor: Color.fromARGB(
                                55,
                                Random().nextInt(255),
                                Random().nextInt(255),
                                Random().nextInt(255)),
                            label: Text(tag),
                          ))
                      .toList(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
