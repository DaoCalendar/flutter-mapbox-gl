// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import, unused_local_variable, dead_code, unnecessary_cast
//////////////////////////////////////////////////////////
// GENERATED BY FLUTTIFY. DO NOT EDIT IT.
//////////////////////////////////////////////////////////

import 'dart:typed_data';

import 'package:mapbox_gl/src/android/android.export.g.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'package:foundation_fluttify/foundation_fluttify.dart';
import 'package:core_location_fluttify/core_location_fluttify.dart';

class com_amap_api_trace_LBSTraceClient extends java_lang_Object  {
  //region constants
  static const String name__ = 'com.amap.api.trace.LBSTraceClient';

  static final int TYPE_AMAP = 1;
  static final int TYPE_GPS = 2;
  static final int TYPE_BAIDU = 3;
  static final String MIN_GRASP_POINT_ERROR = "轨迹点太少或距离太近,轨迹纠偏失败";
  static final String LOCATE_TIMEOUT_ERROR = "定位超时";
  static final String TRACE_SUCCESS = "纠偏成功";
  //endregion

  //region creators
  static Future<com_amap_api_trace_LBSTraceClient> create__android_content_Context(android_content_Context var1) async {
    final int refId = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('ObjectFactory::createcom_amap_api_trace_LBSTraceClient__android_content_Context', {"var1": var1.refId});
    final object = com_amap_api_trace_LBSTraceClient()..refId = refId..tag__ = 'amap_map_fluttify';
  
    kNativeObjectPool.add(object);
    return object;
  }
  
  static Future<List<com_amap_api_trace_LBSTraceClient>> create_batch__android_content_Context(List<android_content_Context> var1) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
    final List resultBatch = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('ObjectFactory::create_batchcom_amap_api_trace_LBSTraceClient__android_content_Context', [for (int __i__ = 0; __i__ < var1.length; __i__++) {"var1": var1[__i__].refId}]);
  
    final List<com_amap_api_trace_LBSTraceClient> typedResult = resultBatch.map((result) => com_amap_api_trace_LBSTraceClient()..refId = result..tag__ = 'amap_map_fluttify').toList();
    kNativeObjectPool.addAll(typedResult);
    return typedResult;
  }
  
  //endregion

  //region getters
  
  //endregion

  //region setters
  
  //endregion

  //region methods
  
  static Future<com_amap_api_trace_LBSTraceClient> getInstance(android_content_Context var0) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.amap.api.trace.LBSTraceClient::getInstance([])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.trace.LBSTraceClient::getInstance', {"var0": var0 is Ref ? (var0 as Ref)?.refId : var0});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = com_amap_api_trace_LBSTraceClient()..refId = __result__..tag__ = 'amap_map_fluttify';
      if (__return__ is Ref) kNativeObjectPool.add(__return__);
      return __return__;
    }
  }
  
  
  Future<void> queryProcessedTrace(int var1, List<com_amap_api_trace_TraceLocation> var2, int var3, com_amap_api_trace_TraceListener var4) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.amap.api.trace.LBSTraceClient@$refId::queryProcessedTrace([\'var1\':$var1, \'var3\':$var3])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.trace.LBSTraceClient::queryProcessedTrace', {"var1": var1, "var2": var2.map((__it__) => __it__?.refId).toList(), "var3": var3, "refId": refId});
  
  
    // handle native call
    MethodChannel('com.amap.api.trace.LBSTraceClient::queryProcessedTrace::Callback')
        .setMethodCallHandler((methodCall) async {
          final args = methodCall.arguments as Map;
          switch (methodCall.method) {
            case 'Callback::com.amap.api.trace.TraceListener::onRequestFailed':
              // print log
              if (fluttifyLogEnabled) {
                debugPrint('fluttify-dart-callback: onRequestFailed([\'var1\':${args['var1']}, \'var2\':${args['var2']}])');
              }
        
              // handle the native call
              var4?.onRequestFailed(args['var1'], args['var2']);
              break;
            case 'Callback::com.amap.api.trace.TraceListener::onTraceProcessing':
              // print log
              if (fluttifyLogEnabled) {
                debugPrint('fluttify-dart-callback: onTraceProcessing([\'var1\':${args['var1']}, \'var2\':${args['var2']}, \'var3\':${args['var3']}])');
              }
        
              // handle the native call
              var4?.onTraceProcessing(args['var1'], args['var2'], (args['var3'] as List).cast<int>().map((__it__) => TypeOpAmapMapFluttifyAndroid(__it__).as__<com_amap_api_maps_model_LatLng>()).toList());
              break;
            case 'Callback::com.amap.api.trace.TraceListener::onFinished':
              // print log
              if (fluttifyLogEnabled) {
                debugPrint('fluttify-dart-callback: onFinished([\'var1\':${args['var1']}, \'var2\':${args['var2']}, \'var3\':${args['var3']}, \'var4\':${args['var4']}])');
              }
        
              // handle the native call
              var4?.onFinished(args['var1'], (args['var2'] as List).cast<int>().map((__it__) => TypeOpAmapMapFluttifyAndroid(__it__).as__<com_amap_api_maps_model_LatLng>()).toList(), args['var3'], args['var4']);
              break;
            default:
              break;
          }
        });
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = __result__;
    
      return __return__;
    }
  }
  
  
  Future<void> startTrace(com_amap_api_trace_TraceStatusListener var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.amap.api.trace.LBSTraceClient@$refId::startTrace([])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.trace.LBSTraceClient::startTrace', {"refId": refId});
  
  
    // handle native call
    MethodChannel('com.amap.api.trace.LBSTraceClient::startTrace::Callback')
        .setMethodCallHandler((methodCall) async {
          final args = methodCall.arguments as Map;
          switch (methodCall.method) {
            case 'Callback::com.amap.api.trace.TraceStatusListener::onTraceStatus':
              // print log
              if (fluttifyLogEnabled) {
                debugPrint('fluttify-dart-callback: onTraceStatus([\'var1\':${args['var1']}, \'var2\':${args['var2']}, \'var3\':${args['var3']}])');
              }
        
              // handle the native call
              var1?.onTraceStatus((args['var1'] as List).cast<int>().map((__it__) => TypeOpAmapMapFluttifyAndroid(__it__).as__<com_amap_api_trace_TraceLocation>()).toList(), (args['var2'] as List).cast<int>().map((__it__) => TypeOpAmapMapFluttifyAndroid(__it__).as__<com_amap_api_maps_model_LatLng>()).toList(), args['var3']);
              break;
            default:
              break;
          }
        });
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = __result__;
    
      return __return__;
    }
  }
  
  
  Future<void> stopTrace() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.amap.api.trace.LBSTraceClient@$refId::stopTrace([])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.trace.LBSTraceClient::stopTrace', {"refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = __result__;
    
      return __return__;
    }
  }
  
  
  Future<void> destroy() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.amap.api.trace.LBSTraceClient@$refId::destroy([])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.trace.LBSTraceClient::destroy', {"refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = __result__;
    
      return __return__;
    }
  }
  
  //endregion
}

extension com_amap_api_trace_LBSTraceClient_Batch on List<com_amap_api_trace_LBSTraceClient> {
  //region getters
  
  //endregion

  //region setters
  
  //endregion

  //region methods
  
  static Future<List<com_amap_api_trace_LBSTraceClient>> getInstance_batch(List<android_content_Context> var0) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
  
    // invoke native method
    final resultBatch = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.trace.LBSTraceClient::getInstance_batch', [for (int __i__ = 0; __i__ < var0.length; __i__++) {"var0": var0[__i__].refId}]);
  
  
    // convert native result to dart side object
    if (resultBatch == null) {
      return null;
    } else {
      final typedResult = (resultBatch as List).cast<int>().map((__result__) => com_amap_api_trace_LBSTraceClient()..refId = __result__..tag__ = 'amap_map_fluttify').toList();
      kNativeObjectPool.addAll(typedResult);
      return typedResult;
    }
  }
  
  
  Future<List<void>> stopTrace_batch() async {
    if (false) {
      return Future.error('all args must have same length!');
    }
  
    // invoke native method
    final resultBatch = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.trace.LBSTraceClient::stopTrace_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"refId": this[__i__].refId}]);
  
  
    // convert native result to dart side object
    if (resultBatch == null) {
      return null;
    } else {
      final typedResult = (resultBatch as List).cast<String>().map((__result__) => __result__).toList();
    
      return typedResult;
    }
  }
  
  
  Future<List<void>> destroy_batch() async {
    if (false) {
      return Future.error('all args must have same length!');
    }
  
    // invoke native method
    final resultBatch = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.amap.api.trace.LBSTraceClient::destroy_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"refId": this[__i__].refId}]);
  
  
    // convert native result to dart side object
    if (resultBatch == null) {
      return null;
    } else {
      final typedResult = (resultBatch as List).cast<String>().map((__result__) => __result__).toList();
    
      return typedResult;
    }
  }
  
  //endregion
}