import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '/core/error/result_types/state_result/state_result.dart';
import '/core/extensions/context_extension.dart';
import '/core/helpers/regex/regex_helper.dart';
import '/core/themes/constants/color_constants.dart';
import '/core/widgets/button/buttons.dart';
import '../../../service/model/user_register_model.dart';
import '../../../model/user_data_model.dart';
import '../../../controller/auth_controller.dart';
import '../../../widget/auth_text_form_field.dart';

class SignUpForm extends ConsumerStatefulWidget {
  const SignUpForm({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SignUpFormState();
}

class _SignUpFormState extends ConsumerState<SignUpForm> {
  final _username = TextEditingController(text: 'armagangok');
  final _email = TextEditingController(text: 'armagan@armagan.com');
  // text: "1armagangok@gmail.com"
  final _password1 = TextEditingController(text: '1234567');
  final _password2 = TextEditingController(text: '1234567');
  // final isLoading = ref.watch(authProvider).registerState.isLoading();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          _usernameTextField(),
          _emailTextField(),
          _password1TextField(),
          const SizedBox(height: defaultPadding / 2),
          _password2TextField(),
          const SizedBox(height: defaultPadding),
          _registerButton(context),
          const SizedBox(height: defaultPadding),
          // _changePage(context),
        ],
      ),
    );
  }

  Widget _registerButton(BuildContext context) => CustomElevatedButton(
        isLoading: ref.watch(authController).registerState == const StateResult<UserDataModel?>.loading() ? true : false,
        // isLoading: false,
        text: "LocaleKeys.register_register.tr()",
        // child: const Text("singup"),
        // LocaleKeys.register_singUp.tr(),
        onPressed: () async {
          final isValidated = _validateInputs();

          if (isValidated) {
            final user = UserRegisterModel(
              uid: 'id',
              email: _email.text,
              username: _username.text,
              password: _password1.text,
            );
            await ref.read(authController).register(userModel: user);

            await ref.watch(authController).registerState.when(
                  initial: () {},
                  loading: () {},
                  completed: (data) async {
                    await context.cupertinoDialog(
                      widget: CupertinoAlertDialog(
                        title: Text(
                          // "merhaba kullanıcı",
                          'Hello, ${_username.text}',
                          textAlign: TextAlign.center,
                        ),
                        content: Padding(
                          padding: EdgeInsets.only(top: 20.h),
                          child: Column(
                            children: [
                              const Text(
                                "LocaleKeys.register_RegistrationSuccessful.tr()",
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(height: 20.h),
                              const Text(
                                "LocaleKeys.register_NYCEnjoy.tr()",
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                  failed: (failure) {
                    context.showSnackBar(
                      SnackBar(
                        content: Text(failure.message),
                      ),
                    );
                  },
                );
          }
        },
      );

  Widget _password2TextField() => AuthTextField(
        labelText: "LocaleKeys.login_loginPassword.tr()",
        controller: _password2,
        isObscure: true,
        validator: (val) {
          final hasSpecialCharacter = RegexHelper.shared.hasSpecialCharacter(email: val ?? '');
          if (val!.isEmpty) {
            return "LocaleKeys.register_registerPlsPassword.tr()";
          } else {
            if (val.length < 7) {
              return "LocaleKeys.register_plsentEnMoreSevenChr.tr()";
            } else {
              if (hasSpecialCharacter) {
                return null;
              } else {
                return "LocaleKeys.register_plsentEnMoreSevenChr.tr()";
              }
            }
          }
        },
      );

  Widget _password1TextField() => AuthTextField(
        labelText: "LocaleKeys.login_loginPassword.tr()",
        controller: _password1,
        isObscure: true,
        validator: (val) {
          final hasSpecialCharacter = RegexHelper.shared.hasSpecialCharacter(email: val ?? '');
          if (val!.isEmpty) {
            return "LocaleKeys.register_registerPlsPassword.tr()";
          } else {
            if (val.length < 7) {
              return "LocaleKeys.register_plsentEnMoreSevenChr.tr()";
            } else {
              if (hasSpecialCharacter) {
                return null;
              } else {
                return "LocaleKeys.register_plsentEnMoreSevenChr.tr()";
              }
            }
          }
        },
      );

  Widget _emailTextField() => AuthTextField(
        labelText: "LocaleKeys.register_Mail.tr()",
        controller: _email,
        validator: (val) {
          if (val!.isEmpty) {
            return "LocaleKeys.register_plsEnterEmail.tr()";
          } else {
            final isCorrectEmail = RegexHelper.shared.isCorrectEmail(email: val);
            if (isCorrectEmail) {
              return null;
            } else {
              return "LocaleKeys.register_correctEmail.tr()";
            }
          }
        },
      );

  Widget _usernameTextField() => AuthTextField(
        labelText: "LocaleKeys.register_userName.tr()",
        controller: _username,
        validator: (val) {
          if (val!.isEmpty) {
            return "LocaleKeys.register_plsEntrUserName.tr()";
          } else {
            final hasSpecialCharacter = RegexHelper.shared.hasSpecialCharacter(email: val);

            if (hasSpecialCharacter) {
              return null;
            } else {
              return "LocaleKeys.register_doNotSpCharacter.tr()";
            }
          }
        },
      );

  // AlreadyHaveAnAccountCheck _changePage(BuildContext context) {
  //   return AlreadyHaveAnAccountCheck(
  //     login: false,
  //     press: () {
  //       Navigator.push(
  //         context,
  //         MaterialPageRoute(
  //           builder: (context) {
  //             return const LoginScreen();
  //           },
  //         ),
  //       );
  //     },
  //   );
  // }

  bool _validateInputs() {
    if (_formKey.currentState!.validate()) {
//    If all data are correct then save data to out variables
      // _formKey.currentState!.save();
      return true;
    } else {
//    If all data are not valid then start auto validation.
      // setState(() {
      //   // _autoValidate = true;
      // });
      return false;
    }
  }
}
