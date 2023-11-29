
class Challenge {


  void clapGame() {
    List<String> players = List.generate(4, (index) => "player${index + 1}");
    int ahh = 0;
    int clap = 0;
    int rool = 0;
    List<int> clapCounts = [0, 0, 0, 0];
    int currentPlayerIndex = 1;

    for (int index = 1; index <= 100; index++) {
      currentPlayerIndex = (index - 1) % 4;
      if (index % 30 == 0) {
        ahh++;
        print("${players[currentPlayerIndex]} : ahh");
      } else if (index % 3 == 0) {
        clap++;
        clapCounts[currentPlayerIndex] = clapCounts[currentPlayerIndex] + 1; // or clapCounts[currentPlayer]++;
        print("${players[currentPlayerIndex]} : clap");
      } else if (index % 10 == 0) {
        rool++;
        print("${players[currentPlayerIndex]} : rool");
      } else {
        print("player$currentPlayerIndex : $index");
      }
      currentPlayerIndex++;
      if (currentPlayerIndex == 5) {
        currentPlayerIndex = 1;
      }
    }
    int bestClapIndex = clapCounts.indexWhere((player) =>
    player == clapCounts.reduce((current, next) => current > next ? current : next));
    print("all_clap : $clap");
    print("all_rool : $rool");
    print("all_ahh : $ahh");
    print("best_clap_player  : ${players[bestClapIndex]}");
  }
}
