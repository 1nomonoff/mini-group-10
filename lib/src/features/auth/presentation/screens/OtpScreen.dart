import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/otp_cubit.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key,required this.email});
  final String email;

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final _formKey = GlobalKey<FormState>();
  final otpController = TextEditingController();

  void submit() {
    if (_formKey.currentState!.validate()) {
      print("OTP: ${otpController.text}");
      // API confirm otp joyi
      context.read<OtpCubit>().confirmOtp(email: widget.email, code: otpController.text);
    }
  }

  @override
  Widget build(BuildContext context) {
     double w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(title: const Text("OTP Verification")),
      body: BlocListener<OtpCubit,OtpState>(
        listener: (context, state){
          if(state.status == OtpStatus.loading){
            
            showDialog(context: context, builder: (context)=> Center(child: CircularProgressIndicator(),));

          }else if(state.status == OtpStatus.loaded)
          {
            Navigator.pop(context);
            Navigator.pushNamedAndRemoveUntil(context, '/product',(_) =>false);
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(backgroundColor: Colors.green,content: Text("Welcome")));


          }else if (state.status==OtpStatus.error){
            Navigator.pop(context);
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(backgroundColor: Colors.red,content: Text(state.errorText)));


          }

        },
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Enter verification code",
                  style: TextStyle(fontSize: 18),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  controller: otpController,
                  keyboardType: TextInputType.number,
                  maxLength: 6,
                  textAlign: TextAlign.center,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "******",
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "OTP required";
                    }
                    if (value.length < 6) {
                      return "OTP must be 6 digits";
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: submit,
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(double.infinity, 50),
                  ),
                  child: const Text("Confirm"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}