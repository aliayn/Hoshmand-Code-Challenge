import 'package:hoshmand_code_challenge/data/model/unit_model/unit_model.dart';
import 'package:hoshmand_code_challenge/data/provider/api/api_client.dart';

class ApiService {
  final ApiClient apiClient;

  ApiService(this.apiClient);

  Future<List<UnitModel>> getAllUnits() => apiClient.getAllUnits();
}
