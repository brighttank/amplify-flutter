// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.iam.model.get_instance_profile_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'get_instance_profile_request.g.dart';

abstract class GetInstanceProfileRequest
    with
        _i1.HttpInput<GetInstanceProfileRequest>,
        _i2.AWSEquatable<GetInstanceProfileRequest>
    implements
        Built<GetInstanceProfileRequest, GetInstanceProfileRequestBuilder> {
  factory GetInstanceProfileRequest({required String instanceProfileName}) {
    return _$GetInstanceProfileRequest._(
        instanceProfileName: instanceProfileName);
  }

  factory GetInstanceProfileRequest.build(
          [void Function(GetInstanceProfileRequestBuilder) updates]) =
      _$GetInstanceProfileRequest;

  const GetInstanceProfileRequest._();

  factory GetInstanceProfileRequest.fromRequest(
    GetInstanceProfileRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    GetInstanceProfileRequestAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetInstanceProfileRequestBuilder b) {}

  /// The name of the instance profile to get information about.
  ///
  /// This parameter allows (through its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
  String get instanceProfileName;
  @override
  GetInstanceProfileRequest getPayload() => this;
  @override
  List<Object?> get props => [instanceProfileName];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetInstanceProfileRequest');
    helper.add(
      'instanceProfileName',
      instanceProfileName,
    );
    return helper.toString();
  }
}

class GetInstanceProfileRequestAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<GetInstanceProfileRequest> {
  const GetInstanceProfileRequestAwsQuerySerializer()
      : super('GetInstanceProfileRequest');

  @override
  Iterable<Type> get types => const [
        GetInstanceProfileRequest,
        _$GetInstanceProfileRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  GetInstanceProfileRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetInstanceProfileRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'InstanceProfileName':
          result.instanceProfileName = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = (object as GetInstanceProfileRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'GetInstanceProfileRequestResponse',
        _i1.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('InstanceProfileName'))
      ..add(serializers.serialize(
        payload.instanceProfileName,
        specifiedType: const FullType(String),
      ));
    return result;
  }
}