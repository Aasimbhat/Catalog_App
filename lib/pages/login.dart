
import 'package:flutter/material.dart';
import 'package:flutter_30days/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  
  State<LoginPage> createState() => _LoginPageState();
}
 String name="";
 bool changeButton=false;
 final _formKey= GlobalKey<FormState>();
 moveToHome(BuildContext context) async{
  if(_formKey.currentState!.validate()){
            setState(()  {
                    changeButton=true;
                  }); 
                  await Future.delayed(Duration(seconds: 1));
               await Navigator.pushNamed(context, MyRoutes.homeRoute);
               setState(()  {
                    changeButton=false;
                  }); 
  }
 }

void setState(Null Function() param0) {
}
class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
     child: SingleChildScrollView(
       child: Form(
        key:_formKey ,
         child: Column(
          children: [
            Image.asset("assets/images/hey.png",
            fit: BoxFit.cover,),
            SizedBox(
              height: 28,
            ),
            Text("Welcome $name",
            style:TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold
            ),),
              SizedBox(
              height: 20,
            ),
           Padding(
             padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 32.0),
             child: Column(
              children: [
                  TextFormField(
                decoration: InputDecoration(
                  hintText: "Enter Username",
                  labelText: "Usrname"
                ),
                validator: (value){
                  if(value!.isEmpty){
                    return"Username Can't Be Empty";
                  }
                  return null;
                },
                onChanged: (value){
                  name=value;
                  setState(() {
                    
                  });
                },
                
              ),
                TextFormField(
                  obscureText: true,
                decoration: InputDecoration(
                  
                  hintText: "Enter Password",
                  labelText: "Password"
                ),
                   validator: (value){
                  if(value!.isEmpty){
                    return"Password Can't Be Empty";
                  } else if(value.length<6){
                    return"Password length should be 6 characters";
                  }
                  return null;
                },
              ),
               SizedBox(
              height: 40,
            ),
            InkWell(
              onTap: () =>moveToHome(context),
              
              child: AnimatedContainer(
                duration: Duration(seconds: 1),
                height: 50,
                width: changeButton?50: 150,
                alignment: Alignment.center,
                child:changeButton?Icon(Icons.done,color: Colors.white,): Text("Login",
                style: TextStyle(fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                ),),
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(changeButton?50 :8)
                ),
              ),
            )
            // ElevatedButton( 
            //   child: Text("Login"),
            //   style: TextButton.styleFrom(
            //     minimumSize: (Size(140, 50))
            //   ),
              
            //   onPressed: (){
            //     Navigator.pushNamed(context, MyRoutes.homeRoute);
            
            //   },)
              ],
             ),
           )
          ],
         ),
       ),
     ),
    );
  }
}