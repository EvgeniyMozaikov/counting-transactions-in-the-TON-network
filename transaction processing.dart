export 'src/generated/cosmos/tx/v1beta1/tx.pb.dart';
export 'src/generated/pylons/cookbook.pb.dart';
export 'src/generated/pylons/recipe.pb.dart';
export 'src/generated/pylons/item.pb.dart';
export 'src/generated/pylons/execution.pb.dart';
export 'src/generated/pylons/trade.pb.dart';

var sdkResponse = SDKIPCResponse(
        success: true,
        error: '',
        data: [MOCK_RECIPE.toProto3Json()],
        errorCode: '',
        action: MOCK_USERNAME);
    expect(() => IPCHandlerFactory.getHandler(sdkResponse),
        throwsA(isA<Exception>()));
  });
