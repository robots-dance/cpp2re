unit QMMainUnit;

interface

uses SysUtils, TMainUnit, Windows;

procedure ClearQuestion(st_input: PQuestion);
procedure ClearArray(var a_parent: Tasks; b_mode: Boolean);

implementation


procedure ClearQuestion(st_input: PQuestion);
Var
  i: Integer;
begin

  for i:=1 to 7 do
    st_input.a_answerAm[i]:=0;
  
  for i:=1 to 512 do
    st_input.s_questText[i]:=#0;

  for i:=1 to 5 do
  begin
    with (st_input^) do
     begin
      a_answer1[i].i_x:=0;
      a_answer1[i].i_y:=0;
      a_answer1[i].f_x:=0;
      a_answer1[i].f_y:=0;
      a_answer1[i].b_XisInt:=False;
      a_answer1[i].b_YisInt:=False;
    end;
  end;

  for i:=1 to 5 do
  begin
    st_input.a_answer2[i].i_x:=0;
    st_input.a_answer2[i].i_y:=0;
    st_input.a_answer2[i].f_x:=0;
    st_input.a_answer2[i].f_y:=0;
    st_input.a_answer2[i].b_XisInt:=False;
    st_input.a_answer2[i].b_YisInt:=False;
  end;

  for i:=1 to 5 do
  begin
    st_input.a_answer3[i].i_x:=0;
    st_input.a_answer3[i].f_x:=0;
    st_input.a_answer3[i].b_XisInt:=False;
  end;

  for i:=1 to 5 do
  begin
    st_input.a_answer4[i].i_x:=0;
    st_input.a_answer4[i].f_x:=0;
    st_input.a_answer4[i].b_XisInt:=False;
  end;

  for i:=1 to 5 do
  begin
    st_input.a_answer5[i].i_x:=0;
    st_input.a_answer5[i].i_y:=0;
  end;

  for i:=1 to 5 do
  begin
    st_input.a_answer6[i].i_x:=0;
    st_input.a_answer6[i].f_x:=0;
    st_input.a_answer6[i].b_XisInt:=False;
  end;

  for i:=1 to 5 do
    st_input.a_answer7[i].s:='';

  st_input.uc_answerAm:=0;
  st_input.b_critical:=False;
  st_input.b_exists:=False;
  st_input.b_link:=False;
  st_input.f_per:=0;
end;

procedure ClearArray(var a_parent: Tasks; b_mode: Boolean);
Var
  i, j: Integer;
begin
  for i:=0 to length(a_parent)-1 do
  begin
    if b_mode then
      if a_parent[i]<>nil then
      begin
        for j:=0 to 31 do
          if a_parent[i].a_child[j]<>nil then
          begin
            Dispose(a_parent[i].a_child[j]);
            a_parent[i].a_child[j]:=nil;
          end;
        Dispose(a_parent[i]);
      end;
    a_parent[i]:=nil;
  end;
end;

function CtrlDown: Boolean;
var
  a_state: TKeyboardState;
begin
  GetKeyboardState(a_state);
  Result:= ((a_state[vk_Control] and 128) <> 0);
end;

end.
