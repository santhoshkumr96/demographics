import 'dart:convert';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class LoginCall {
  static Future<ApiCallResponse> call({
    String? username = '',
    String? password = '',
  }) async {
    final ffApiRequestBody = '''
{
  "username": "$username",
  "password": "$password"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'login',
      apiUrl: 'http://202.21.44.157:9080/demographics/api/auth/signin',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.id''',
      ));
  static String? username(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.username''',
      ));
  static String? email(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.email''',
      ));
  static List? roles(dynamic response) => getJsonField(
        response,
        r'''$.roles''',
        true,
      ) as List?;
}

class GetFamilyDetailsCall {
  static Future<ApiCallResponse> call({
    int? numberOfRows = 30,
    int? pageNumber = 0,
    String? respondentName = '',
    String? mobileNumber = '',
    String? villageName = '',
    String? memberName = '',
    String? familyId = '',
  }) async {
    final ffApiRequestBody = '''
{
  "numberOfRows": $numberOfRows,
  "pageNumber": $pageNumber,
  "familyId": "$familyId",
  "respondentName": "$respondentName",
  "mobileNumber": "$mobileNumber",
  "villageName": "$villageName",
  "memberName": "$memberName"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getFamilyDetails',
      apiUrl: 'http://202.21.44.157:9080/demographics/api/getFamilyDetails',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? allFamilyData(dynamic response) => getJsonField(
        response,
        r'''$.content''',
        true,
      ) as List?;
}

class DeleteFamliyCall {
  static Future<ApiCallResponse> call({
    String? familyId = '',
    int? id,
    int? userId,
  }) async {
    final ffApiRequestBody = '''
{
  "familyId": "$familyId",
  "id": $id,
  "userId": $userId
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'deleteFamliy',
      apiUrl: 'http://202.21.44.157:9080/demographics/api/deleteFamily',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateFamilyCall {
  static Future<ApiCallResponse> call({
    String? respondantName = '',
    String? mobileNumber = '',
    int? userId,
  }) async {
    final ffApiRequestBody = '''
{
  "familyId": "",
  "areaDetails": 0,
  "doorNo": "",
  "respondentName": "$respondantName",
  "mobileNumber": "$mobileNumber",
  "statusOfHouse": 0,
  "typeOfHouse": 0,
  "wetLandInAcres": "",
  "dryLandInAcres": "",
  "motorVechicles": "",
  "oneWheeler": 0,
  "twoWheeler": 0,
  "threeWheeler": 0,
  "fourWheeler": 0,
  "noOtherVechicles": 0,
  "otherVechiclesDetails": "",
  "livestockDetails": "",
  "hen": 0,
  "cow": 0,
  "pig": 0,
  "buffalo": 0,
  "goat": 0,
  "noOtherLivestock": 0,
  "otherLivestockDetails": "",
  "toiletFacilityAtHome": "",
  "createdBy": $userId,
  "deletedBy": 0,
  "updatedBy": $userId
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createFamily',
      apiUrl: 'http://202.21.44.157:9080/demographics/api/saveFamily',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetFamilyDetailsIndividualCall {
  static Future<ApiCallResponse> call({
    int? familyIdActual,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getFamilyDetailsIndividual',
      apiUrl:
          'http://202.21.44.157:9080/demographics/api/getFamilyDetail?id=$familyIdActual',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic familyData(dynamic response) => getJsonField(
        response,
        r'''$''',
      );
  static List? membersData(dynamic response) => getJsonField(
        response,
        r'''$.memberDetail''',
        true,
      ) as List?;
}

class CreateMemberCall {
  static Future<ApiCallResponse> call({
    String? familyIdRef = '',
    String? memberName = '',
    int? userId,
  }) async {
    final ffApiRequestBody = '''
{
  "familyIdRef": "$familyIdRef",
  "memberName": "$memberName",
  "gender": 0,
  "createdBy":$userId ,
  "aadharNumber": "",
  "mobileNumber": "",
  "patientId": "",
  "tmhId": "",
  "email": "",
  "physicallyChallenged": "",
  "physicallyChallengedDetails": "",
  "permanentSterlization": "",
  "tmpSterlization": "",
  "permanentSterlizationDate": null,
  "tmpSterlizationType": "",
  "diabeticEnrolmentDate": null,
  "diabeticEnrollmentStatus": "",
  "diabeticEnrollmentEndDate": null,
  "diabeticPackage": "",
  "handicapType": 0,
  "height": 0,
  "weight": 0,
  "occupation": 0,
  "smartphone": "",
  "govtInsurance": "",
  "privateInsurance": "",
  "oldAgePension": "",
  "widowedPension": "",
  "retiredPerson": "",
  "vaccination": "",
  "doseOne": null,
  "doseTwo": null,
  "birthDate": null,
  "smoking": "",
  "drinking": "",
  "tobacco": "",
  "diabetes": "",
  "bp": "",
  "osteoporosis": "",
  "breastCancer": "",
  "uterusCancer": "",
  "oralCancer": "",
  "obesity": "",
  "heartDiseases": "",
  "lungRelatedDiseases": "",
  "asthma": "",
  "jointPain": "",
  "otherDiseases": "",
  "community": 0,
  "relationship": 0,
  "maritalStatus": 0,
  "bloodGroup": 0,
  "educationQualification": 0,
  "annualIncome": 0,
  "annualIncomeString": "",
  "isOsteoporosisScan": "",
  "osteoporosisScanOne": null,
  "osteoporosisScanTwo": null,
  "deceasedDate": null,
  "isDeceased": "",
  "imageLocation": "",
  "uterusCancerScan": null,
  "breastCancerScan": null,
  "updatedBy": $userId 
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createMember',
      apiUrl: 'http://202.21.44.157:9080/demographics/api/saveMember',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteMemberCall {
  static Future<ApiCallResponse> call({
    String? familyIdRef = '',
    int? memberId,
    int? userId,
  }) async {
    final ffApiRequestBody = '''
{
  "familyId": "$familyIdRef",
  "id": $memberId,
  "userId": $userId
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'deleteMember',
      apiUrl: 'http://202.21.44.157:9080/demographics/api/deleteMember',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
