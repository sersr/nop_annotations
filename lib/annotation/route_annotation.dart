class RouteMain {
  const RouteMain({
    this.name = '',
    this.pages = const [],
    this.privite = true,
    required this.main,
  });
  final String name;
  final List<RouteItem> pages;

  /// 除了root route其他都生成私有字段
  final bool privite;
  final Type main;
}

class RouteItem {
  const RouteItem({
    this.name = '',
    required this.page,
    this.pages = const [],
  });
  final String name;

  /// 类型: Widget
  final Type page;

  final List<RouteItem> pages;
}

/// 类型: Widget Function(BuildContext context,Widget child)
class RouteBuilderItem {
  const RouteBuilderItem({this.pages = const []});
  final List<Type> pages;
}
