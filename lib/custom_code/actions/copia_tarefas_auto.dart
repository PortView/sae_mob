// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<String> copiaTarefasAuto(
    List<String>? tarefasIds, DocumentReference servicoBaseRef) async {
  if (tarefasIds == null) {
    return "Lista de IDs de tarefas é nula.";
  }

  try {
    await copyTasks(tarefasIds, servicoBaseRef);
    return "Tarefas copiadas com sucesso!";
  } catch (e) {
    return "Ocorreu um erro ao copiar as tarefas: $e";
  }
}

Future<void> copyTasks(
    List<String> tarefasIds, DocumentReference servicoBaseRef) async {
  final firestoreInstance = FirebaseFirestore.instance;

  final batch = firestoreInstance.batch();

  final tarefasBaseSnapshot =
      await firestoreInstance.collection('tarefasBase').get();
  tarefasBaseSnapshot.docs.forEach((doc) {
    if (tarefasIds.contains(doc.id)) {
      final newDocRef =
          servicoBaseRef.collection('tarefasDoServico').doc(doc.id);
      batch.set(newDocRef, doc.data());
      batch.update(newDocRef, {'servicoBaseId': servicoBaseRef});
    }
  });

  await batch.commit();
}
