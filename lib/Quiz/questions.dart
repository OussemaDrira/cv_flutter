import 'Question.dart';

const List<Question> questions = [
  Question(
      correctAnswerIndex: 1,
      question: "Qu'est-ce que Flutter ?",
      options: [
        "a) Un langage de programmation",
        "b) Un framework de developpement d'applications mobiles",
        "c) Un système d'exploitation mobile",
        "d) Une base de données"
      ]
  )
  ,
  Question(
      correctAnswerIndex: 2,
      question: "Dans Flutter, quel widget est utilisé pour créer une application avec une mise en page statique ?",
      options: [
        "a) StatefulWidget",
        "b) ListView",
        "c) StatelessWidget",
        "d) MaterialApp"
      ]
  ),
  Question(
      correctAnswerIndex: 0,
      question: "Quel widget est utilisé pour créer une liste déroulante dans Flutter ?",
      options: [
        "a) DropdownButton",
        "b) ListView",
        "c) Column",
        "d) ListTile"
      ]
  ),
  Question(
      correctAnswerIndex: 0,
      question: "Comment mettre à jour l'interface utilisateur dans Flutter lorsque les données changent dans un StatefulWidget ?",
      options: [
        "a) En reconstruisant manuellement l'interface utilisateur à l'aide de setState()",
        "b) En redémarrant l'application",
        "c) En rechargeant la page",
        "d) En utilisant le widget MaterialApp"
      ]
  ),
  Question(
      correctAnswerIndex: 0,
      question: "Quelle méthode est appelée lorsqu'un widget StatefulWidget est initialisé pour la première fois dans Flutter ?",
      options: [
        "a) initState()",
        "b) build()",
        "c) dispose()",
        "d) setState()"
      ]
  )



];