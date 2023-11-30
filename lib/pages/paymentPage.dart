import 'dart:collection';
import 'package:flutter/material.dart';
import 'package:mpesa_flutter_plugin/mpesa_flutter_plugin.dart';
import 'package:mpesa_flutter_plugin/initializer.dart';
import 'package:mpesa_flutter_plugin/payment_enums.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {

  //create a future function to initiate payment
  Future<dynamic> startTransaction({required double amount, required String phone }) async{
    dynamic transactionInitialisation;
    //Wrap it with a try-catch
    try {
      //Run it
      transactionInitialisation =
          await MpesaFlutterPlugin.initializeMpesaSTKPush(
          businessShortCode: '174379',//use your store number if the transaction type is CustomerBuyGoodsOnline
          transactionType: TransactionType.CustomerPayBillOnline, //or CustomerBuyGoodsOnline for till numbers
          amount: amount,
          partyA: phone,
          partyB: '174379',
          callBackURL: Uri(),
          accountReference: 'payment',
          phoneNumber: phone,
          baseUri: Uri(scheme: "https", host: "sandbox.safaricom.co.ke"),
          transactionDesc: 'demo',
          passKey: 'bfb279f9aa9bdbcf158e97dd71a467cd2e0c893059b10f78e6b72ada1ed2c919');


    //handling the response
    HashMap result = transactionInitialisation as HashMap<String, dynamic>;

    print('RESULTS' + result.toString());

    } catch (e) {
      //you can implement your exception handling here.
      //Network un-reachability is a sure exception.

      /*
      Other 'throws':
      1. Amount being less than 1.0
      2. Consumer Secret/Key not set
      3. Phone number is less than 9 characters
      4. Phone number not in international format(should start with 254 for KE)
       */

      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text('You\'re in the payment page'),
          ElevatedButton(
            onPressed: (){
              startTransaction(amount: 10.0, phone: '254721321773');
            }, child: Text('Start Transaction'),
          ),
        ],
      ),
    );
  }
}

//< > ()  : {} _ $ + & ? %
