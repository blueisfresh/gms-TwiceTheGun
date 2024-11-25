// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayButton_Click() {
    room_goto(rm_gameplay);
}

function ExitButton_Click() {
    game_end();
}

function PlayButton_Click_Exit() {
    room_goto(rm_gameplay);
}