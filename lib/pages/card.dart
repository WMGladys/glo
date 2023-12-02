import 'package:flutter/material.dart';
import 'package:glo/pages/paymentPage.dart';

class CardPage extends StatefulWidget {
  const CardPage({super.key});

  @override
  State<CardPage> createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  final _formKey = GlobalKey<FormState>();
  final amountController = TextEditingController();
  final referenceController = TextEditingController();
  final emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Payment With Paystack'),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: amountController,
                validator: (value) {
                  if (value!.isEmpty || value == null) {
                    return 'Required field missing';
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  labelText: 'Amount',
                  hintText: 'Enter the amount',
                  border: OutlineInputBorder(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: TextFormField(
                  controller: referenceController,
                  validator: (value) {
                    if (value!.isEmpty || value == null) {
                      return 'Required field missing';
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    labelText: 'Reference',
                    hintText: 'Enter the reference',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: TextFormField(
                  controller: emailController,
                  validator: (value) {
                    if (value!.isEmpty || value == null) {
                      return 'Required field missing';
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    labelText: 'Email',
                    hintText: 'Enter your email',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: SizedBox(
                  width: double.infinity,
                  height: 45,
                  child: ElevatedButton(
                    onPressed: () {
                      if (!_formKey.currentState!.validate()) {
                        return;
                      }
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PaymentPage(
                            amount:amountController.text,
                            email:emailController.text,
                            reference:referenceController.text,
                          ),
                        ),
                      );
                    },
                    child: const Text(
                      'Proceed to make payment',
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}