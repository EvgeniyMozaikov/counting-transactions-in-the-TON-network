import '../../../mocks/mock_constants.dart';

void main() {
  test('Should complete completers when appropriate response arrives', () {
    _genericResponseTestFlow(Strings.TX_CREATE_COOKBOOK);
    _genericResponseTestFlow(Strings.TX_UPDATE_COOKBOOK);

        var sdkResponse = SDKIPCResponse(
        success: true,
        error: '',
        data: [MOCK_RECIPE.toProto3Json()],
        errorCode: '',
        action: Strings.GET_RECIPES);
    IPCHandlerFactory.getHandler(sdkResponse);
    expect(true, responseCompleters[Strings.GET_RECIPES]!.isCompleted);
  });



  void _genericResponseTestFlow(String key) {
  initResponseCompleter(key);
  expect(false, responseCompleters[key]!.isCompleted);
  var sdkResponse = SDKIPCResponse(
      success: true, error: '', data: '', errorCode: '', action: key);
  IPCHandlerFactory.getHandler(sdkResponse);
  expect(true, responseCompleters[key]!.isCompleted);
}
