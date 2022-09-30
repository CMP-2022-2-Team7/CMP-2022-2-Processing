LobbyUI lobbyUI;

void setup(){
  size(800, 450);

  lobbyUI = new LobbyUI();
}
void draw(){
  lobbyUI.drawLobby();
}
void mousePressed(){
  /* if mouse is on start button, can click it */
  if(lobbyUI.checkStart()){
    background(0);  // for checking(can be deleted)
  }
}
