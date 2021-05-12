import 'package:lmma_box/services/validate_password.dart';

bool ValidatePasswordModel(value, _scaffoldKey, context) {
  return ValidateService().validatePassword(value, _scaffoldKey, context);
}

bool ConfirmPassword(value1, value2, _scaffoldKey) {
  return ValidateService().confirmPassword(value1, value2, _scaffoldKey);
}
