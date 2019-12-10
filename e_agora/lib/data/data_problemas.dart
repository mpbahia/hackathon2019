import 'package:cloud_firestore/cloud_firestore.dart';

class DataProblemas {
  String id;
  String titulo;
  String denuncia;
  String telefone;
  String ocorrencia;
  String acolhimento;
  String assistencia;
  String icone;

  DataProblemas();

  DataProblemas.fromDocument(DocumentSnapshot document) {
    id = document.documentID;
    titulo = document.data['titulo'];
    telefone = document.data['telefone'];
    ocorrencia = document.data['ocorrencia'];
    icone = document.data['icone'];
    denuncia = document.data['denuncia'];
    if (document.data['acolhimento'] != null) {
      acolhimento = document.data['acolhimento'];
    }
    
    if (document.data['assistencia'] != null) {
      assistencia = document.data['assistencia'];
    }
  }
}
