/**
Challenge goals:
Using everything we learned, make a Dictionary class with the following methods:

- add: 단어를 추가함.
- get: 단어의 정의를 리턴함.
- delete: 단어를 삭제함.
- update: 단어를 업데이트 함.
- showAll: 사전 단어를 모두 보여줌.
- count: 사전 단어들의 총 갯수를 리턴함.
- upsert 단어를 업데이트 함. 존재하지 않을시. 이를 추가함. (update + insert = upsert)
- exists: 해당 단어가 사전에 존재하는지 여부를 알려줌.

- bulkAdd: 다음과 같은 방식으로. 여러개의 단어를 한번에 추가할 수 있게 해줌. [{"term":"김치", "definition":"대박이네~"}, {"term":"아파트", "definition":"비싸네~"}]
- bulkDelete: 다음과 같은 방식으로. 여러개의 단어를 한번에 삭제할 수 있게 해줌. ["김치", "아파트"]

Requirements:
Use class
Use typedefs
Use List
Use Map
*/
typedef DictionaryMap = List<Map<String, dynamic>>;

void main() {
  Dictionary dictionary = Dictionary();
  dictionary.add("김치", "김치는 맛있다.");
  print(dictionary.get("김치"));

  //dictionary.delete("김치");
  //dictionary.update("김치", "김치는 너무 맵다");
  //dictionary.update("백김치", "김치는 너무 맵다");
  print(dictionary.count());

  dictionary.bulkAdd([
    {"term": "백김치", "definition": "백김치는 쉬원함."},
    {"term": "떡갈비", "definition": "달달하니 맛있음."},
  ]);

  dictionary.bulkDelete(["백김치", "떡갈비"]);
  dictionary.showAll();
}

//typedef

class Dictionary {
  DictionaryMap dictionary = List.empty(growable: true); //typedef

  void add(String term, String definition) {
    dictionary.add({"term": term, "definition": definition});
  }

  String get(String term) {
    return dictionary.firstWhere(
      (element) => element["term"] == term,
      orElse: () => Map.of({}),
    )["definition"];
  }

  //delete
  void delete(String term) {
    dictionary.removeWhere((element) => element["term"] == term);
  }

  //update
  void update(String term, String definition) {
    Map<String, dynamic> findMap = dictionary.firstWhere(
      (element) => element["term"] == term,
      orElse: () => Map.of({}),
    );

    if (findMap.isEmpty) {
      print("not find term: $term");
    } else {
      findMap["definition"] = definition;
    }
  }

  //showAll
  void showAll() {
    dictionary.forEach((map) {
      print(map);
    });
  }

  //count
  int count() {
    return dictionary.length;
  }

  //upsert
  void upsert(String term, String definition) {
    Map<String, dynamic> findMap = dictionary.firstWhere(
      (element) => element["term"] == term,
      orElse: () => Map.of({}),
    );

    if (findMap.isEmpty) {
      dictionary.add({"term": term, "definition": definition});
    } else {
      findMap["definition"] = definition;
    }
  }

  //exists
  bool exists(String term) {
    Map<String, dynamic> findMap = dictionary.firstWhere(
      (element) => element["term"] == term,
      orElse: () => Map.of({}),
    );

    return !findMap.isEmpty;
  }

  void bulkAdd(List<Map<String, dynamic>> bulkList) {
    bulkList.forEach((addMap) {
      dictionary.add(addMap);
    });
  }

  void bulkDelete(List<String> termList) {
    termList.forEach((term) {
      dictionary.removeWhere(
        (map) => map["term"] == term,
      );
    });
  }
}
