import 'package:arquitetura/app/models/apiadvisor_model.dart';

abstract class IapiAdvisor {
  Future<ApiadvisorModel> get();
}
