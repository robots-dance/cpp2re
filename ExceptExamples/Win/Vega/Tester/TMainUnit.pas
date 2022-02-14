unit TMainUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Menus, ExtCtrls, Lib_X56r, WinSock;

function MessageDlg(s_messText: String; uc_messType, uc_Buttons: Byte): Integer;

type
  TForm1 = class(TForm)
    ListBox2: TListBox;
    SaveDialog1: TSaveDialog;
    OpenDialog1: TOpenDialog;
    MainMenu1: TMainMenu;
    ListBox1: TListBox;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem2_1: TMenuItem;
    MenuItem2_2: TMenuItem;
    MenuItem1_2: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem4_1: TMenuItem;
    Timer1: TTimer;
    Label1: TLabel;
    MenuItem3: TMenuItem;
    MenuItem3_1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure MenuItem1_1Click(Sender: TObject);
    procedure ListBox2DblClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure ListBox1Click(Sender: TObject);
    procedure ListBox2KeyPress(Sender: TObject; var Key: Char);
    procedure MenuItem1_2Click(Sender: TObject);
    procedure MenuItem2_1Click(Sender: TObject);
    procedure MenuItem2_2Click(Sender: TObject);
    procedure ListBox1DblClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure MenuItem3_1Click(Sender: TObject);
    procedure MenuItem4_1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  TMyThread = class(TThread)
    public
    private
      li_left: Extended;
    protected
      procedure Execute; override;
      procedure ShowTime();
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

    uc_answerAm: Byte;
    a_answer1: array [1..5] of questType1;
    a_answer2: array [1..5] of questType2;
    a_answer3: array [1..5] of questType3;
    a_answer4: array [1..5] of questType4;
    a_answer5: array [1..5] of questType5;
    a_answer6: array [1..5] of questType6;
    a_answer7: array [1..5] of questType7;
    a_answerAm: array [1..7] of Byte;
    b_critical: Boolean;
    b_exists: Boolean;
    b_link: Boolean;
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

  StrType1 = String[6];

var
  Form1: TForm1;
  a_parent, a_response: Tasks;
  v_readQuest, v_wrQuest: PQuestion;
  s_hours, s_minutes, s_seconds: StrType1;
  li_start: Extended;
  lpThrId: Cardinal;
  tmt: TMyThread;
  s_uid: String[255];
  b_sended, b_canclose: Boolean;
  s_result: String;
  
implementation
uses TSettUnit, QMMainUnit;

{$R *.dfm}

procedure CorrectTimeFormat(li_mill: Cardinal; var s_hours, s_minutes, s_seconds: StrType1);
Var
  usi_hours, usi_minutes, usi_seconds, usi_millisec: Word;
begin
  s_hours:='';
  s_minutes:='';
  s_seconds:='';
  usi_hours:=li_mill div (3600*1000);
  li_mill:=li_mill-usi_hours*3600*1000;
  usi_minutes:=li_mill div (60*1000);
  li_mill:=li_mill-usi_minutes*60*1000;
  usi_seconds:=li_mill div 1000;
  li_mill:=li_mill-usi_seconds*1000;
  if usi_hours div 10 = 0 then
    s_hours:='0'+IntToStr(usi_hours)
  else
    s_hours:=IntToStr(usi_hours);
  if usi_minutes div 10 = 0 then
    s_minutes:='0'+IntToStr(usi_minutes)
  else
    s_minutes:=IntToStr(usi_minutes);
  if usi_seconds div 10 = 0 then
    s_seconds:='0'+IntToStr(usi_seconds)
  else
    s_seconds:=IntToStr(usi_seconds);
end;

procedure TMyThread.ShowTime();
begin
  CorrectTimeFormat(trunc(li_left), s_hours, s_minutes, s_seconds);
  Form1.Label1.Caption:='Время: '+s_hours+':'+s_minutes+':'+s_seconds;
end;

procedure TMyThread.Execute();
Var
  li_cur: Extended;
begin
  li_left:=1;
  While true do
  begin
    li_cur:=GetTickCount()-li_start;
    li_left:=Form1.Timer1.Interval-li_cur;
    Synchronize(ShowTime);
    sleep(1000);
  end;  
end;

function MessageDlg(s_messText: String; uc_messType, uc_Buttons: Byte): Integer;
begin
  Result:=MessageBox(Application.Handle, PChar(s_messText), '', uc_messType + uc_Buttons);
end;

procedure TForm1.FormCreate(Sender: TObject);
Var
  s_part1, s_part2, s_part3: String;
begin
  Form1.Constraints.MinHeight:=Form1.Height;
  Form1.Constraints.MinWidth:=Form1.Width;
  Form1.Constraints.MaxWidth:=Form1.Width;
  OpenDialog1.InitialDir:=ExtractFilePath(Application.ExeName);
  SaveDialog1.InitialDir:=OpenDialog1.InitialDir;
  ClearArray(a_parent, False);
  MenuItem2_1.Enabled:=False;
  MenuItem2_2.Enabled:=False;
  b_sended:=False;
  b_canclose:=True;
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

procedure TForm1.MenuItem1_1Click(Sender: TObject);
Var
  uc_choice: Byte;
  fo_openfile: file of FileTask;
  i, j: Integer;
  st_tmp: FileTask;
begin

  if OpenDialog1.Execute then
  begin
    ListBox1.Clear;
    ListBox2.Clear;
    ClearArray(a_parent, True);
    ClearArray(a_response, True);
    AssignFile(fo_openfile, OpenDialog1.FileName);
    Reset(fo_openfile);
    if FileSize(fo_openfile)=0 then
      Exit;
    i:=0;
    While not Eof(fo_openfile) do
    begin
      New(a_parent[i]);
      New(a_response[i]);
      for j:=0 to 31 do
      begin
        a_parent[i].a_child[j]:=nil;
        a_response[i].a_child[j]:=nil;
      end;
      Read(fo_openfile, st_tmp);
      for j:=1 to st_tmp.i_questAm do
      begin
        New(a_parent[i].a_child[j-1]);
        New(a_response[i].a_child[j-1]);
        a_parent[i].a_child[j-1]^:=st_tmp.a_child[j-1];
        a_response[i].a_child[j-1].uc_answerAm:=st_tmp.a_child[j-1].uc_answerAm;
        a_response[i].a_child[j-1].a_answerAm:=st_tmp.a_child[j-1].a_answerAm;
      end;
      a_parent[i].f_per:=st_tmp.f_per;
      a_parent[i].i_time:=st_tmp.i_time;
      a_parent[i].s_email:=st_tmp.s_email;
      inc(i);
    end;
    for j:=0 to i-1 do
      ListBox1.AddItem('Задача '+IntToStr(j+1), Sender);
    CloseFile(fo_openfile);
    MenuItem2_1.Enabled:=True;
    CorrectTimeFormat(a_parent[0].i_time*60000, s_hours, s_minutes, s_seconds);
    Label1.Caption:='Время: '+s_hours+':'+s_minutes+':'+s_seconds;
  end
  else
  begin
    OpenDialog1.FileName:='';
  end;
end;

procedure TForm1.ListBox2DblClick(Sender: TObject);
begin
  if MenuItem2_1.Enabled then
  begin
    TMainUnit.MessageDlg('Сначала начните тест!', MB_ICONWARNING, MB_OK);
  end
  else
  begin
    v_wrQuest:=a_response[ListBox1.ItemIndex].a_child[ListBox2.ItemIndex];
    v_readQuest:=a_parent[ListBox1.ItemIndex].a_child[ListBox2.ItemIndex];
    Form2.ShowModal;
  end;
end;

procedure TForm1.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
Var
  uc_choice: Byte;
begin
  CanClose:=b_canclose;
  if not b_canclose then
  begin
    TMainUnit.MessageDlg('Идет отправка письма. Нельзя закрыть форму', MB_ICONINFORMATION, MB_OK);
  end;
end;

procedure TForm1.ListBox2KeyPress(Sender: TObject; var Key: Char);
begin
  if (Ord(Key)=13) and (ListBox2.ItemIndex>-1) then
  begin
    if MenuItem2_1.Enabled then
    begin
      TMainUnit.MessageDlg('Сначала начните тест!', MB_ICONWARNING, MB_OK);
    end
    else
    begin
      v_readQuest:=a_parent[ListBox1.ItemIndex].a_child[ListBox2.ItemIndex];
      v_wrQuest:=a_response[ListBox1.ItemIndex].a_child[ListBox2.ItemIndex];
      Form2.ShowModal;
    end;  
  end;
end;

procedure TForm1.MenuItem1_2Click(Sender: TObject);
begin
  Self.Close;
end;

procedure TForm1.MenuItem2_1Click(Sender: TObject);
Var
  i: Integer;
begin
  if s_uid='' then
  begin
    TMainUnit.MessageDlg('Вы не ввели UserID!', MB_ICONWARNING, MB_OK);
    Exit;
  end;
  if TMainUnit.MessageDlg('Вы действительно хотите начать?', MB_ICONWARNING, MB_OKCANCEL)=1 then
  begin
    MenuItem2_1.Enabled:=False;
    MenuItem2_2.Enabled:=True;
    Timer1.Interval:=a_parent[0].i_time*60000;
    li_start:=GetTickCount();
    Timer1.Enabled:=True;
    tmt:=TMyThread.Create(False); //!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
  end;
end;

procedure SendMessage();
Var
  i_conn: TSocket;
  s_ip: StrTypeIP;
  s_port: StrType2;
  s_response, s_password: String;
begin
  b_canclose:=False;
  s_ip:=GetIP('smtp.mail.ru', 1);
  if s_ip='' then
    Exit;
  s_port:='25';
  if not WaitConnect(i_conn, s_ip, s_port, 2, 0) then
    Exit;
  s_response:=ReadFromSocket(i_conn);

  SendToSocket(i_conn, 'HELO localhost');
  Sleep(100);
  s_response:=ReadFromSocket(i_conn);

  SendToSocket(i_conn, 'AUTH LOGIN');
  Sleep(100);
  s_response:=ReadFromSocket(i_conn);

  SendToSocket(i_conn, 'aWVpV3J0SU9D');
  Sleep(100);
  s_response:=ReadFromSocket(i_conn);

  SendToSocket(i_conn, 'MjctYjJfdDRSNjcuOHl1SQ==');
  Sleep(100);
  s_response:=ReadFromSocket(i_conn);

  SendToSocket(i_conn, 'MAIL FROM:<ieiWrtIOC@mail.ru>');
  Sleep(100);
  s_response:=ReadFromSocket(i_conn);

  SendToSocket(i_conn, 'RCPT TO:<' + a_parent[0].s_email + '>');
  Sleep(100);
  s_response:=ReadFromSocket(i_conn);

  SendToSocket(i_conn, 'DATA');
  Sleep(100);
  s_response:=ReadFromSocket(i_conn);

  SendToSocket(i_conn, 'From:<ieiWrtIOC@mail.ru>');
  Sleep(100);

  SendToSocket(i_conn, 'To:<' + a_parent[0].s_email + '>');
  Sleep(100);

  SendToSocket(i_conn, 'Subject: Test');
  Sleep(100);

  SendToSocket(i_conn, 'Mime-Version: 1.0'+#13+#10+'Content-Type: text/plain; charset="windows-1251"');
  Sleep(100);

  SendToSocket(i_conn, 'UID: ' + s_uid + #13#10 + s_result + #13#10 + '.');
  Sleep(500);
  s_response:=ReadFromSocket(i_conn);

  SendToSocket(i_conn, 'QUIT');
  b_sended:=True;
end;

procedure CheckTest();
Var
  i, j, i1: Integer;
  f_per: Real;
  b_mistake, b_link: Boolean;
  
begin
  s_result:='';
  for i:=0 to Form1.ListBox1.Count-1 do
  begin
    f_per:=0;
    for j:=0 to length(a_parent[i].a_child) do
    begin
      if a_parent[i].a_child[j]=nil then
        continue;
      b_link:=a_parent[i].a_child[j].b_link;
      i1:=1;
      b_mistake:=not b_link;
      While (i1<=a_parent[i].a_child[j].a_answerAm[1]) and ((b_mistake and not b_link) or (not b_mistake and b_link)) do
      begin

        if a_parent[i].a_child[j].a_answer1[i1].b_XisInt then
          b_mistake:=a_parent[i].a_child[j].a_answer1[i1].i_x<>a_response[i].a_child[j].a_answer1[i1].i_x
        else
          b_mistake:=a_parent[i].a_child[j].a_answer1[i1].f_x<>a_response[i].a_child[j].a_answer1[i1].f_x;

        if a_parent[i].a_child[j].a_answer1[i1].b_YisInt then
          b_mistake:=b_mistake or (a_parent[i].a_child[j].a_answer1[i1].i_y<>a_response[i].a_child[j].a_answer1[i1].i_y)
        else
          b_mistake:=b_mistake or (a_parent[i].a_child[j].a_answer1[i1].f_y<>a_response[i].a_child[j].a_answer1[i1].f_y);
        inc(i1);
      end;

      if (b_mistake and b_link) or not (b_mistake or b_link) then
      begin
        if not (b_mistake or b_link) then
          f_per:=f_per+a_parent[i].a_child[j].f_per;
        continue;
      end;

      i1:=1;
      b_mistake:=not b_link;
      While (i1<=a_parent[i].a_child[j].a_answerAm[2]) and ((b_mistake and not b_link) or (not b_mistake and b_link)) do
      begin

        if a_parent[i].a_child[j].a_answer2[i1].b_XisInt then
          b_mistake:=a_parent[i].a_child[j].a_answer2[i1].i_x<>a_response[i].a_child[j].a_answer2[i1].i_x
        else
          b_mistake:=a_parent[i].a_child[j].a_answer2[i1].f_x<>a_response[i].a_child[j].a_answer2[i1].f_x;

        if a_parent[i].a_child[j].a_answer2[i1].b_YisInt then
          b_mistake:=b_mistake or (a_parent[i].a_child[j].a_answer2[i1].i_y<>a_response[i].a_child[j].a_answer2[i1].i_y)
        else
          b_mistake:=b_mistake or (a_parent[i].a_child[j].a_answer2[i1].f_y<>a_response[i].a_child[j].a_answer2[i1].f_y);

        inc(i1);
      end;

      if (b_mistake and b_link) or not (b_mistake or b_link) then
      begin
        if not (b_mistake or b_link) then
          f_per:=f_per+a_parent[i].a_child[j].f_per;
        continue;
      end;

      i1:=1;
      b_mistake:=not b_link;
      While (i1<=a_parent[i].a_child[j].a_answerAm[3]) and ((b_mistake and not b_link) or (not b_mistake and b_link)) do
      begin

        if a_parent[i].a_child[j].a_answer3[i1].b_XisInt then
          b_mistake:=a_parent[i].a_child[j].a_answer3[i1].i_x<>a_response[i].a_child[j].a_answer3[i1].i_x
        else
          b_mistake:=a_parent[i].a_child[j].a_answer3[i1].f_x<>a_response[i].a_child[j].a_answer3[i1].f_x;
        inc(i1);
      end;

      if (b_mistake and b_link) or not (b_mistake or b_link) then
      begin
        if not (b_mistake or b_link) then
          f_per:=f_per+a_parent[i].a_child[j].f_per;
        continue;
      end;

      i1:=1;
      b_mistake:=not b_link;
      While (i1<=a_parent[i].a_child[j].a_answerAm[4]) and ((b_mistake and not b_link) or (not b_mistake and b_link)) do
      begin

        if a_parent[i].a_child[j].a_answer4[i1].b_XisInt then
          b_mistake:=a_parent[i].a_child[j].a_answer4[i1].i_x<>a_response[i].a_child[j].a_answer4[i1].i_x
        else
          b_mistake:=a_parent[i].a_child[j].a_answer4[i1].f_x<>a_response[i].a_child[j].a_answer4[i1].f_x;
        inc(i1);
      end;

      if (b_mistake and b_link) or not (b_mistake or b_link) then
      begin
        if not (b_mistake or b_link) then
          f_per:=f_per+a_parent[i].a_child[j].f_per;
        continue;
      end;

      i1:=1;
      b_mistake:=not b_link;
      While (i1<=a_parent[i].a_child[j].a_answerAm[5]) and ((b_mistake and not b_link) or (not b_mistake and b_link)) do
      begin
        b_mistake:=a_parent[i].a_child[j].a_answer5[i1].i_x<>a_response[i].a_child[j].a_answer5[i1].i_x;
        b_mistake:=b_mistake or (a_parent[i].a_child[j].a_answer5[i1].i_y<>a_response[i].a_child[j].a_answer5[i1].i_y);
        inc(i1);
      end;

      if (b_mistake and b_link) or not (b_mistake or b_link) then
      begin
        if not (b_mistake or b_link) then
          f_per:=f_per+a_parent[i].a_child[j].f_per;
        continue;
      end;

      i1:=1;
      b_mistake:=not b_link;
      While (i1<=a_parent[i].a_child[j].a_answerAm[6]) and ((b_mistake and not b_link) or (not b_mistake and b_link)) do
      begin
        if a_parent[i].a_child[j].a_answer6[i1].b_XisInt then
          b_mistake:=a_parent[i].a_child[j].a_answer6[i1].i_x<>a_response[i].a_child[j].a_answer6[i1].i_x
        else
          b_mistake:=a_parent[i].a_child[j].a_answer6[i1].f_x<>a_response[i].a_child[j].a_answer6[i1].f_x;
        inc(i1);
      end;

      if (b_mistake and b_link) or not (b_mistake or b_link) then
      begin
        if not (b_mistake or b_link) then
          f_per:=f_per+a_parent[i].a_child[j].f_per;
        continue;
      end;

      i1:=1;
      b_mistake:=not b_link;
      While (i1<=a_parent[i].a_child[j].a_answerAm[7]) and ((b_mistake and not b_link) or (not b_mistake and b_link)) do
      begin
        b_mistake:=a_parent[i].a_child[j].a_answer7[i1].s<>a_response[i].a_child[j].a_answer7[i1].s;
        inc(i1);
      end;

      if (b_mistake and b_link) or not (b_mistake or b_link) then
      begin
        if not (b_mistake or b_link) then
          f_per:=f_per+a_parent[i].a_child[j].f_per;
        continue;
      end;

      if not b_mistake then
        f_per:=f_per+a_parent[i].a_child[j].f_per;
    end;
    s_result:=s_result+'Задача '+IntToStr(i+1) + ': '+FloatToStr(f_per)+#13#10;
  end;
  if a_parent[0].b_homework then
  begin
    TMainUnit.MessageDlg('Тест окончен. Ждите результатов от преподавателя', MB_ICONINFORMATION, MB_OK);
    Form1.Timer1.Interval:=10000;
    Form1.Timer1.Enabled:=True;
    CreateThread(nil, 0, @SendMessage, nil, 0, lpThrId);
    TMainUnit.MessageDlg('Не закрывайте форму, пока появится сообщение результата отправки', MB_ICONINFORMATION, MB_OK);
  end
  else
  begin
    MessageDlg('Результаты теста для ' + s_uid + #13#10#13#10 + s_result, 1, 0);
    
  end;
end;

procedure TForm1.MenuItem2_2Click(Sender: TObject);
Var
  i: Integer;
begin
  if TMainUnit.MessageDlg('Вы действительно хотите закончить?', MB_ICONWARNING, MB_OKCANCEL)=1 then
  begin
    MenuItem2_1.Enabled:=False;
    MenuItem2_2.Enabled:=False;
    MenuItem2.Visible:=False;
    MenuItem3.Visible:=False;
    TerminateThread(tmt.Handle, 0);
    Timer1.Enabled:=False;
    Timer1.Interval:=0;
    CheckTest();
  end;
end;

procedure TForm1.ListBox1DblClick(Sender: TObject);
begin
  TMainUnit.MessageDlg('Значение процента для задачи: ' + FloatToStr(a_parent[ListBox1.ItemIndex].f_per), MB_ICONINFORMATION, MB_OK);
end;

procedure TForm1.Timer1Timer(Sender: TObject);
Var
  i: Integer;
  uc_choice: Byte;
begin
  Timer1.Enabled:=False;
  Timer1.Interval:=0;
  b_canclose:=True;
  if MenuItem2.Visible then
  begin
    TMainUnit.MessageDlg('Время теста закончилось', MB_ICONINFORMATION, MB_OK);
    try
      Form2.Close;
    except
    end;
    MenuItem2_1.Enabled:=False;
    MenuItem2_2.Enabled:=False;
    MenuItem2.Visible:=False;
    MenuItem3.Visible:=False;
    TerminateThread(tmt.Handle, 0);
    CheckTest();
  end
  else
  begin
    if not b_sended then
    begin
      uc_choice:=TMainUnit.MessageDlg('Не получилось отправить письмо. Попробовать снова?', MB_ICONINFORMATION, MB_OKCANCEL);
      if uc_choice=1 then
      begin
        Timer1.Enabled:=True;
        Timer1.Interval:=10000;
        CreateThread(nil, 0, @SendMessage, nil, 0, lpThrId);
      end;
    end
    else
    begin
      TMainUnit.MessageDlg('Результат успешно доставлен. Можно закрыть программу', MB_ICONINFORMATION, MB_OK);
    end;
  end;
end;

procedure TForm1.MenuItem3_1Click(Sender: TObject);
Var
  b_choice: Boolean;
  s_tmp: String;
begin
  s_tmp:=s_uid;
  b_choice:=InputQuery('Ввод UID', 'Укажите UID для идентификации', s_tmp);
  if b_choice then
    s_uid:=s_tmp;
end;

procedure TForm1.MenuItem4_1Click(Sender: TObject);
begin
  MessageDlg('Tester 1.0.0.0' +#13#10#13#10 + 'Автор: Compiler aka 2k' +#13#10 + 'icq: 420274054' +#13#10 + 'E-mail: MainCompiler@gmail.com', 0, 0);
end;

end.
