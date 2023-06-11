class Param {
  const Param(this.name) : isQuery = false;
  const Param.query(this.name) : isQuery = true;
  final String name;
  final bool isQuery;
}

class RouterMain with RouterBase {
  const RouterMain({
    this.name = '',
    this.className = '',
    this.navClassName = '',
    required this.page,
    this.pages = const [],
    this.pageBuilder,
    this.groupList = const [],
    this.genKey = false,
    this.private = true,
  });

  final String className;
  final String navClassName;
  final bool genKey;
  final bool private;

  @override
  final String name;
  @override
  final dynamic page;
  @override
  final List<RouterPage> pages;
  @override
  final Function? pageBuilder;

  /// 不会从 parent Route 寻找
  @override
  final List<Type> groupList;
}

class RouterPage with RouterBase {
  const RouterPage({
    this.name = '',
    required this.page,
    this.pages = const [],
    this.pageBuilder,
    this.groupList = const [],
  });
  @override
  final String name;
  @override
  final dynamic page;
  @override
  final List<RouterPage> pages;
  @override
  final Function? pageBuilder;

  /// 不会从 parent Route 寻找
  @override
  final List<Type> groupList;
}

mixin RouterBase {
  String get name;
  dynamic get page;
  List<RouterPage> get pages;

  //e.g: Page Function(Widget child);
  Function? get pageBuilder;

  /// 不会从 parent Route 寻找
  List<Type> get groupList;
}
