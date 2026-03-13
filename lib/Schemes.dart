// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Schemes extends StatefulWidget {
  @override
  State<Schemes> createState() => _SchemesState();
}

class _SchemesState extends State<Schemes> {

  Future<void> launchURL(String URL) async {
      final Uri url = Uri.parse(URL);
      if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
        throw 'Could not launch $url';
      }
    }


  void _showBottomSheet(
      BuildContext context,
      String schemeName,
      String description,
      String dateOfApplication,
      List<String> documents,
      List<String> states,
      int flag) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return FractionallySizedBox(
          heightFactor: 0.8, // 80% of the screen height
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.all(30.0), // Padding of 30 from all sides
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                      child: Icon(
                    Icons.groups_2,
                    color: Colors.lightGreen,
                    size: 60,
                  )),
                  Text(
                    schemeName,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ).tr(),
                  SizedBox(height: 10),
                  Text(
                    'Description',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ).tr(),
                  Text(
                    description,
                    style: TextStyle(fontSize: 16),
                    textAlign: TextAlign.justify,
                  ).tr(),
                  SizedBox(height: 10),
                  Text(
                    'date_of_application',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ).tr(),
                  Text(
                    dateOfApplication,
                    style: TextStyle(fontSize: 16),
                  ).tr(),
                  SizedBox(height: 10),
                  Text(
                    'Applicable_State',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ).tr(),
                  for (var state in states)
                    Text(
                      '$state',
                      style: TextStyle(fontSize: 16),
                    ).tr(),
                  SizedBox(height: 10),
                  Text(
                    'Req_docs',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ).tr(),
                  for (var doc in documents)
                    Text(
                      '$doc',
                      style: TextStyle(fontSize: 16),
                    ).tr(),
                  SizedBox(height: 10),
                  Center(
                    child: SizedBox(
                      height: 50,
                      width: 150,
                      child: ElevatedButton(
                        onPressed: () {
                            if (flag == 1)
                           {
                            launchURL('https://mahadbt.maharashtra.gov.in/Farmer/SchemeData/SchemeData?str=E9DDFA703C38E51A64CDF3CE7D352F8F');
                           }else if(flag == 2)
                           {
                            launchURL('https://mahadbt.maharashtra.gov.in/Farmer/SchemeData/SchemeData?str=E9DDFA703C38E51A147B39AD4D6A9082');
                           }else if(flag == 3)
                           {
                            launchURL('https://nmeo.dac.gov.in/');
                           }else if(flag == 4)
                           {
                            launchURL('https://mahadbt.maharashtra.gov.in/Farmer/SchemeData/SchemeData?str=E9DDFA703C38E51AF823840F3424F82E');
                           }else if(flag == 5)
                           {
                            launchURL('https://ensure.nabard.org/#/login');
                           }else if(flag == 6)
                           {
                            launchURL('https://movcd.dac.gov.in/home');
                           }else if(flag == 7)
                           {
                            launchURL('https://mhfr.agristack.gov.in/farmer-registry-mh/#/');
                           }else if(flag == 8)
                           {
                            launchURL('https://soilhealth.dac.gov.in/home');
                           }else if(flag == 9)
                           {
                            launchURL('https://mahadbt.maharashtra.gov.in/Farmer/SchemeData/SchemeData?str=E9DDFA703C38E51A1DD809A4CDCCB84A');
                           }else if(flag == 10)
                           {
                            launchURL('https://mahadbt.maharashtra.gov.in/Farmer/SchemeData/SchemeData?str=E9DDFA703C38E51AC7B56240D6D84F28');
                           }else if(flag == 11)
                           {
                            launchURL('https://mahadbt.maharashtra.gov.in/Farmer/SchemeData/SchemeData?str=E9DDFA703C38E51AC7B56240D6D84F28');
                           }else if(flag == 12)
                           {
                            launchURL('https://pgsindia-ncof.gov.in/PGSI/individualFarmer/registration');
                           }else if(flag == 13)
                           {
                            launchURL('https://agrimachinery.nic.in/Farmer/Management/Index');
                           }else if(flag == 14)
                           {
                            launchURL('https://pmkisan.gov.in/');
                           }else if(flag == 15)
                           {
                            launchURL('https://maandhan.in/');
                           }else if(flag == 16)
                           {
                            launchURL('https://pmfby.gov.in/');
                           }else if(flag == 17)
                           {
                            launchURL('https://sbi.bank.in/web/agri-rural/agriculture-banking/crop-loan/kisan-credit-card');
                           }else if(flag == 18)
                           {
                            launchURL('https://agriinfra.dac.gov.in/');
                           }else if(flag == 19)
                           {
                            launchURL('https://namodronedidi.php-staging.com/');
                           }
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        child: Text(
                          'Apply_now',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ).tr(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0),
                    elevation: 5,
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xfffC1FCD3), Color(0xfff0CCDA3)],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      
                    ),
                    borderRadius: BorderRadius.all(
                        Radius.circular(16)), // Match Card radius
                  ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'NFSM_title',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ).tr(),
                    SizedBox(height: 5),
                    Text(
                      'date_of_application_main',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ).tr(),
                    SizedBox(height: 10),
                    Center(
                      child: 
                    ElevatedButton(
                      onPressed: () => _showBottomSheet(
                        context,
                        'NFSM_title',
                        'NFSM_desc',
                        'ongoing',
                        [
                          'land_ownwership',
                          'identity_proof',
                          'address_proof'
                        ],
                        ['applicable_states'],
                        1
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue, // Background color
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                          // Rounded corners
                        ),
                      ),
                      child:Padding(
                            padding: EdgeInsets.only(left: 22, right: 22),
                          child: Text(
                            'More',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                            
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ).tr()),
                    )),
                  ],
                ),
              ),
            )),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0),
                    elevation: 5,
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xfffC1FCD3), Color(0xfff0CCDA3)],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      
                    ),
                    borderRadius: BorderRadius.all(
                        Radius.circular(16)), // Match Card radius
                  ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'SMSP_title',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ).tr(),
                    SizedBox(height: 5),
                    Text(
                      'date_of_application_main',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ).tr(),
                    SizedBox(height: 10),
                    Center(
                      child: 

                    ElevatedButton(
                      onPressed: () => _showBottomSheet(
                        context,
                        'SMSP_title',
                        'SMSP_desc',
                        'ongoing',
                        [
                          'aadhaar',
                              'Bank_Account_Details',
                              'farmers_pension_scheme_form',
                              'land_ownwership',
                              'age_proof'
                        ],
                        ['applicable_states'],
                        2
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue, // Background color
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                          // Rounded corners
                        ),
                      ),
                      child: Padding(
                            padding: EdgeInsets.only(left: 22, right: 22),
                          child: Text(
                            'More',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                            
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ).tr()),
                    )),
                  ],
                ),
              ),
             ) ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0),
                    elevation: 5,
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xfffC1FCD3), Color(0xfff0CCDA3)],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      
                    ),
                    borderRadius: BorderRadius.all(
                        Radius.circular(16)), // Match Card radius
                  ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'NMEO_title',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ).tr(),
                    SizedBox(height: 5),
                    Text(
                      'date_of_application_main',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ).tr(),
                    SizedBox(height: 10),
                    Center(
                      child: 
                    ElevatedButton(
                      onPressed: () => _showBottomSheet(
                        context,
                        'NMEO_title',
                        'NMEO_desc',
                        'ongoing',
                        [
                          'aadhaar',
                              'Bank_Account_Details',
                              'farmers_pension_scheme_form',
                              'land_ownwership',
                              'age_proof'
                        ],
                        ['applicable_states'],
                        3
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue, // Background color
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                          // Rounded corners
                        ),
                      ),
                      child: Padding(
                            padding: EdgeInsets.only(left: 22, right: 22),
                          child: Text(
                            'More',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                            
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ).tr()),
                    )),
                  ],
                ),
              ),
             ) ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0),
                    elevation: 5,
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xfffC1FCD3), Color(0xfff0CCDA3)],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      
                    ),
                    borderRadius: BorderRadius.all(
                        Radius.circular(16)), // Match Card radius
                  ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'MIDH_title',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ).tr(),
                    SizedBox(height: 5),
                    Text(
                      'date_of_application_main',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ).tr(),
                    SizedBox(height: 10),
                    Center(
                      child: 
                    ElevatedButton(
                      onPressed: () => _showBottomSheet(
                        context,
                        'MIDH_title',
                        'MIDH_desc',
                        'ongoing',
                        [
                          'aadhaar',
                              'Bank_Account_Details',
                              'farmers_pension_scheme_form',
                              'land_ownwership',
                              'age_proof'
                        ],
                        ['applicable_states'],
                        4
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue, // Background color
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                          // Rounded corners
                        ),
                      ),
                      child: Padding(
                            padding: EdgeInsets.only(left: 22, right: 22),
                          child: Text(
                            'More',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                            
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ).tr()),
                    )),
                  ],
                ),
              ),
            )),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0),
                    elevation: 5,
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xfffC1FCD3), Color(0xfff0CCDA3)],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      
                    ),
                    borderRadius: BorderRadius.all(
                        Radius.circular(16)), // Match Card radius
                  ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'ISAM_title',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ).tr(),
                    SizedBox(height: 5),
                    Text(
                      'date_of_application_main',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ).tr(),
                    SizedBox(height: 10),
                    Center(
                      child: 
                    ElevatedButton(
                      onPressed: () => _showBottomSheet(
                        context,
                        'ISAM_title_bottomsheet',
                        'ISAM_desc',
                        'ongoing',
                        [
                          'aadhaar',
                              'Bank_Account_Details',
                              'farmers_pension_scheme_form',
                              'land_ownwership',
                              'age_proof'
                        ],
                        ['applicable_states'],
                        5
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue, // Background color
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                          // Rounded corners
                        ),
                      ),
                      child: Padding(
                            padding: EdgeInsets.only(left: 22, right: 22),
                          child: Text(
                            'More',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                            
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ).tr()),
                    )),
                  ],
                ),
              ),
             ) ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0),
                    elevation: 5,
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xfffC1FCD3), Color(0xfff0CCDA3)],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      
                    ),
                    borderRadius: BorderRadius.all(
                        Radius.circular(16)), // Match Card radius
                  ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'MOVCDNER_title',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ).tr(),
                    SizedBox(height: 5),
                    Text(
                      'date_of_application_main',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ).tr(),
                    SizedBox(height: 10),
                    Center(
                      child: 
                    ElevatedButton(
                      onPressed: () => _showBottomSheet(
                        context,
                        'MOVCDNER_title',
                        'MOVCDNER_desc',
                        'ongoing',
                        [
                          'aadhaar',
                              'insurance_certificate',
                              'project_use_case_proposal',
                              'Bank_Account_Details'
                        ],
                        ['applicable_states'],
                        6
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue, // Background color
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                          // Rounded corners
                        ),
                      ),
                      child: Padding(
                            padding: EdgeInsets.only(left: 22, right: 22),
                          child: Text(
                            'More',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                            
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ).tr()),
                ))],
                ),
              ),
            )),
            Card(
              
              margin: EdgeInsets.symmetric(vertical: 10.0),
                    elevation: 5,
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xfffC1FCD3), Color(0xfff0CCDA3)],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      
                    ),
                    borderRadius: BorderRadius.all(
                        Radius.circular(16)), // Match Card radius
                  ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'AgriStack_title',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ).tr(),
                    SizedBox(height: 5),
                    Text(
                      'date_of_application_main',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ).tr(),
                    SizedBox(height: 10),
                    Center(
                      child: 
                    ElevatedButton(
                      onPressed: () => _showBottomSheet(
                        context,
                        'AgriStack_title',
                        'AgriStack_desc',
                        'ongoing',
                        [
                          'aadhaar',
                              'insurance_certificate',
                              'project_use_case_proposal',
                              'Bank_Account_Details'
                        ],
                        ['applicable_states'],
                        7
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue, // Background color
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                          // Rounded corners
                        ),
                      ),
                      child: Padding(
                            padding: EdgeInsets.only(left: 22, right: 22),
                          child: Text(
                            'More',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                            
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ).tr()),
                    )),
                  ],
                ),
              ),
            )),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0),
                    elevation: 5,
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xfffC1FCD3), Color(0xfff0CCDA3)],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      
                    ),
                    borderRadius: BorderRadius.all(
                        Radius.circular(16)), // Match Card radius
                  ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'soil_health_card',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ).tr(),
                    SizedBox(height: 5),
                    Text(
                      'date_of_application_main',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ).tr(),
                    SizedBox(height: 10),
                    Center(
                      child: 
                    ElevatedButton(
                      onPressed: () => _showBottomSheet(
                        context,
                        'soil_health_card',
                        'soil_health_card_desc',
                        'ongoing',
                        [
                          'land_ownwership',
                          'identity_proof',
                          'address_proof'
                        ],
                        ['applicable_states'],
                        8
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue, // Background color
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                          // Rounded corners
                        ),
                      ),
                      child: Padding(
                            padding: EdgeInsets.only(left: 22, right: 22),
                          child: Text(
                            'More',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                            
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ).tr()),
                    )),
                  ],
                ),
              ),
            )),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0),
                    elevation: 5,
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xfffC1FCD3), Color(0xfff0CCDA3)],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      
                    ),
                    borderRadius: BorderRadius.all(
                        Radius.circular(16)), // Match Card radius
                  ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'rainfed_area_dev',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ).tr(),
                    SizedBox(height: 5),
                    Text(
                      'date_of_application_main',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ).tr(),
                    SizedBox(height: 10),
                    Center(
                      child: 
                    ElevatedButton(
                      onPressed: () => _showBottomSheet(
                        context,
                         'rainfed_area_dev',
                        'rainfed_area_dev_desc',
                        'ongoing',
                        [
                          'aadhaar',
                              'Bank_Account_Details',
                              'farmers_pension_scheme_form',
                              'land_ownwership',
                              'age_proof'
                        ],
                        ['applicable_states'],
                        9
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue, // Background color
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                          // Rounded corners
                        ),
                      ),
                      child: Padding(
                            padding: EdgeInsets.only(left: 22, right: 22),
                          child: Text(
                            'More',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                            
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ).tr()),
                     ) ),
                  ],
                ),
              ),
            )),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0),
                    elevation: 5,
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xfffC1FCD3), Color(0xfff0CCDA3)],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      
                    ),
                    borderRadius: BorderRadius.all(
                        Radius.circular(16)), // Match Card radius
                  ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'per_drop_more_crop',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ).tr(),
                    SizedBox(height: 5),
                    Text(
                      'date_of_application_main',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ).tr(),
                    SizedBox(height: 10),
                    Center(
                      child: 
                    ElevatedButton(
                      onPressed: () => _showBottomSheet(
                        context,
                         'per_drop_more_crop',
                        'per_drop_more_crop_desc',
                        'ongoing',
                        [
                           'aadhaar',
                              'Bank_Account_Details',
                              'farmers_pension_scheme_form',
                              'land_ownwership',
                              'age_proof'
                        ],
                        ['applicable_states'],
                        10
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue, // Background color
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                          // Rounded corners
                        ),
                      ),
                      child:Padding(
                            padding: EdgeInsets.only(left: 22, right: 22),
                          child: Text(
                            'More',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                            
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ).tr()),
                     ) ),
                  ],
                ),
              ),
             ) ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0),
                    elevation: 5,
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xfffC1FCD3), Color(0xfff0CCDA3)],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      
                    ),
                    borderRadius: BorderRadius.all(
                        Radius.circular(16)), // Match Card radius
                  ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'micro_irrigation_fund',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ).tr(),
                    SizedBox(height: 5),
                    Text(
                      'date_of_application_main',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ).tr(),
                    SizedBox(height: 10),
                    Center(
                      child: 
                    ElevatedButton(
                      onPressed: () => _showBottomSheet(
                        context,
                         'micro_irrigation_fund',
                        'micro_irrigation_fund_desc',
                        'ongoing',
                        [
                           'aadhaar',
                              'Bank_Account_Details',
                              'farmers_pension_scheme_form',
                              'land_ownwership',
                              'age_proof'
                        ],
                        ['applicable_states'],
                        11
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue, // Background color
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                          // Rounded corners
                        ),
                      ),
                      child: Padding(
                            padding: EdgeInsets.only(left: 22, right: 22),
                          child: Text(
                            'More',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                            
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ).tr()),
                     ) ),
                  ],
                ),
              ),
            )),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0),
                    elevation: 5,
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xfffC1FCD3), Color(0xfff0CCDA3)],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      
                    ),
                    borderRadius: BorderRadius.all(
                        Radius.circular(16)), // Match Card radius
                  ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'paramparagat_krishi_vikas',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ).tr(),
                    SizedBox(height: 5),
                    Text(
                      'date_of_application_main',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ).tr(),
                    SizedBox(height: 10),
                    Center(
                      child: 
                    ElevatedButton(
                      onPressed: () => _showBottomSheet(
                        context,
                        'paramparagat_krishi_vikas',
                        'paramparagat_krishi_vikas_desc',
                        'ongoing',
                        [
                          'aadhaar',
                              'Bank_Account_Details',
                              'farmers_pension_scheme_form',
                              'land_ownwership',
                              'age_proof'
                        ],
                        ['applicable_states'],
                        12
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue, // Background color
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                          // Rounded corners
                        ),
                      ),
                      child: Padding(
                            padding: EdgeInsets.only(left: 22, right: 22),
                          child: Text(
                            'More',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                            
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ).tr()),
                    )),
                  ],
                ),
              ),
            )),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0),
                    elevation: 5,
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xfffC1FCD3), Color(0xfff0CCDA3)],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      
                    ),
                    borderRadius: BorderRadius.all(
                        Radius.circular(16)), // Match Card radius
                  ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'agri_mechanization',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ).tr(),
                    SizedBox(height: 5),
                    Text(
                      'date_of_application_main',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ).tr(),
                    SizedBox(height: 10),
                    Center(
                      child: 
                    ElevatedButton(
                      onPressed: () => _showBottomSheet(
                        context,
                        'agri_mechanization',
                        'agri_mechanization_desc',
                        'ongoing',
                        [
                          'aadhaar',
                              'drone_operator_license',
                              'drone_registration_certificate',
                              'flight_permissions',
                              'insurance_certificate',
                              'project_use_case_proposal',
                              'Bank_Account_Details'
                        ],
                        ['applicable_states'],
                        13
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue, // Background color
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                          // Rounded corners
                        ),
                      ),
                      child: Padding(
                            padding: EdgeInsets.only(left: 22, right: 22),
                          child: Text(
                            'More',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                            
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ).tr()),
                    )),
                  ],
                ),
              ),
             ) ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0),
                    elevation: 5,
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xfffC1FCD3), Color(0xfff0CCDA3)],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      
                    ),
                    borderRadius: BorderRadius.all(
                        Radius.circular(16)), // Match Card radius
                  ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'pm_kisan_title',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ).tr(),
                    SizedBox(height: 5),
                    Text(
                      'date_of_application_main',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ).tr(),
                    SizedBox(height: 10),
                    Center(
                      child: 
                    ElevatedButton(
                      onPressed: () => _showBottomSheet(
                        context,
                        'pm_kisan_title',
                            'pm_kisan_desc',
                            'ongoing',
                            [
                              'aadhaar',
                              'land_ownwership',
                              'Bank_Account_Details',
                              'Declaration'
                            ],
                            ['applicable_states'],
                        14
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue, // Background color
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(5),
                               // Rounded corners
                        ),
                      ),
                      child: Padding(
                            padding: EdgeInsets.only(left: 22, right: 22),
                          child: Text(
                            'More',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                            
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ).tr()),
                     ) ),
                  ],
                ),
              ),
            )),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0),
                    elevation: 5,
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xfffC1FCD3), Color(0xfff0CCDA3)],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      
                    ),
                    borderRadius: BorderRadius.all(
                        Radius.circular(16)), // Match Card radius
                  ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'pm_kmy_title',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ).tr(),
                    SizedBox(height: 5),
                    Text(
                      'date_of_application_main',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ).tr(),
                    SizedBox(height: 10),
                    Center(
                      child: 
                    ElevatedButton(
                      onPressed: () => _showBottomSheet(
                        context,
                        'pm_kmy_title',
                            'pm_kmy_desc',
                            'ongoing',
                            [
                              'aadhaar',
                              'Bank_Account_Details',
                              'farmers_pension_scheme_form',
                              'land_ownwership',
                              'age_proof'
                            ],
                            ['applicable_states'],
                        15
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue, // Background color
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(5),
                               // Rounded corners
                        ),
                      ),
                      child: Padding(
                            padding: EdgeInsets.only(left: 22, right: 22),
                          child: Text(
                            'More',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                            
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ).tr()),
                    )),
                  ],
                ),
              ),
            )),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0),
                    elevation: 5,
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xfffC1FCD3), Color(0xfff0CCDA3)],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      
                    ),
                    borderRadius: BorderRadius.all(
                        Radius.circular(16)), // Match Card radius
                  ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'pmfby_title',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ).tr(),
                    SizedBox(height: 5),
                    Text(
                      'date_of_application_main',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ).tr(),
                    SizedBox(height: 10),
                    Center(
                      child: 
                    ElevatedButton(
                      onPressed: () => _showBottomSheet(
                        context,
                      'pmfby_title',
                            'pmfby_desc',
                            'ongoing',
                            [
                              'aadhaar',
                              'Bank_Account_Details',
                              'farmers_pension_scheme_form',
                              'land_ownwership',
                              'age_proof'
                            ],
                            ['applicable_states'],
                        16
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue, // Background color
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(5),
                               // Rounded corners
                        ),
                      ),
                      child: Padding(
                            padding: EdgeInsets.only(left: 22, right: 22),
                          child: Text(
                            'More',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                            
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ).tr()),
                    )),
                  ],
                ),
              ),
             ) ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0),
                    elevation: 5,
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xfffC1FCD3), Color(0xfff0CCDA3)],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      
                    ),
                    borderRadius: BorderRadius.all(
                        Radius.circular(16)), // Match Card radius
                  ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'miss_title',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ).tr(),
                    SizedBox(height: 5),
                    Text(
                      'date_of_application_main',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ).tr(),
                    SizedBox(height: 10),
                    Center(
                      child: 
                    ElevatedButton(
                      onPressed: () => _showBottomSheet(
                        context,
                         'miss_title',
                            'miss_desc',
                            'ongoing',
                            [
                              'aadhaar',
                              'Bank_Account_Details',
                              'loan_documents',
                              'income_proof',
                              'business_project_details'
                            ],
                            ['applicable_states'],
                        17
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue, // Background color
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(5),
                               // Rounded corners
                        ),
                      ),
                      child: Padding(
                            padding: EdgeInsets.only(left: 22, right: 22),
                          child: Text(
                            'More',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                            
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ).tr()),
                    )),
                  ],
                ),
              ),
            )),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0),
                    elevation: 5,
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xfffC1FCD3), Color(0xfff0CCDA3)],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      
                    ),
                    borderRadius: BorderRadius.all(
                        Radius.circular(16)), // Match Card radius
                  ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'aif_title',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ).tr(),
                    SizedBox(height: 5),
                    Text(
                      'date_of_application_main',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ).tr(),
                    SizedBox(height: 10),
                    Center(
                      child: 
                    ElevatedButton(
                      onPressed: () => _showBottomSheet(
                        context,
                        'aif_title',
                        'aif_desc',
                        'ongoing',
                        [
                          'aadhaar',
                              'Bank_Account_Details',
                              'farmers_pension_scheme_form',
                              'land_ownwership',
                              'age_proof'
                        ],
                        ['applicable_states'],
                        18
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue, // Background color
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(5),
                               // Rounded corners
                        ),
                      ),
                      child: Padding(
                            padding: EdgeInsets.only(left: 22, right: 22),
                          child: Text(
                            'More',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                            
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ).tr()),
                    )),
                  ],
                ),
              ),
            )),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0),
                    elevation: 5,
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xfffC1FCD3), Color(0xfff0CCDA3)],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      
                    ),
                    borderRadius: BorderRadius.all(
                        Radius.circular(16)), // Match Card radius
                  ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'namo_drone_didi_title',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ).tr(),
                    SizedBox(height: 5),
                    Text(
                      'date_of_application_main',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ).tr(),
                    SizedBox(height: 10),
                    Center(
                      child: 
                    ElevatedButton(
                      onPressed: () => _showBottomSheet(
                        context,
                        'namo_drone_didi_title',
                        'namo_drone_didi_desc',
                        'ongoing',
                        [
                          'aadhaar',
                          'drone_operator_license',
                          'drone_registration_certificate',
                          'flight_permissions',
                          'insurance_certificate',
                          'project_use_case_proposal',
                          'Bank_Account_Details'
                        ],
                        ['applicable_states'],
                        19
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue, // Background color
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(5),
                               // Rounded corners
                        ),
                      ),
                      child: Padding(
                            padding: EdgeInsets.only(left: 22, right: 22),
                          child: Text(
                            'More',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                            
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ).tr()),
                    )),
                  ],
                ),
              ),
            )),

          ],
        ),
      ),
    );
  }
}
