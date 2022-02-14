unit QuestSettUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, QMMainUnit, ExtCtrls;

type
  TForm2 = class(TForm)
    Memo1: TMemo;
    Label1: TLabel;
    Label2: TLabel;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    Edit2: TEdit;
    ListBox1: TListBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Button1: TButton;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    RadioGroup1: TRadioGroup;
    Button2: TButton;
    Label6: TLabel;
    EditPer: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure EditPerKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ComboBox_Change(Sender: TObject);
  end;

  Select = record
    uc_answerType, uc_number: Byte;
  end;
var
  Form2: TForm2;
  st_tmp: Question;
  a_lb: array [1..35] of Select;
  uc_itemIndex: Byte;

implementation

{$R *.dfm}

function CheckX(Sender: TObject; var f_x: Real; var i_x: Integer): Boolean;
begin
  Result:=True;
  if not Form2.CheckBox1.Checked then
  begin
    try
      f_x:=StrToFloat(Form2.Edit1.Text);
    except
    begin
      QMMainUnit.MessageDlg('Неккоректные данные в поле X!', MB_ICONWARNING, MB_OK);
      Result:=False;
    end;
    end;
  end
  else
  begin
    try
      i_x:=StrToInt(Form2.Edit1.Text);
    except
    begin
      QMMainUnit.MessageDlg('Неккоректные данные в поле X!', MB_ICONWARNING, MB_OK);
      Result:=False;
    end;
    end;
  end;
end;

function CheckY(Sender: TObject; var f_y: Real; var i_y: Integer): Boolean;
begin
  Result:=True;
  if not Form2.CheckBox2.Checked then
  begin
    try
      f_y:=StrToFloat(Form2.Edit2.Text);
    except
    begin
      QMMainUnit.MessageDlg('Неккоректные данные в поле Y!', MB_ICONWARNING, MB_OK);
      Result:=False;
    end;
    end;
  end
  else
  begin
    try
      i_y:=StrToInt(Form2.Edit2.Text);
    except
    begin
      QMMainUnit.MessageDlg('Неккоректные данные в поле Y!', MB_ICONWARNING, MB_OK);
      Result:=False;
    end;
    end;
  end;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  Form2.Constraints.MinHeight:=Form2.Height;
  Form2.Constraints.MinWidth:=Form2.Width;
  Form2.Constraints.MaxHeight:=Round(Form2.Height*1.5);
  Form2.Constraints.MaxWidth:=Round(Form2.Width*1.5);
end;

procedure TForm2.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
Var
  uc_choice, i: Byte;
  f_amper: Real;
begin
  Form1.MenuItem1_3.Enabled:=True;
  if (st_tmp.s_questText='') or (st_tmp.uc_answerAm=0) then
  begin
    uc_choice:=QMMainUnit.MessageDlg('Вы не ввели все данные. Все равно выйти?', MB_ICONWARNING, MB_OKCANCEL);
    if uc_choice=2 then
    begin
      CanClose:=False;
      Exit;
    end
    else
    begin
      CanClose:=True;
    end;
  end;
  i:=1;
  FillChar(st_tmp.s_questText, 512, #0);
  for i:=1 to length(Memo1.Text) do
    st_tmp.s_questText[i]:=Memo1.Text[i];
  st_tmp.b_exists:=True;
  st_tmp.b_link:=RadioGroup1.ItemIndex=0;
  try
    st_tmp.f_per:=StrToInt(EditPer.Text);
  except
  begin
    QMMainUnit.MessageDlg('Плохое число в поле процента! Исправьте', MB_ICONWARNING, MB_OK);
    CanClose:=False;
    Exit;
  end;
  end;
  if st_tmp.f_per>100 then
  begin
    QMMainUnit.MessageDlg('Процент не может быть больше 100', MB_ICONWARNING, MB_OK);
    CanClose:=False;
    Exit;
  end;
  f_amper:=0;
  i:=0;
  while a_parent[Form1.ListBox1.ItemIndex].a_child[i]<>nil do
  begin
    if i<>Form1.ListBox2.ItemIndex then
      f_amper:=f_amper+a_parent[Form1.ListBox1.ItemIndex].a_child[i].f_per;
    inc(i);  
  end;
  f_amper:=f_amper+st_tmp.f_per;
  if f_amper>100 then
  begin
    QMMainUnit.MessageDlg('В текущей задаче суммарный процент получился больше 100. Исправьте', MB_ICONWARNING, MB_OK);
    CanClose:=False;
    Exit;
  end;
  v_curQuest^:=st_tmp;
end;

procedure TForm2.ComboBox1Change(Sender: TObject);
begin
  CheckBox1.Checked:=False;
  CheckBox2.Checked:=False;
  Edit1.Text:='';
  Edit2.Text:='';
  Case ComboBox1.ItemIndex of
    0:
    begin
      Label3.Visible:=False;
      Label4.Visible:=False;
      Label5.Visible:=False;
      Edit1.Visible:=False;
      Edit2.Visible:=False;
      CheckBox1.Visible:=False;
      CheckBox2.Visible:=False;
    end;
    1:
    begin
      Label3.Visible:=True;
      Label4.Visible:=True;
      Label5.Visible:=False;
      Edit1.Visible:=True;
      Edit2.Visible:=True;
      CheckBox1.Visible:=True;
      CheckBox2.Visible:=True;

    end;
    2:
    begin
      Label3.Visible:=True;
      Label4.Visible:=True;
      Label5.Visible:=False;
      Edit1.Visible:=True;
      Edit2.Visible:=True;
      CheckBox1.Visible:=True;
      CheckBox2.Visible:=True;
    end;
    3:
    begin
      Label3.Visible:=True;
      Label4.Visible:=False;
      Label5.Visible:=False;
      Edit1.Visible:=True;
      Edit2.Visible:=False;
      CheckBox1.Visible:=True;
      CheckBox2.Visible:=False;
    end;
    4:
    begin
      Label3.Visible:=True;
      Label4.Visible:=False;
      Label5.Visible:=False;
      Edit1.Visible:=True;
      Edit2.Visible:=False;
      CheckBox1.Visible:=True;
      CheckBox2.Visible:=False;
    end;
    5:
    begin
      Label3.Visible:=True;
      Label4.Visible:=True;
      Label5.Visible:=False;
      Edit1.Visible:=True;
      Edit2.Visible:=True;
      CheckBox1.Visible:=False;
      CheckBox2.Visible:=False;
    end;
   6:
    begin
      Label3.Visible:=True;
      Label4.Visible:=False;
      Label5.Visible:=False;
      Edit1.Visible:=True;
      Edit2.Visible:=False;
      CheckBox1.Visible:=True;
      CheckBox2.Visible:=False;
    end;
    7:
    begin
      Label3.Visible:=False;
      Label4.Visible:=False;
      Label5.Left:=Label3.Left;
      Label5.Top:=Label3.Top;
      Label5.Visible:=True;
      Edit1.Visible:=True;
      Edit2.Visible:=False;
      CheckBox1.Visible:=False;
      CheckBox2.Visible:=False;
      
    end;
  end;
  if ComboBox1.ItemIndex=7 then
    Edit1.MaxLength:=32
  else
    Edit1.MaxLength:=9;
end;

procedure TForm2.Button1Click(Sender: TObject);
Var
  f_x, f_y: Real;
  i_x, i_y, i, j: Integer;
  s_selname, s_tmp: String;
  b_identical: Boolean;

begin
  f_x:=0;
  f_y:=0;
  i_x:=0;
  i_y:=0;
  s_selname:='';
  if st_tmp.a_answerAm[ComboBox1.ItemIndex]>4 then
  begin
    QMMainUnit.MessageDlg('Вы не можете создавать более пяти ответов одного типа!', MB_ICONWARNING, MB_OK);
    Exit;
  end;
  Case ComboBox1.ItemIndex of
    1:
    begin
      if not CheckX(Sender, f_x, i_x) then
        Exit;
      if not CheckY(Sender, f_y, i_y) then
        Exit;
      b_identical:=False;
      for i:=1 to st_tmp.a_answerAm[ComboBox1.ItemIndex] do
        if (CheckBox1.Checked=st_tmp.a_answer1[i].b_XisInt) and (CheckBox2.Checked=st_tmp.a_answer1[i].b_YisInt) then
          if (st_tmp.a_answer1[i].i_x=i_x) and
             (st_tmp.a_answer1[i].i_y=i_y) and
             (st_tmp.a_answer1[i].f_x=f_x) and
             (st_tmp.a_answer1[i].f_y=f_y) then
          begin
            b_identical:=True;
            break;
          end;
      if b_identical then
      begin
        QMMainUnit.MessageDlg('Такой ответ уже есть', MB_ICONWARNING, MB_OK);
        Exit;
      end;
      if not CheckBox1.Checked then
      begin
        s_tmp:=FloatToStr(f_x);
        if (pos(',', s_tmp)=0) and (pos('.', s_tmp)=0) then
          s_tmp:=s_tmp+',0';
        s_selname:=s_selname+s_tmp;
        st_tmp.a_answer1[st_tmp.a_answerAm[ComboBox1.ItemIndex]+1].b_XisInt:=False;
        st_tmp.a_answer1[st_tmp.a_answerAm[ComboBox1.ItemIndex]+1].f_x:=f_x;
      end
      else
      begin
        s_selname:=s_selname+IntToStr(i_x);
        st_tmp.a_answer1[st_tmp.a_answerAm[ComboBox1.ItemIndex]+1].b_XisInt:=True;
        st_tmp.a_answer1[st_tmp.a_answerAm[ComboBox1.ItemIndex]+1].i_x:=i_x;
      end;
      s_selname:=s_selname+'; ';
      if not CheckBox2.Checked then
      begin
        s_tmp:=FloatToStr(f_y);
        if (pos(',', s_tmp)=0) and (pos('.', s_tmp)=0) then
          s_tmp:=s_tmp+',0';
        s_selname:=s_selname+s_tmp;
        st_tmp.a_answer1[st_tmp.a_answerAm[ComboBox1.ItemIndex]+1].b_YisInt:=False;
        st_tmp.a_answer1[st_tmp.a_answerAm[ComboBox1.ItemIndex]+1].f_y:=f_y;
      end
      else
      begin
        s_selname:=s_selname+IntToStr(i_y);
        st_tmp.a_answer1[st_tmp.a_answerAm[ComboBox1.ItemIndex]+1].b_YisInt:=True;
        st_tmp.a_answer1[st_tmp.a_answerAm[ComboBox1.ItemIndex]+1].i_y:=i_y;
      end;
      ListBox1.AddItem('['+s_selname+']', Sender);
      a_lb[st_tmp.uc_answerAm+1].uc_answerType:=1;
    end;
    2:
    begin
      if not CheckX(Sender, f_x, i_x) then
        Exit;
      if not CheckY(Sender, f_y, i_y) then
        Exit;
      b_identical:=False;
      for i:=1 to st_tmp.a_answerAm[ComboBox1.ItemIndex] do
        if (CheckBox1.Checked=st_tmp.a_answer2[i].b_XisInt) and (CheckBox2.Checked=st_tmp.a_answer2[i].b_YisInt) then
          if (st_tmp.a_answer2[i].i_x=i_x) and
             (st_tmp.a_answer2[i].i_y=i_y) and
             (st_tmp.a_answer2[i].f_x=f_x) and
             (st_tmp.a_answer2[i].f_y=f_y) then
          begin
            b_identical:=True;
            break;
          end;
      if b_identical then
      begin
        QMMainUnit.MessageDlg('Такой ответ уже есть', MB_ICONWARNING, MB_OK);
        Exit;
      end;
      if not CheckBox1.Checked then
      begin
        s_tmp:=FloatToStr(f_x);
        if (pos(',', s_tmp)=0) and (pos('.', s_tmp)=0) then
          s_tmp:=s_tmp+',0';
        s_selname:=s_selname+s_tmp;
        st_tmp.a_answer2[st_tmp.a_answerAm[ComboBox1.ItemIndex]+1].b_XisInt:=False;
        st_tmp.a_answer2[st_tmp.a_answerAm[ComboBox1.ItemIndex]+1].f_x:=f_x;
      end
      else
      begin
        s_selname:=s_selname+IntToStr(i_x);
        st_tmp.a_answer2[st_tmp.a_answerAm[ComboBox1.ItemIndex]+1].b_XisInt:=True;
        st_tmp.a_answer2[st_tmp.a_answerAm[ComboBox1.ItemIndex]+1].i_x:=i_x;
      end;
      s_selname:=s_selname+'; ';
      if not CheckBox2.Checked then
      begin
        s_tmp:=FloatToStr(f_y);
        if (pos(',', s_tmp)=0) and (pos('.', s_tmp)=0) then
          s_tmp:=s_tmp+',0';
        s_selname:=s_selname+s_tmp;
        st_tmp.a_answer2[st_tmp.a_answerAm[ComboBox1.ItemIndex]+1].b_YisInt:=False;
        st_tmp.a_answer2[st_tmp.a_answerAm[ComboBox1.ItemIndex]+1].f_y:=f_y;
      end
      else
      begin
        s_selname:=s_selname+IntToStr(i_y);
        st_tmp.a_answer2[st_tmp.a_answerAm[ComboBox1.ItemIndex]+1].b_YisInt:=True;
        st_tmp.a_answer2[st_tmp.a_answerAm[ComboBox1.ItemIndex]+1].i_y:=i_y;
      end;
      ListBox1.AddItem('('+s_selname+')', Sender);
      a_lb[st_tmp.uc_answerAm+1].uc_answerType:=2;
    end;
    3:
    begin
      if not CheckX(Sender, f_x, i_x) then
        Exit;
      b_identical:=False;
      for i:=1 to st_tmp.a_answerAm[ComboBox1.ItemIndex] do
        if CheckBox1.Checked=st_tmp.a_answer3[i].b_XisInt then
          if (st_tmp.a_answer3[i].i_x=i_x) and (st_tmp.a_answer3[i].f_x=f_x) then
          begin
            b_identical:=True;
            break;
          end;
      if b_identical then
      begin
        QMMainUnit.MessageDlg('Такой ответ уже есть', MB_ICONWARNING, MB_OK);
        Exit;
      end;
      if not CheckBox1.Checked then
      begin
        s_tmp:=FloatToStr(f_x);
        if (pos(',', s_tmp)=0) and (pos('.', s_tmp)=0) then
          s_tmp:=s_tmp+',0';
        s_selname:=s_selname+s_tmp;
        st_tmp.a_answer3[st_tmp.a_answerAm[ComboBox1.ItemIndex]+1].b_XisInt:=False;
        st_tmp.a_answer3[st_tmp.a_answerAm[ComboBox1.ItemIndex]+1].f_x:=f_x;
      end
      else
      begin
        s_selname:=s_selname+IntToStr(i_x);
        st_tmp.a_answer3[st_tmp.a_answerAm[ComboBox1.ItemIndex]+1].b_XisInt:=True;
        st_tmp.a_answer3[st_tmp.a_answerAm[ComboBox1.ItemIndex]+1].i_x:=i_x;
      end;
      ListBox1.AddItem('('+s_selname+'; +)', Sender);
      a_lb[st_tmp.uc_answerAm+1].uc_answerType:=3;
    end;
    4:
    begin
      if not CheckX(Sender, f_x, i_x) then
        Exit;
      b_identical:=False;
      for i:=1 to st_tmp.a_answerAm[ComboBox1.ItemIndex] do
        if CheckBox1.Checked=st_tmp.a_answer4[i].b_XisInt then
          if (st_tmp.a_answer4[i].i_x=i_x) and (st_tmp.a_answer4[i].f_x=f_x) then
          begin
            b_identical:=True;
            break;
          end;
      if b_identical then
      begin
        QMMainUnit.MessageDlg('Такой ответ уже есть', MB_ICONWARNING, MB_OK);
        Exit;
      end;
      if not CheckBox1.Checked then
      begin
        s_tmp:=FloatToStr(f_x);
        if (pos(',', s_tmp)=0) and (pos('.', s_tmp)=0) then
          s_tmp:=s_tmp+',0';
        s_selname:=s_selname+s_tmp;
        st_tmp.a_answer4[st_tmp.a_answerAm[ComboBox1.ItemIndex]+1].b_XisInt:=False;
        st_tmp.a_answer4[st_tmp.a_answerAm[ComboBox1.ItemIndex]+1].f_x:=f_x;
      end
      else
      begin
        s_selname:=s_selname+IntToStr(i_x);
        st_tmp.a_answer4[st_tmp.a_answerAm[ComboBox1.ItemIndex]+1].b_XisInt:=True;
        st_tmp.a_answer4[st_tmp.a_answerAm[ComboBox1.ItemIndex]+1].i_x:=i_x;
      end;
      ListBox1.AddItem('(-; '+s_selname+')', Sender);
      a_lb[st_tmp.uc_answerAm+1].uc_answerType:=4;
    end;
    5:
    begin
      CheckBox1.Checked:=True;
      CheckBox2.Checked:=True;
      if not CheckX(Sender, f_x, i_x) then
        Exit;
      if not CheckY(Sender, f_y, i_y) then
        Exit;
      b_identical:=False;
      for i:=1 to st_tmp.a_answerAm[ComboBox1.ItemIndex] do
        if (st_tmp.a_answer5[i].i_x=i_x) and (st_tmp.a_answer5[i].i_y=i_y) then
        begin
          b_identical:=True;
          break;
        end;
      if b_identical then
      begin
        QMMainUnit.MessageDlg('Такой ответ уже есть', MB_ICONWARNING, MB_OK);
        Exit;
      end;
      s_selname:=s_selname+IntToStr(i_x);
      st_tmp.a_answer5[st_tmp.a_answerAm[ComboBox1.ItemIndex]+1].b_XisInt:=True;
      st_tmp.a_answer5[st_tmp.a_answerAm[ComboBox1.ItemIndex]+1].i_x:=i_x;
      s_selname:=s_selname+'; ';
      s_selname:=s_selname+IntToStr(i_y);
      st_tmp.a_answer5[st_tmp.a_answerAm[ComboBox1.ItemIndex]+1].b_YisInt:=True;
      st_tmp.a_answer5[st_tmp.a_answerAm[ComboBox1.ItemIndex]+1].i_y:=i_y;
      ListBox1.AddItem('{'+s_selname+'}', Sender);
      CheckBox1.Checked:=False;
      CheckBox1.Checked:=False;
      a_lb[st_tmp.uc_answerAm+1].uc_answerType:=5;
    end;
    6:
    begin
      if not CheckX(Sender, f_x, i_x) then
        Exit;
      b_identical:=False;
      for i:=1 to st_tmp.a_answerAm[ComboBox1.ItemIndex] do
        if CheckBox1.Checked=st_tmp.a_answer6[i].b_XisInt then
          if (st_tmp.a_answer6[i].i_x=i_x) and (st_tmp.a_answer6[i].f_x=f_x) then
          begin
            b_identical:=True;
            break;
          end;
      if b_identical then
      begin
        QMMainUnit.MessageDlg('Такой ответ уже есть', MB_ICONWARNING, MB_OK);
        Exit;
      end;
      if not CheckBox1.Checked then
      begin
        s_tmp:=FloatToStr(f_x);
        if (pos(',', s_tmp)=0) and (pos('.', s_tmp)=0) then
          s_tmp:=s_tmp+',0';
        s_selname:=s_selname+s_tmp;
        st_tmp.a_answer6[st_tmp.a_answerAm[ComboBox1.ItemIndex]+1].b_XisInt:=False;
        st_tmp.a_answer6[st_tmp.a_answerAm[ComboBox1.ItemIndex]+1].f_x:=f_x;
      end
      else
      begin
        s_selname:=s_selname+IntToStr(i_x);
        st_tmp.a_answer6[st_tmp.a_answerAm[ComboBox1.ItemIndex]+1].b_XisInt:=True;
        st_tmp.a_answer6[st_tmp.a_answerAm[ComboBox1.ItemIndex]+1].i_x:=i_x;
      end;
      ListBox1.AddItem(s_selname, Sender);
      a_lb[st_tmp.uc_answerAm+1].uc_answerType:=6;
    end;
    7:
    begin
      b_identical:=False;
      for i:=1 to st_tmp.a_answerAm[ComboBox1.ItemIndex] do
        if st_tmp.a_answer7[i].s=Edit1.Text then
        begin
          b_identical:=True;
          break;
        end;
      if b_identical then
      begin
        MessageDlg('Такой ответ уже есть', MB_ICONWARNING, MB_OK);
        Exit;
      end;
      st_tmp.a_answer7[st_tmp.a_answerAm[ComboBox1.ItemIndex]+1].s:=Edit1.Text;
      if length(Edit1.Text)<=16 then
        ListBox1.AddItem(''''+Copy(Edit1.Text, 1, 16) +'''', Sender)
      else
        ListBox1.AddItem(''''+Copy(Edit1.Text, 1, 16) +'...''', Sender);
      a_lb[st_tmp.uc_answerAm+1].uc_answerType:=7;
    end;
  end;
  a_lb[st_tmp.uc_answerAm+1].uc_number:=st_tmp.a_answerAm[ComboBox1.ItemIndex]+1;
  inc(st_tmp.uc_answerAm);
  inc(st_tmp.a_answerAm[ComboBox1.ItemIndex]);
  ListBox1.ItemIndex:=-1;
end;

procedure TForm2.FormShow(Sender: TObject);
Var
  i, j: Integer;
  s_result, s_tmp: String;
begin
  ListBox1.Clear;
  st_tmp:=v_curQuest^;
  if st_tmp.b_exists then
  begin
    Label1.Caption:='';
    Memo1.Text:=st_tmp.s_questText;
    if st_tmp.b_link then
      RadioGroup1.ItemIndex:=0
    else
      RadioGroup1.ItemIndex:=1;

    j:=0;
    for i:=1 to st_tmp.a_answerAm[1] do
    begin
      s_result:='[';
      if st_tmp.a_answer1[i].b_XisInt then
        s_result:=s_result+IntToStr(st_tmp.a_answer1[i].i_x)
      else
      begin
        s_tmp:=FloatToStr(st_tmp.a_answer1[i].f_x);
        if (pos(',', s_tmp)=0) and (pos('.', s_tmp)=0) then
          s_tmp:=s_tmp+',0';
        s_result:=s_result+s_tmp;
      end;
      s_result:=s_result+'; ';
      if st_tmp.a_answer1[i].b_YisInt then
        s_result:=s_result+IntToStr(st_tmp.a_answer1[i].i_y)
      else
      begin
        s_tmp:=FloatToStr(st_tmp.a_answer1[i].f_y);
        if (pos(',', s_tmp)=0) and (pos('.', s_tmp)=0) then
          s_tmp:=s_tmp+',0';
        s_result:=s_result+s_tmp;
      end;
      s_result:=s_result+']';
      inc(j);
      a_lb[j].uc_answerType:=1;
      a_lb[j].uc_number:=i;
      ListBox1.AddItem(s_result, Sender);
    end;

    for i:=1 to st_tmp.a_answerAm[2] do
    begin
      s_result:='(';
      if st_tmp.a_answer2[i].b_XisInt then
        s_result:=s_result+IntToStr(st_tmp.a_answer2[i].i_x)
      else
      begin
        s_tmp:=FloatToStr(st_tmp.a_answer2[i].f_x);
        if (pos(',', s_tmp)=0) and (pos('.', s_tmp)=0) then
          s_tmp:=s_tmp+',0';
        s_result:=s_result+s_tmp;
      end;
      s_result:=s_result+'; ';
      if st_tmp.a_answer2[i].b_YisInt then
        s_result:=s_result+IntToStr(st_tmp.a_answer2[i].i_y)
      else
      begin
        s_tmp:=FloatToStr(st_tmp.a_answer2[i].f_y);
        if (pos(',', s_tmp)=0) and (pos('.', s_tmp)=0) then
          s_tmp:=s_tmp+',0';
        s_result:=s_result+s_tmp;
      end;
      s_result:=s_result+')';
      inc(j);
      a_lb[j].uc_answerType:=2;
      a_lb[j].uc_number:=i;
      ListBox1.AddItem(s_result, Sender);
    end;

    for i:=1 to st_tmp.a_answerAm[3] do
    begin
      s_result:='(';
      if st_tmp.a_answer3[i].b_XisInt then
        s_result:=s_result+IntToStr(st_tmp.a_answer3[i].i_x)
      else
      begin
        s_tmp:=FloatToStr(st_tmp.a_answer3[i].f_x);
        if (pos(',', s_tmp)=0) and (pos('.', s_tmp)=0) then
          s_tmp:=s_tmp+',0';
        s_result:=s_result+s_tmp;
      end;
      s_result:=s_result+'; +)';
      inc(j);
      a_lb[j].uc_answerType:=3;
      a_lb[j].uc_number:=i;
      ListBox1.AddItem(s_result, Sender);
    end;

    for i:=1 to st_tmp.a_answerAm[4] do
    begin
      s_result:='(-; ';
      if st_tmp.a_answer4[i].b_XisInt then
        s_result:=s_result+IntToStr(st_tmp.a_answer4[i].i_x)
      else
      begin
        s_tmp:=FloatToStr(st_tmp.a_answer4[i].f_x);
        if (pos(',', s_tmp)=0) and (pos('.', s_tmp)=0) then
          s_tmp:=s_tmp+',0';
        s_result:=s_result+s_tmp;
      end;
      s_result:=s_result+')';
      inc(j);
      a_lb[j].uc_answerType:=4;
      a_lb[j].uc_number:=i;
      ListBox1.AddItem(s_result, Sender);
    end;

    for i:=1 to st_tmp.a_answerAm[5] do
    begin
      s_result:='{';
      s_result:=s_result+IntToStr(st_tmp.a_answer5[i].i_x)+'; ';
      s_result:=s_result+IntToStr(st_tmp.a_answer5[i].i_y)+'}';
      inc(j);
      a_lb[j].uc_answerType:=5;
      a_lb[j].uc_number:=i;
      ListBox1.AddItem(s_result, Sender);
    end;

    for i:=1 to st_tmp.a_answerAm[6] do
    begin
      s_result:='';
      if st_tmp.a_answer6[i].b_XisInt then
        s_result:=s_result+IntToStr(st_tmp.a_answer6[i].i_x)
      else
      begin
        s_tmp:=FloatToStr(st_tmp.a_answer6[i].f_x);
        if (pos(',', s_tmp)=0) and (pos('.', s_tmp)=0) then
          s_tmp:=s_tmp+',0';
        s_result:=s_result+s_tmp;
      end;
      inc(j);
      a_lb[j].uc_answerType:=6;
      a_lb[j].uc_number:=i;
      ListBox1.AddItem(s_result, Sender);
    end;

    for i:=1 to st_tmp.a_answerAm[7] do
    begin
      if length(s_result)<=8 then
        s_result:=''''+st_tmp.a_answer7[i].s+''''
      else
        s_result:=''''+Copy(st_tmp.a_answer7[i].s, 1, 8)+'...'+'''';
      inc(j);
      a_lb[j].uc_answerType:=7;
      a_lb[j].uc_number:=i;
      ListBox1.AddItem(s_result, Sender);
    end;

  end
  else
  begin
    Label1.Caption:='Вопрос: ранее не редактировался';
    Memo1.Text:='';
  end;
  ComboBox1.ItemIndex:=0;
  Edit1.Visible:=False;
  Edit2.Visible:=False;
  Edit1.Text:='';
  Edit2.Text:='';
  CheckBox1.Checked:=False;
  CheckBox1.Visible:=False;
  CheckBox2.Checked:=False;
  CheckBox2.Visible:=False;
  if st_tmp.b_link then
    RadioGroup1.ItemIndex:=0
  else
    RadioGroup1.ItemIndex:=1;
  
  EditPer.Text:=FloatToStr(st_tmp.f_per);
end;

procedure TForm2.ListBox1Click(Sender: TObject);
Var
  uc_number: Byte;
begin
  ComboBox1.ItemIndex:=a_lb[ListBox1.ItemIndex+1].uc_answerType;
  ComboBox_Change(Sender);
  uc_number:=a_lb[ListBox1.ItemIndex+1].uc_number;
  uc_itemIndex:=ListBox1.ItemIndex;
  case ComboBox1.ItemIndex of
    1:
    begin
      if st_tmp.a_answer1[uc_number].b_XisInt then
      begin
        CheckBox1.Checked:=True;
        Edit1.Text:=IntToStr(st_tmp.a_answer1[uc_number].i_x);
      end
      else
      begin
        CheckBox1.Checked:=False;
        Edit1.Text:=FloatToStr(st_tmp.a_answer1[uc_number].f_x);
      end;

      if st_tmp.a_answer1[uc_number].b_YisInt then
      begin
        CheckBox2.Checked:=True;
        Edit2.Text:=IntToStr(st_tmp.a_answer1[uc_number].i_y);
      end
      else
      begin
        CheckBox2.Checked:=False;
        Edit2.Text:=FloatToStr(st_tmp.a_answer1[uc_number].f_y);
      end;
    end;
    2:
    begin
      if st_tmp.a_answer2[uc_number].b_XisInt then
      begin
        CheckBox1.Checked:=True;
        Edit1.Text:=IntToStr(st_tmp.a_answer2[uc_number].i_x);
      end
      else
      begin
        CheckBox1.Checked:=False;
        Edit1.Text:=FloatToStr(st_tmp.a_answer2[uc_number].f_x);
      end;

      if st_tmp.a_answer2[uc_number].b_YisInt then
      begin
        CheckBox2.Checked:=True;
        Edit2.Text:=IntToStr(st_tmp.a_answer2[uc_number].i_y);
      end
      else
      begin
        CheckBox2.Checked:=False;
        Edit2.Text:=FloatToStr(st_tmp.a_answer2[uc_number].f_y);
      end;
    end;
    3:
    begin
      if st_tmp.a_answer3[uc_number].b_XisInt then
      begin
        CheckBox1.Checked:=True;
        Edit1.Text:=IntToStr(st_tmp.a_answer3[uc_number].i_x);
      end
      else
      begin
        CheckBox1.Checked:=False;
        Edit1.Text:=FloatToStr(st_tmp.a_answer3[uc_number].f_x);
      end;
    end;
    4:
    begin
      if st_tmp.a_answer4[uc_number].b_XisInt then
      begin
        CheckBox1.Checked:=True;
        Edit1.Text:=IntToStr(st_tmp.a_answer4[uc_number].i_x);
      end
      else
      begin
        CheckBox1.Checked:=False;
        Edit1.Text:=FloatToStr(st_tmp.a_answer4[uc_number].f_x);
      end;
    end;
    5:
    begin
      Edit1.Text:=IntToStr(st_tmp.a_answer5[uc_number].i_x);
      Edit2.Text:=IntToStr(st_tmp.a_answer5[uc_number].i_y);
    end;
    6:
    begin
      if st_tmp.a_answer6[uc_number].b_XisInt then
      begin
        CheckBox1.Checked:=True;
        Edit1.Text:=IntToStr(st_tmp.a_answer6[uc_number].i_x);
      end
      else
      begin
        CheckBox1.Checked:=False;
        Edit1.Text:=FloatToStr(st_tmp.a_answer6[uc_number].f_x);
      end;
    end;
    7:
    begin
      Edit1.Text:=st_tmp.a_answer7[uc_number].s;
    end;
  end;
end;

procedure TForm2.ComboBox_Change(Sender: TObject);
begin
  ComboBox1Change(Sender);
end;

procedure TForm2.Button2Click(Sender: TObject);
Var
  uc_number, i, uc_answerType: Byte;
begin
  if (ListBox1.Count=0) or (ListBox1.ItemIndex<0) then
    Exit;
  uc_number:=a_lb[ListBox1.ItemIndex+1].uc_number;
  uc_itemIndex:=ListBox1.ItemIndex;
  case ComboBox1.ItemIndex of
    1:
    begin
      for i:=uc_number to length(st_tmp.a_answer1)-1 do
        st_tmp.a_answer1[i]:=st_tmp.a_answer1[i+1];
    end;
    2:
    begin
      for i:=uc_number to length(st_tmp.a_answer2)-1 do
        st_tmp.a_answer2[i]:=st_tmp.a_answer2[i+1];
    end;
    3:
    begin
      for i:=uc_number to length(st_tmp.a_answer3)-1 do
        st_tmp.a_answer3[i]:=st_tmp.a_answer3[i+1];
    end;
    4:
    begin
      for i:=uc_number to length(st_tmp.a_answer4)-1 do
        st_tmp.a_answer4[i]:=st_tmp.a_answer4[i+1];
    end;
    5:
    begin
      for i:=uc_number to length(st_tmp.a_answer5)-1 do
        st_tmp.a_answer5[i]:=st_tmp.a_answer5[i+1];
    end;
    6:
    begin
      for i:=uc_number to length(st_tmp.a_answer6)-1 do
        st_tmp.a_answer6[i]:=st_tmp.a_answer6[i+1];
    end;
    7:
    begin
      for i:=uc_number to length(st_tmp.a_answer7)-1 do
        st_tmp.a_answer7[i]:=st_tmp.a_answer7[i+1];
    end;
  end;
  dec(st_tmp.uc_answerAm);
  dec(st_tmp.a_answerAm[ComboBox1.ItemIndex]);
  uc_answerType:=a_lb[ListBox1.ItemIndex+1].uc_answerType;
  for i:=uc_itemIndex+1 to length(a_lb)-1 do
  begin
    a_lb[i]:=a_lb[i+1];
    if a_lb[i].uc_answerType=uc_answerType then
      dec(a_lb[i].uc_number);
  end;
  ListBox1.DeleteSelected;
  if ListBox1.Count=0 then
  begin
    ListBox1.ItemIndex:=-1;
    ComboBox1.ItemIndex:=0;
    ComboBox_Change(Sender);
    Exit;
  end;
  if uc_itemIndex=ListBox1.Count then
    ListBox1.ItemIndex:=ListBox1.Count-1;
  ComboBox1.ItemIndex:=a_lb[uc_itemIndex+1].uc_answerType;
  ComboBox_Change(Sender);
end;

procedure TForm2.EditPerKeyPress(Sender: TObject; var Key: Char);
Var
  i: Byte;
begin
  if ((Ord(Key)<48) or (Ord(Key)>57)) and (Key<>',') and (Ord(Key)<>8) then
  begin
    QMMainUnit.MessageDlg('Это не цифра!', MB_ICONWARNING, MB_OK);
    Key:=#0;
  end
  else if Key=',' then
  begin
    for i:=1 to Length(EditPer.Text) do
      if (EditPer.Text[i]=',') or (EditPer.Text[i]='.') then
      begin
        Key:=#0;
        break;
      end;
  end;
end;

end.
