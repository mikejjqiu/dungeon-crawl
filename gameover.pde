int tran = 0;
void gameover() {
  if (/*frameCount%3==0 &&*/ tran <= 255)tran++;
  textSize(80);
  if (myPlayer.hp<=0) {
    tint(100, 0, 0); 
    fill(white);
    image(go, width/2, height/2, width, height);
    text("Y O U  F A I L E D", width/2, height/2);
  } else {
    noTint();
    tint(225-tran);
    image(win, width/2, height/2, width, height);

    fill(white, 255 - tran);
    text("T H E  E N D ?", width/2, height/2);

    fill(white, tran);
    textSize(50);
    text("THE END", width/2, height/2+50);
  }
  
  if (tran >= 255) {
    text("click anywhere to quit", width/2, 200);
    if (mouseReleased) exit();
  }
}
