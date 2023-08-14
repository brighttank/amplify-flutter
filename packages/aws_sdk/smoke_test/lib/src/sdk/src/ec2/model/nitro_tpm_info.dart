// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.nitro_tpm_info; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;

part 'nitro_tpm_info.g.dart';

/// Describes the supported NitroTPM versions for the instance type.
abstract class NitroTpmInfo
    with _i1.AWSEquatable<NitroTpmInfo>
    implements Built<NitroTpmInfo, NitroTpmInfoBuilder> {
  /// Describes the supported NitroTPM versions for the instance type.
  factory NitroTpmInfo({List<String>? supportedVersions}) {
    return _$NitroTpmInfo._(
        supportedVersions: supportedVersions == null
            ? null
            : _i2.BuiltList(supportedVersions));
  }

  /// Describes the supported NitroTPM versions for the instance type.
  factory NitroTpmInfo.build([void Function(NitroTpmInfoBuilder) updates]) =
      _$NitroTpmInfo;

  const NitroTpmInfo._();

  static const List<_i3.SmithySerializer<NitroTpmInfo>> serializers = [
    NitroTpmInfoEc2QuerySerializer()
  ];

  /// Indicates the supported NitroTPM versions.
  _i2.BuiltList<String>? get supportedVersions;
  @override
  List<Object?> get props => [supportedVersions];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('NitroTpmInfo')
      ..add(
        'supportedVersions',
        supportedVersions,
      );
    return helper.toString();
  }
}

class NitroTpmInfoEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<NitroTpmInfo> {
  const NitroTpmInfoEc2QuerySerializer() : super('NitroTpmInfo');

  @override
  Iterable<Type> get types => const [
        NitroTpmInfo,
        _$NitroTpmInfo,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  NitroTpmInfo deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NitroTpmInfoBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'supportedVersions':
          result.supportedVersions.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(String)],
            ),
          ) as _i2.BuiltList<String>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    NitroTpmInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'NitroTpmInfoResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final NitroTpmInfo(:supportedVersions) = object;
    if (supportedVersions != null) {
      result$
        ..add(const _i3.XmlElementName('SupportedVersions'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          supportedVersions,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    return result$;
  }
}