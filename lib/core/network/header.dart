class FTxNetworkHeader {
  static Map<String, String> create(
      {FTxNetworkRequestType requestType = FTxNetworkRequestType.get,
      String? token = ""}) {
    Map<String, String> header = {"Accept": "application/json"};

    switch (requestType) {
      case FTxNetworkRequestType.get:
        break;

      case FTxNetworkRequestType.post:
      case FTxNetworkRequestType.delete:
        header["Content-type"] = "application/json";
        break;

      case FTxNetworkRequestType.getWithAuth:
      case FTxNetworkRequestType.postWithAuth:
      case FTxNetworkRequestType.deleteWithAuth:
        header["Content-type"] = "application/json";
        header["Authorization"] = "Bearer " + token!;
        break;
    }

    return header;
  }
}

enum FTxNetworkRequestType {
  get,
  post,
  delete,
  getWithAuth,
  postWithAuth,
  deleteWithAuth
}
