import 'package:hoshmand_code_challenge/data/model/models.dart';
import 'package:hoshmand_code_challenge/data/provider/api/api_service.dart';

class ApiRepository {
  final ApiService apiService;

  ApiRepository(this.apiService);

  Future<List<UnitModel>> getAllUnits() async {
    return apiService.getAllUnits();
  }
}
