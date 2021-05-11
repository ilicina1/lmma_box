import 'package:lmma_box/services/validate_password.dart';

bool ValidatePasswordModel(value, _scaffoldKey) {
  return ValidateService().validatePassword(value, _scaffoldKey);
}

bool ConfirmPassword(value1, value2, _scaffoldKey) {
  return ValidateService().confirmPassword(value1, value2, _scaffoldKey);
}
