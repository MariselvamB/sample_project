import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart';
import 'package:simpleapp/Screens/FoodRecipe.dart';
import 'package:simpleapp/model/FoodRecipes.dart';
import 'package:simpleapp/model/ImageUpload.dart';
import 'package:simpleapp/model/age.dart';
import 'package:simpleapp/model/cat.dart';
import 'package:simpleapp/model/mari/Google.dart';
import 'package:simpleapp/model/puplic/entry.dart';
import 'package:simpleapp/model/puplic/puplic.dart';
import 'package:simpleapp/model/sign_in/sign_in.api.json.dart';
import 'package:simpleapp/model/sign_in_api.dart';
import 'package:simpleapp/model/user.dart';

import 'package:http/http.dart' as http;

import 'package:simpleapp/Screens/ProductListPage.dart';

class NetworkService {
  static Future<User> fetchData() async {
    final Response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/posts/10'));
    if (Response.statusCode == 200) {
      return User.fromJson(json.decode(Response.body));
    } else {
      throw Exception("Failed to Load Form Data");
    }
  }

  static Future<Cat> catData() async {
    var Url = Uri.parse("https://catfact.ninja/fact");
    final Response = await http.get(Url);
    if (Response.statusCode == 200) {
      return Cat.fromJson(json.decode(Response.body));
    } else {
      throw Exception("Failed to Load Form Data");
    }
  }

  static Future<Age> ageData(String enteredName) async {
    final response =
        await http.get(Uri.parse("https://api.agify.io/?name=$enteredName"));
    if (response.statusCode == 200) {
      return Age.fromJson(json.decode(response.body));
    } else {
      throw Exception("Failed to Load Form Data");
    }
  }

  static Future<Puplic> getPuplic() async {
    var Url = Uri.parse("https://api.publicapis.org/entries");
    final Response = await http.get(Url);

    if (Response.statusCode == 200) {
      Puplic publicResponse = Puplic.fromJson(jsonDecode(Response.body));

      return publicResponse;
    } else {
      throw Exception("Failed to Load Form Data");
    }
  }

  static Future<Food> foodData() async {
    var Url = Uri.parse("https://yummly2.p.rapidapi.com/feeds/list");
    final response = await http.get(Url);
    if (response.statusCode == 200) {
      Food Foodresponce = Food.fromJson(jsonDecode(response.body));
      return Foodresponce;
    } else {
      throw Exception("Failed to Load Form Data");
    }
  }

  static Future<ImageUpload> postImage(String base64String,
      {String? album,
      String? base64type,
      String? name,
      String? title,
      String? description}) async {
    var Url = Uri.parse("https://api.imgur.com/3/upload");
    final response = await http.post(Url, body: {
      "image": base64String,
      // "album": album,
      'type': "base64",
      // 'name': name,
      // 'title': title,
      // 'description': description,
    });
    if (response.statusCode == 200) {
      ImageUpload imageUploadresponse =
          ImageUpload.fromJson(jsonDecode(response.body));
      return imageUploadresponse;
    } else {
      throw Exception("Failed to Load Form Data");
    }
  }

  static Future<SignIn> signInpost(String UserName, String Password) async {
    var Url = Uri.parse("http://52.76.62.147:9000/api/panel/facility/login");
    final response = await http.post(Url, body: {
      "username": "$UserName",
      "password": "$Password",
      // "username": "hostdesking",
      // "password": "1234",
    });
    if (response.statusCode == 200) {
      print('******************************');
      print('success');
      print('******************************');
      SignIn signInresponse = SignIn.fromJson(jsonDecode(response.body));
      return signInresponse;
    } else {
      print(response);
      throw Exception("Failed to Load Form Data");
    }
  }
}





// class GoogleTranslate {
//   static Future<Google> postGoogle(String knowLanguage) async {
//     var Url = Uri.parse(
//         "https://google-translate1.p.rapidapi.com/language/translate/v2");
//     var response = (await http.post(Url, headers: {
//       "content-type": "application/x-www-form-urlencoded",
//       "Accept-Encoding": "application/gzip",
//       "X-RapidAPI-Key": "cbddfbfe5fmsh3881c994243ee9bp15427fjsn8193222fe0e8",
//       "X-RapidAPI-Host": "google-translate1.p.rapidapi.com",
//       "useQueryString": "true"
//     }, body: {
//       "q": "Hello, world!",
//       "target": "es",
//       "source": "en"
//     }));
//     if (response.statusCode == 200) {
//       Google googleresponse = Google.fromJson(jsonDecode(response.body));
//       return googleresponse;
//     } else {
//       throw Exception("Failed to Load Form Data");
//     }
//   }
// }

 
