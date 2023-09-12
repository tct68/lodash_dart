// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'network.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Network _$NetworkFromJson(Map<String, dynamic> json) => Network(
      name: json['name'] as String,
      logo: json['logo'] as String?,
      extendedLogo: json['extendedLogo'] as String?,
      chainId: json['chainId'] as int,
      explorers: json['explorers'] as Map<String, dynamic>,
      coinGeckoAssetPlatform: json['coinGeckoAssetPlatform'] as String,
      nativeCurrency: json['nativeCurrency'] as String,
      nativeCurrencyAddress: json['nativeCurrencyAddress'] as String,
      candideBalances: json['candideBalances'] as String,
      proxyFactory: json['proxyFactory'] as String,
      safeSingleton: json['safeSingleton'] as String,
      fallbackHandler: json['fallbackHandler'] as String,
      socialRecoveryModule: json['socialRecoveryModule'] as String,
      entrypoint: json['entrypoint'] as String,
      multiSendCall: json['multiSendCall'] as String,
      ensRegistryWithFallback: json['ensRegistryWithFallback'] as String?,
      visible: json['visible'] as bool? ?? true,
    );

Map<String, dynamic> _$NetworkToJson(Network instance) => <String, dynamic>{
      'name': instance.name,
      'logo': instance.logo,
      'extendedLogo': instance.extendedLogo,
      'chainId': instance.chainId,
      'explorers': instance.explorers,
      'coinGeckoAssetPlatform': instance.coinGeckoAssetPlatform,
      'nativeCurrency': instance.nativeCurrency,
      'nativeCurrencyAddress': instance.nativeCurrencyAddress,
      'candideBalances': instance.candideBalances,
      'proxyFactory': instance.proxyFactory,
      'safeSingleton': instance.safeSingleton,
      'fallbackHandler': instance.fallbackHandler,
      'socialRecoveryModule': instance.socialRecoveryModule,
      'entrypoint': instance.entrypoint,
      'multiSendCall': instance.multiSendCall,
      'ensRegistryWithFallback': instance.ensRegistryWithFallback,
      'visible': instance.visible,
    };
