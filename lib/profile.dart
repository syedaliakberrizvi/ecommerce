import 'package:final_project/checkout.dart';
import 'package:final_project/widgets/custom_header.dart';
import 'package:flutter/material.dart';
import 'package:final_project/widgets/textfield.dart';

class Profile extends StatefulWidget {
  final GlobalKey<NavigatorState> navigatorKey;
  final VoidCallback? onBackPressed;

  const Profile({required this.navigatorKey, this.onBackPressed});
  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  // Controllers
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final pinController = TextEditingController();
  final addressController = TextEditingController();
  final cityController = TextEditingController();
  final stateController = TextEditingController();
  final countryController = TextEditingController();
  final accountNumberController = TextEditingController();
  final accountHolderController = TextEditingController();
  final ifscController = TextEditingController();

  // Error messages map
  final Map<String, String?> errors = {};

  void validateAndNavigate() {
    setState(() {
      errors.clear(); // Clear previous errors

      if (emailController.text.isEmpty)
        errors["email"] = "Email Address is required";
      if (passwordController.text.isEmpty)
        errors["password"] = "Password is required";
      if (pinController.text.isEmpty) errors["pin"] = "Pin Code is required";
      if (addressController.text.isEmpty)
        errors["address"] = "Address is required";
      if (cityController.text.isEmpty) errors["city"] = "City is required";
      if (stateController.text.isEmpty) errors["state"] = "State is required";
      if (countryController.text.isEmpty)
        errors["country"] = "Country is required";
      if (accountNumberController.text.isEmpty)
        errors["account"] = "Account Number is required";
      if (accountHolderController.text.isEmpty)
        errors["holder"] = "Account Holder's Name is required";
      if (ifscController.text.isEmpty) errors["ifsc"] = "IFSC Code is required";

      if (errors.isEmpty) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Cheeckout()),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomHeader(showDrawerIcon: true),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(child: Image.asset("projectimages/profile.png")),
              SizedBox(height: 10),
              Text(
                "Personal Details",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              CustomTextField(
                label: "Email Address",
                placeholder: "Email Address",
                controller: emailController,
                errorText: errors["email"],
              ),
              SizedBox(height: 15),
              CustomTextField(
                label: "Password",
                placeholder: "Password",
                controller: passwordController,
                errorText: errors["password"],
              ),
              SizedBox(height: 40),
              Divider(),
              Text(
                "Business Address Details",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 15),
              CustomTextField(
                label: "Pin Code",
                placeholder: "Pin Code",
                controller: pinController,
                errorText: errors["pin"],
              ),
              SizedBox(height: 15),
              CustomTextField(
                label: "Address",
                placeholder: "Address",
                controller: addressController,
                errorText: errors["address"],
              ),
              SizedBox(height: 15),
              CustomTextField(
                label: "City",
                placeholder: "City",
                controller: cityController,
                errorText: errors["city"],
              ),
              SizedBox(height: 15),
              CustomTextField(
                label: "State",
                placeholder: "State",
                controller: stateController,
                errorText: errors["state"],
              ),
              SizedBox(height: 15),
              CustomTextField(
                label: "Country",
                placeholder: "Country",
                controller: countryController,
                errorText: errors["country"],
              ),
              SizedBox(height: 40),
              Divider(),
              Text(
                "Bank Account Details",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 15),
              CustomTextField(
                label: "Bank Account Number",
                placeholder: "Bank Account Number",
                controller: accountNumberController,
                errorText: errors["account"],
              ),
              SizedBox(height: 15),
              CustomTextField(
                label: "Account Holder’s Name",
                placeholder: "Account Holder’s Name",
                controller: accountHolderController,
                errorText: errors["holder"],
              ),
              SizedBox(height: 15),
              CustomTextField(
                label: "IFSC Code",
                placeholder: "IFSC Code",
                controller: ifscController,
                errorText: errors["ifsc"],
              ),
              SizedBox(height: 40),

              /// ✅ Save Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: validateAndNavigate,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pink,
                    padding: EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Text(
                    "Save",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
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
