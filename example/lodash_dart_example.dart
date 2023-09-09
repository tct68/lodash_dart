import 'package:lodash_dart/src/extensions/object.dart';

import 'network.dart';

void main() {
  final Network network = Network(
      name: "name",
      chainId: 1,
      explorers: {},
      coinGeckoAssetPlatform: "coinGeckoAssetPlatform",
      nativeCurrency: "nativeCurrency",
      nativeCurrencyAddress: "nativeCurrencyAddress",
      candideBalances: "candideBalances",
      proxyFactory: "proxyFactory",
      safeSingleton: "safeSingleton",
      fallbackHandler: "fallbackHandler",
      socialRecoveryModule: "socialRecoveryModule",
      entrypoint: "entrypoint",
      logo: "ssssss",
      multiSendCall: "multiSendCall");
  print(network.toJson());
}
