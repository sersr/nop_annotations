class NopRouteMain with Base {
  const NopRouteMain({
    this.className = '',
    this.pages = const [],
    this.private = true,
    this.genKey = false,
    this.rootName = 'root',
    this.pathName = '',
    required this.main,
    this.preInit = const [],
    this.preInitUnique = const [],
  });
  final String className;
  @override
  final List<RouteItem> pages;
  final bool genKey;
  final String pathName;
  final String rootName;

  /// 除了root route其他都生成私有字段
  final bool private;
  final Type main;
  @override
  final List<Type> preInit;
  @override
  final List<Type> preInitUnique;

  @override
  String get name => rootName;

  @override
  Type get page => main;
}

class RouteItem with Base {
  const RouteItem({
    this.name = '',
    required this.page,
    this.pages = const [],
    this.preInit = const [],
    this.preInitUnique = const [],
  });
  @override
  final String name;

  /// 类型: Widget
  @override
  final Type page;

  @override
  final List<RouteItem> pages;

  @override
  final List<Type> preInit;
  @override
  final List<Type> preInitUnique;
}

mixin Base {
  String get name;
  Type get page;
  List<RouteItem> get pages;

  List<Type> get preInit;

  /// 不会从 parent Route 寻找
  List<Type> get preInitUnique;
}

/// 类型: Widget Function(BuildContext context,Widget child)
class RouteBuilderItem {
  const RouteBuilderItem({this.pages = const []});
  final List<Type> pages;
}
