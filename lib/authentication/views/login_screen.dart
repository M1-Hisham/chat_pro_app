import 'package:chat_app/providers/authentication_provider.dart';
import 'package:chat_app/utilities/assets_manager.dart';
import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:rounded_loading_button_plus/rounded_loading_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _phoneNumberController = TextEditingController();
  final RoundedLoadingButtonController _btnController =
      RoundedLoadingButtonController();
  Country selectedCountry = Country(
    phoneCode: '20',
    countryCode: 'EG',
    e164Sc: 0,
    geographic: true,
    level: 1,
    name: 'Egypt',
    example: 'Egypt',
    displayName: 'Egypt',
    displayNameNoCountryCode: 'EG',
    e164Key: '',
  );
  @override
  void dispose() {
    _phoneNumberController.dispose();
    _btnController.stop();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final authProvider = context.watch<AuthenticationProvider>();
    final isLoading = authProvider.isLoading;
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              const SizedBox(height: 20),
              SizedBox(
                height: 200,
                width: 200,
                child: Lottie.asset(AssetsManager.chatLogo),
              ),
              Text(
                'Flutter Chat App',
                style: GoogleFonts.dancingScript(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'Add your phone number will send you a code to verify',
                textAlign: TextAlign.center,
                style: GoogleFonts.openSans(
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: _phoneNumberController,
                autocorrect: false,
                maxLength: 10,
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  setState(() {
                    _phoneNumberController.text = value;
                  });
                },
                decoration: InputDecoration(
                  suffixIcon: _phoneNumberController.text.length == 10
                      ? authProvider.isLoading
                          ? Container(
                              height: 20,
                              width: 20,
                              margin: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(),
                                // color: Colors.green,
                              ),
                              child: const CircularProgressIndicator(),
                            )
                          : InkWell(
                              onTap: () {
                                // sgin in with phone number
                                authProvider.signInWithPhoneNumber(
                                    phoneNumber:
                                        "+${selectedCountry.phoneCode}${_phoneNumberController.text}",
                                    context: context);
                              },
                              child: Container(
                                height: 20,
                                width: 20,
                                margin: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(color: Colors.green),
                                  color: Colors.green,
                                ),
                                child: const Icon(
                                  Icons.done,
                                  size: 22,
                                  color: Colors.white,
                                ),
                              ),
                            )
                      : null,
                  prefixIcon: Container(
                    padding: const EdgeInsets.all(10),
                    child: InkWell(
                      onTap: () {
                        showCountryPicker(
                          context: context,
                          countryListTheme: const CountryListThemeData(
                            bottomSheetHeight: 550,
                          ),
                          onSelect: (value) {
                            setState(() {
                              selectedCountry = value;
                            });
                          },
                        );
                      },
                      child: Text(
                        '${selectedCountry.flagEmoji} + ${selectedCountry.phoneCode}',
                        style: const TextStyle(
                          fontSize: 18,
                          // color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  labelText: 'Phone Number',
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
