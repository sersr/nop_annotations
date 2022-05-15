class NopServerEvent {
  const NopServerEvent();
}

class NopServerEventItem {
  const NopServerEventItem({
    this.messageName = '',
    this.separate = false,
    this.generate = true,
    this.isLocal = false,
    this.serverName = '',
    this.connectToServer = const [],
  });

  /// enum name
  final String messageName;

  /// 是否分开所有继承和实现的类
  final bool separate;

  /// 是否为此类生成
  /// 如果为[false]，需要自己手动实现
  final bool generate;

  final bool isLocal;

  final String serverName;
  final List<String> connectToServer;
}

class NopServerMethod {
  const NopServerMethod({
    this.isDynamic = false,
    this.useTransferType = false,
    this.cached = false,
    this.unique = false,
  });
  final bool isDynamic;
  final bool useTransferType;
  final bool unique;
  final bool cached;
}
