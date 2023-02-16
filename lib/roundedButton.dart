import 'package:flutter/material.dart';
Container roundedButton(String name , IconData x,)
{
  return  
  Container(

          child :
              Expanded(child: 
              TextButton.icon(
                onPressed: () {},
                style: ButtonStyle(
                  padding: MaterialStateProperty.all<EdgeInsets>( const EdgeInsets.all(40)),
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    side: const BorderSide(color: Colors.white)
                  )) 
              ),
                icon: Icon(x) ,
                label: Text(name,
                style: const TextStyle( height: 1, fontWeight: (FontWeight.normal), fontSize: 15 ),
        ),),
              )
        
       
      )
    ;
}