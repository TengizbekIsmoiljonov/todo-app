class ToDo {
  String? id;
  String? todoText;
  bool isDone;
  ToDo({
    required this.id,
    required this.todoText,
    this.isDone = false,
  });
  static List<ToDo> todoList() {
    return[
      ToDo(id: '01', todoText: 'Ulug\'bek', isDone: true),
      ToDo(id: '02', todoText: 'Qudrat', isDone: true),
      ToDo(id: '03', todoText: 'Zafarali'),
    ];
  }
}