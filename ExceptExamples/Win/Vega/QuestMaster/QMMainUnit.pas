unit QMMainUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Menus, ExtCtrls, Math;

function MessageDlg(s_messText: String; uc_messType, uc_Buttons: Byte): Integer;

type
  TForm1 = class(TForm)
    ListBox2: TListBox;
    SaveDialog1: TSaveDialog;
    OpenDialog1: TOpenDialog;
    MainMenu1: TMainMenu;
    ListBox1: TListBox;
    MenuItem1: TMenuItem;
    MenuItem1_1: TMenuItem;
    MenuItem1_2: TMenuItem;
    MenuItem1_3: TMenuItem;
    MenuItem1_4: TMenuItem;
    MenuItem1_5: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem5_1: TMenuItem;
    MenuItem2_1: TMenuItem;
    MenuItem2_2: TMenuItem;
    MenuItem3_1: TMenuItem;
    MenuItem3_2: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem4_1: TMenuItem;
    MenuItem4_2: TMenuItem;
    MenuItem4_3: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure MenuItem1_5Click(Sender: TObject);
    procedure MenuItem2_1Click(Sender: TObject);
    procedure MenuItem2_2Click(Sender: TObject);
    procedure MenuItem3_1Click(Sender: TObject);
    procedure MenuItem3_2Click(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
    procedure ListBox1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure MenuItem1_3Click(Sender: TObject);
    procedure ListBox2KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MenuItem1_4Click(Sender: TObject);
    procedure MenuItem1_2Click(Sender: TObject);
    procedure MenuItem1_1Click(Sender: TObject);
    procedure ListBox2DblClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure MenuItem4_1Click(Sender: TObject);
    procedure ListBox1DblClick(Sender: TObject);
    procedure MenuItem4_2Click(Sender: TObject);
    procedure MenuItem5_1Click(Sender: TObject);
    procedure MenuItem4_3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  questType1 = packed record
    //[x, y]
    i_x, i_y: Integer;
    f_x, f_y: Real;
    b_XisInt, b_YisInt: Boolean;
  end;

  questType2 = packed record
    //(x, y)
    i_x, i_y: Integer;
    f_x, f_y: Real;
    b_XisInt, b_YisInt: Boolean;
  end;

  questType3 = packed record
    //(x, +)
    i_x: Integer;
    f_x: Real;
    b_XisInt: Boolean;
  end;

  questType4 = packed record
    //(-, x)
    i_x: Integer;
    f_x: Real;
    b_XisInt: Boolean;
  end;

  questType5 = packed record
    //<x, y>
    i_x, i_y: Integer;
    b_XisInt, b_YisInt: Boolean;
  end;

  questType6 = packed record
    //x
    i_x: Integer;
    f_x: Real;
    b_XisInt: Boolean;
  end;

  questType7 = record
    s: String[255];
  end;

  Question = packed record
    s_questText: array [1..512] of Char;
    {
    могут быть следующие типы:
    [x, y] - отрезок
    (x, y) - полуинтервал
    (x, +), (-, x) - лучи
    <x, y> - все целые числа на отрезке [x, y]
    x отдельное число
    строка

    Для каждого вопроса можно комбинировать типы ответов
    }
    uc_answerAm: Byte;
    a_answer1: array [1..5] of questType1;
    a_answer2: array [1..5] of questType2;
    a_answer3: array [1..5] of questType3;
    a_answer4: array [1..5] of questType4;
    a_answer5: array [1..5] of questType5;
    a_answer6: array [1..5] of questType6;
    a_answer7: array [1..5] of questType7;
    a_answerAm: array [1..7] of Byte;
    b_critical: Boolean; //т.е. если ответ будет ошибочный, то задача не решена (за нее не будут начислены баллы)
    b_exists: Boolean; //сохранен ли хотя бы раз этот вопрос
    b_link: Boolean; //тип связи между ответами: И или ИЛИ
    f_per: Real;
  end;

  PQuestion = ^Question;

  MemTask = packed record
    a_child: array [0..31] of PQuestion;
    f_per: Real;
    i_time: Integer;
    s_email: String[250];
    b_homework: Boolean;
  end;

  FileTask = packed record
    a_child: array [0..31] of Question;
    i_questAm: Integer;
    f_per: Real;
    i_time: Integer;
    s_email: String[250];
    b_homework: Boolean;
  end;

  Tasks = array [0..255] of ^MemTask;

var
  Form1: TForm1;
  a_parent: Tasks;
  v_curQuest: PQuestion;
  i_time: Integer;
  s_email: String[250];

implementation
uses QuestSettUnit;
{$R *.dfm}

function MessageDlg(s_messText: String; uc_messType, uc_Buttons: Byte): Integer;
begin
  Result:=MessageBox(Application.Handle, PChar(s_messText), '', uc_messType + uc_Buttons);
end;

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

procedure TForm1.FormCreate(Sender: TObject);
begin
  //ShowMessage(IntToStr(Sizeof(FileTask)));
  Form1.Constraints.MinHeight:=Form1.Height;
  Form1.Constraints.MinWidth:=Form1.Width;
  Form1.Constraints.MaxWidth:=Form1.Width;
  OpenDialog1.InitialDir:=ExtractFilePath(Application.ExeName);
  SaveDialog1.InitialDir:=OpenDialog1.InitialDir;
  ClearArray(a_parent, False);
  MenuItem1_3.Enabled:=False;
  i_time:=60;
end;

procedure TForm1.MenuItem1_5Click(Sender: TObject);
begin
  Self.Close;
end;

procedure TForm1.MenuItem2_1Click(Sender: TObject);
Var
  i: Integer;
begin
  ListBox1.AddItem('Задача '+IntToStr(ListBox1.Count+1), Sender);
  ListBox1.ItemIndex:=ListBox1.Count-1;
  New(a_parent[ListBox1.Count-1]);
  for i:=0 to 31 do
    a_parent[ListBox1.Count-1].a_child[i]:=nil;
  a_parent[ListBox1.Count-1].f_per:=0;
  ListBox2.Clear;
  MenuItem1_3.Enabled:=True;
end;

procedure TForm1.MenuItem2_2Click(Sender: TObject);
Var
  uc_choice: Byte;
  i, i_oldpos: Integer;
begin
  if (ListBox1.Count=0) or (ListBox1.ItemIndex<0) then
    Exit;
  uc_choice:=MessageDlg('Удалить эту задачу?', MB_ICONWARNING, MB_OKCANCEL);
  if uc_choice=1 then
  begin
    for i:=0 to 31 do
      if a_parent[ListBox1.ItemIndex].a_child[i]<>nil then
      begin
        Dispose(a_parent[ListBox1.ItemIndex].a_child[i]);
        a_parent[ListBox1.ItemIndex].a_child[i]:=nil;
      end;
    Dispose(a_parent[ListBox1.ItemIndex]);
    a_parent[ListBox1.ItemIndex]:=nil;
    i_oldpos:=ListBox1.ItemIndex;
    for i:=i_oldpos to ListBox1.Count-2 do
      a_parent[i]:=a_parent[i+1];
    a_parent[ListBox1.Count-1]:=nil;
    ListBox1.DeleteSelected;
    for i:=0 to ListBox1.Count-1 do
      ListBox1.Items[i]:='Задача '+IntToStr(i+1);
    if i_oldpos>=ListBox1.Count then
      ListBox1.ItemIndex:=ListBox1.Count-1
    else
      ListBox1.ItemIndex:=i_oldpos;
     if ListBox1.Count=0 then
       ListBox2.Clear; 
    MenuItem1_3.Enabled:=True;
  end;
end;

procedure TForm1.MenuItem3_1Click(Sender: TObject);
Var
  i, x, y: Integer;
  ptr: ^Integer;
begin
  if ListBox1.ItemIndex<0 then
  begin

    y:=365;
    while y > 0 do
    begin
      y:=y-1;
    end;
    try
      x:= x div y;
      i_time:= x;
    except
        MessageDlg('ИСКЛЮЧЕНИЕ DIVISION BY ZERO! EXCEPT BLOCK', MB_ICONERROR, MB_OK);
    end;

    y:=123456789;
    try
      i_time:= ptr^;
      i_time:= i_time + y;
    except
      MessageDlg('ИСКЛЮЧЕНИЕ ACCESS VIOLATION! EXCEPT BLOCK', MB_ICONERROR, MB_OK);
    end;

    y:=987654321;
    try
      i_time:= ptr^;
      i_time:= i_time + y;
    finally
      try
        i_time:= ptr^;
      except
        MessageDlg('ИСКЛЮЧЕНИЕ ACCESS VIOLATION! EXCEPT BLOCK', MB_ICONERROR, MB_OK);
      end;
      MessageDlg('ИСКЛЮЧЕНИЕ ACCESS VIOLATION! FINALLY BLOCK', MB_ICONWARNING, MB_OK);
    end;
    
    MessageDlg('Вы должны выделить какую-нибудь задачу!', MB_ICONWARNING, MB_OK);
    Exit;
  end;
  if ListBox2.Count=32 then
  begin
    MessageDlg('Вы не можете создавать более 32-х вопросов!', MB_ICONWARNING, MB_OK);
    Exit;
  end;
  ListBox2.AddItem('Вопрос '+IntToStr(ListBox2.Count+1), Sender);
  i:=ListBox2.Count;
  x:= 123456789;
  New(a_parent[ListBox1.ItemIndex].a_child[ListBox2.Count-1]);
  ClearQuestion(a_parent[ListBox1.ItemIndex].a_child[ListBox2.Count-1]);
  MenuItem1_3.Enabled:=True;
end;

procedure TForm1.MenuItem3_2Click(Sender: TObject);
Var
  uc_choice: Byte;
  i, i_oldpos: Integer;
begin
  if (ListBox2.Count=0) or (ListBox2.ItemIndex<0) then
    Exit;
  uc_choice:=MessageDlg('Удалить этот вопрос?', MB_ICONWARNING, MB_OKCANCEL);
  if uc_choice=1 then
  begin
    Dispose(a_parent[ListBox1.ItemIndex].a_child[ListBox2.ItemIndex]);
    a_parent[ListBox1.ItemIndex].a_child[ListBox2.ItemIndex]:=nil;
    i_oldpos:=ListBox2.ItemIndex;
    for i:=i_oldpos to ListBox2.Count-2 do
      a_parent[ListBox1.ItemIndex].a_child[i]:=a_parent[ListBox1.ItemIndex].a_child[i+1];
    a_parent[ListBox1.ItemIndex].a_child[ListBox2.Count-1]:=nil;
    ListBox2.DeleteSelected;
    for i:=0 to ListBox2.Count-1 do
      ListBox2.Items[i]:='Вопрос '+IntToStr(i+1);
    if i_oldpos>=ListBox2.Count then
      ListBox2.ItemIndex:=ListBox2.Count-1
    else
      ListBox2.ItemIndex:=i_oldpos;
    MenuItem1_3.Enabled:=True;
  end;
end;

procedure TForm1.ListBox1Click(Sender: TObject);
Var
  i: Integer;
begin
  ListBox2.Clear;
  i:=0;
  While a_parent[ListBox1.ItemIndex].a_child[i]<>nil do
  begin
    if (i mod 100 = 0) and (i>0) then
      Application.ProcessMessages;
    ListBox2.AddItem('Вопрос '+IntToStr(i+1), Sender);
    inc(i);
  end;
end;

procedure TForm1.ListBox1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  //83 - S, 86 - V, Del - 46
  if CtrlDown or (Key=46) then
    Case Key of
      46: MenuItem2_2.Click;
      83: MenuItem1_3.Click;
      86: MenuItem2_1.Click;
    end;
end;

procedure TForm1.MenuItem1_3Click(Sender: TObject);
Var
  i, i_len, j: Integer;
  uc_choice: Byte;
  fo_savefile: file of FileTask;
  st_tmp: FileTask;
  b_nextsave: Boolean;

begin
  b_nextsave:=False;
  if SaveDialog1.FileName='' then
  begin
    if not SaveDialog1.Execute then
    begin
      SaveDialog1.FileName:='';
      Exit;
    end;
  end
  else
  begin
    b_nextsave:=True;
  end;
  i_len:=length(ExtractFileName(SaveDialog1.FileName));
  if i_len<8 then
    SaveDialog1.FileName:=SaveDialog1.FileName+'.qmproj'
  else
  begin
    if Copy(ExtractFileName(SaveDialog1.FileName), i_len-6, i_len)<>'.qmproj' then
      SaveDialog1.FileName:=SaveDialog1.FileName+'.qmproj';
  end;
  if FileExists(SaveDialog1.FileName) and not b_nextsave then
  begin
    uc_choice:=MessageDlg('Файл существует. Перезаписать его?', MB_ICONWARNING, MB_OKCANCEL);
    if uc_choice=2 then
    begin
      SaveDialog1.FileName:='';
      Exit;
    end;
  end;
  AssignFile(fo_savefile, SaveDialog1.FileName);
  Rewrite(fo_savefile);
  i:=0;
  While a_parent[i]<>nil do
  begin
    j:=0;
    While a_parent[i].a_child[j]<>nil do
    begin
      st_tmp.a_child[j]:=a_parent[i].a_child[j]^;
      inc(j);
    end;
    st_tmp.i_questAm:=j;
    st_tmp.f_per:=a_parent[i].f_per;
    st_tmp.i_time:=i_time;
    st_tmp.s_email:=s_email;
    st_tmp.b_homework:=MenuItem4_3.Checked;
    Write(fo_savefile, st_tmp);
    inc(i);
  end;
  CloseFile(fo_savefile);
  MenuItem1_3.Enabled:=False;
end;

procedure TForm1.ListBox2KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if CtrlDown or (Key=46) then
    Case Key of
      46: MenuItem3_2.Click;
      83: MenuItem1_3.Click;
      86: MenuItem3_1.Click;
    end;
end;

procedure TForm1.MenuItem1_4Click(Sender: TObject);
begin
  MenuItem1_3.Enabled:=True;
  SaveDialog1.FileName:='';
  MenuItem1_3.Click;
  MenuItem1_3.Enabled:=False;
end;

procedure TForm1.MenuItem1_2Click(Sender: TObject);
Var
  uc_choice: Byte;
begin
  if MenuItem1_3.Enabled then
  begin
    uc_choice:=MessageDlg('Файл не сохранен. Сделать это сейчас?', MB_ICONWARNING, MB_OKCANCEL);
    if uc_choice=1 then
      MenuItem1_3.Click;
  end;
  ListBox1.Clear;
  ListBox2.Clear;
  ClearArray(a_parent, true);
  i_time:=60;
  s_email:='';
  SaveDialog1.FileName:='';
  MenuItem1_3.Enabled:=True;
  MenuItem4_3.Checked:=False;
end;

procedure TForm1.MenuItem1_1Click(Sender: TObject);
Var
  uc_choice: Byte;
  fo_openfile: file of FileTask;
  i, j: Integer;
  st_tmp: FileTask;
begin
  if MenuItem1_3.Enabled then
  begin
    uc_choice:=MessageDlg('Файл не сохранен. Сделать это сейчас?', MB_ICONWARNING, MB_OKCANCEL);
    if uc_choice=1 then
      MenuItem1_3.Click;
  end;
  if OpenDialog1.Execute then
  begin
    ListBox1.Clear;
    ListBox2.Clear;
    ClearArray(a_parent, True);
    AssignFile(fo_openfile, OpenDialog1.FileName);
    Reset(fo_openfile);
    if FileSize(fo_openfile)=0 then
      Exit;
    i:=0;
    While not Eof(fo_openfile) do
    begin
      New(a_parent[i]);
      for j:=0 to 31 do
        a_parent[i].a_child[j]:=nil;
      Read(fo_openfile, st_tmp);
      for j:=1 to st_tmp.i_questAm do
      begin
        New(a_parent[i].a_child[j-1]);
        a_parent[i].a_child[j-1]^:=st_tmp.a_child[j-1];
      end;
      a_parent[i].f_per:=st_tmp.f_per;
      a_parent[i].i_time:=st_tmp.i_time;
      a_parent[0].s_email:=st_tmp.s_email;
      a_parent[i].s_email:='';
      inc(i);
    end;
    for j:=0 to i-1 do
      ListBox1.AddItem('Задача '+IntToStr(j+1), Sender);
    CloseFile(fo_openfile);
    i_time:=a_parent[0].i_time;
    s_email:=a_parent[0].s_email;
    SaveDialog1.FileName:=OpenDialog1.FileName;
  end
  else
  begin
    OpenDialog1.FileName:='';
  end;
end;

procedure TForm1.ListBox2DblClick(Sender: TObject);
Var
  i: Integer;
begin
  v_curQuest:=a_parent[ListBox1.ItemIndex].a_child[ListBox2.ItemIndex];
  Form2.ShowModal;
end;

procedure TForm1.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
Var
  uc_choice: Byte;
begin

end;

procedure TForm1.MenuItem4_1Click(Sender: TObject);
Var
  b_choice: Boolean;
  s_inp: String;
  i_tmp: Integer;
begin
  s_inp:=IntToStr(i_time);
  i_tmp:=i_time;
  While InputQuery('Время на выполнение', 'Укажите время в минутах', s_inp) do
  begin
    try
      i_time:=StrToInt(s_inp);
    except
      if QMMainUnit.MessageDlg('Ошибочное значение. Попробовать еще раз?', MB_ICONWARNING, MB_OKCANCEL)=2 then
      begin
        i_time:=i_tmp;
        break;
      end
      else
        continue;
    end;
    if (i_time<=0) or (i_time>1440) then
    begin
      if QMMainUnit.MessageDlg('Неподходящее значение (нужно от 1 до 1440 вкл.). Попробовать снова?', MB_ICONWARNING, MB_OKCANCEL)=2 then
      begin
        i_time:=i_tmp;
        break;
      end;
    end
    else
      break;
  end;
  if i_time<>i_tmp then
    MenuItem1_3.Enabled:=True;
end;

procedure TForm1.ListBox1DblClick(Sender: TObject);
Var
  b_choice: Boolean;
  s_inp: String;
  f_tmp, f_amper: Real;
  i: Integer;
begin
  f_tmp:=a_parent[ListBox1.ItemIndex].f_per;
  s_inp:=FloatToStr(f_tmp);
  While InputQuery('Процент в тесте', 'Укажите значение процента', s_inp) do
  begin
    try
      f_tmp:=StrToFloat(s_inp);
    except
      if QMMainUnit.MessageDlg('Ошибочное значение. Попробовать еще раз?', MB_ICONWARNING, MB_OKCANCEL)=2 then
        break
      else
        continue;
    end;
    if (f_tmp<0) or (f_tmp>100) then
    begin
      if QMMainUnit.MessageDlg('Неподходящее значение для процента. Попробовать снова?', MB_ICONWARNING, MB_OKCANCEL)=2 then
        break;
    end
    else
    begin
      i:=0;
      f_amper:=0;
      while a_parent[i]<>nil do
      begin
        if i<>ListBox1.ItemIndex then
          f_amper:=f_amper+a_parent[i].f_per;
        inc(i);
      end;
      f_amper:=f_amper+f_tmp;
      if f_amper>100 then
        QMMainUnit.MessageDlg('В текущей задаче суммарный процент получился больше 100. Исправьте', MB_ICONWARNING, MB_OK) 
      else
      begin
        a_parent[ListBox1.ItemIndex].f_per:=f_tmp;
        break;
      end;
    end;
  end;
end;

procedure TForm1.MenuItem4_2Click(Sender: TObject);
Var
  b_choice: Boolean;
  s_tmp: String;
begin
  s_tmp:=s_email;
  b_choice:=InputQuery('Ввод e-mail''а', 'Укажите e-mail для получения результатов', s_tmp);
  if b_choice then
  begin
    if s_email<>s_tmp then
      MenuItem1_3.Enabled:=True;
    s_email:=s_tmp;
  end;
end;

procedure TForm1.MenuItem5_1Click(Sender: TObject);
begin
  MessageDlg('Tester 1.0.0.0' +#13#10#13#10 + 'Автор: Compiler aka 2k' +#13#10 + 'icq: 420274054' +#13#10 + 'E-mail: MainCompiler@gmail.com', 0, 0);
end;

procedure TForm1.MenuItem4_3Click(Sender: TObject);
begin
  MenuItem4_3.Checked:=not MenuItem4_3.Checked;
end;

end.
