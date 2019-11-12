import 'package:cloud_firestore/cloud_firestore.dart';

class AlertButtons {
  String id;
  String titulo;
  String email;
  String contato;

  String icone;

  String localizacao;

  AlertButtons();

  AlertButtons.fromDocument(DocumentSnapshot document) {
    id = document.documentID;
    titulo = document.data['titulo'];
    email = document.data['email'];
    contato = document.data['contato'];
    icone = document.data['icone'];    
    icone = document.data['localizacao'];
  }

  // Map<String, dynamic> toMap() {
  //   return {
  //     "categoria": category,
  //     "produto_id": pid,
  //     "quantidade": quantity,
  //     "tipo": tipo,
  //     //"produto": productData.toResumedMap()
  //   };
  // }
}