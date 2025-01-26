
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:my_portfolio/desktop/desktop_body.dart';


class ResponsiveLayout extends StatelessWidget {
  

  final Widget mobileBody; 
  final Widget desktopBody; 

  const ResponsiveLayout({
    super.key,  
    required this.mobileBody, 
    required this.desktopBody
  }); 

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints){ 

        if(constraints.maxWidth < 600){ 
          return mobileBody; 
        }else{ 
          return const DesktopBody(); 
        }
      }
    );
  }
}