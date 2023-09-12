import 'package:json_annotation/json_annotation.dart';
part 'network.g.dart';

@JsonSerializable()
class Network {
  String name;
  String? logo;
  String? extendedLogo;
  int chainId;
  Map<String, dynamic> explorers;
  String coinGeckoAssetPlatform;
  String nativeCurrency;
  String nativeCurrencyAddress;
  String candideBalances;
  String proxyFactory;
  String safeSingleton;
  String fallbackHandler;
  String socialRecoveryModule;
  String entrypoint;
  String multiSendCall;
  String? ensRegistryWithFallback;
  bool visible;

  String get normalizedName => name.replaceAll("ö", "oe");

  Network(
      {required this.name,
      this.logo,
      this.extendedLogo,
      required this.chainId,
      required this.explorers,
      required this.coinGeckoAssetPlatform,
      required this.nativeCurrency,
      required this.nativeCurrencyAddress,
      required this.candideBalances,
      required this.proxyFactory,
      required this.safeSingleton,
      required this.fallbackHandler,
      required this.socialRecoveryModule,
      required this.entrypoint,
      required this.multiSendCall,
      this.ensRegistryWithFallback,
      this.visible = true});

  factory Network.fromJson(Map<String, dynamic> json) => _$NetworkFromJson(json);
  Map<String, dynamic> toJson() => _$NetworkToJson(this);
}
