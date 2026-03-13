// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class KrishonnatiYojana extends StatefulWidget {
  @override
  State<KrishonnatiYojana> createState() => _KrishonnatiYojanaState();
}

class _KrishonnatiYojanaState extends State<KrishonnatiYojana> {


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
      int flag
      ) {
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
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 5, 99, 8),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Centrally_Sponsored_Schemes_half_first',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ).tr(),
            Text(
              'Centrally_Sponsored_Schemes_kri_half_second',
              style: TextStyle(fontSize: 14, color: Colors.white),
            ).tr(),
          ],
        ),
      ),
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
          ],
        ),
      ),
    );
  }
}
