unit TSettUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, TMainUnit, ExtCtrls;

type
  TForm2 = class(TForm)
    Memo1: TMemo;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    ListBox1: TListBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    RadioGroup1: TRadioGroup;
    Label6: TLabel;
    EditPer: TEdit;
    CheckBoxCritical: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormShow(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  Select = record
    uc_answerType, uc_number: Byte;
  end;
var
  Form2: TForm2;
  st_tmp: Question;
  a_lb: array [1..35] of Select;
  uc_itemIndex: Integer;

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
      TMainUnit.MessageDlg('Неккоректные данные в поле X!', MB_ICONWARNING, MB_OK);
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
      TMainUnit.MessageDlg('Неккоректные данные в поле X!', MB_ICONWARNING, MB_OK);
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
      TMainUnit.MessageDlg('Неккоректные данные в поле Y!', MB_ICONWARNING, MB_OK);
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
      TMainUnit.MessageDlg('Неккоректные данные в поле Y!', MB_ICONWARNING, MB_OK);
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
  i: Byte;
begin
  uc_itemIndex:=ListBox1.ItemIndex;
  ListBox1.ItemIndex:=0;
  ListBox1Click(Sender);
  for i:=1 to length(a_lb) do
  begin
    a_lb[i].uc_number:=0;
    a_lb[i].uc_answerType:=0;
  end;
end;

procedure TForm2.FormShow(Sender: TObject);

Var
  i, j: Integer;
  s_result, s_tmp: String;

procedure inline1(i1: Integer);
begin
  a_lb[j].uc_answerType:=i1;
  a_lb[j].uc_number:=i;
  ListBox1.AddItem(s_result, Sender);
end;

begin
  uc_itemIndex:=0;
  Edit1.Text:='0';
  Edit2.Text:='0';
  ListBox1.Clear;
  st_tmp:=v_readQuest^;
  Label1.Caption:='';
  Memo1.Text:=st_tmp.s_questText;
  if st_tmp.b_link then
    RadioGroup1.ItemIndex:=0
  else
    RadioGroup1.ItemIndex:=1;
  CheckBoxCritical.Checked:=st_tmp.b_critical;
  j:=0;
  for i:=1 to st_tmp.a_answerAm[1] do
  begin
    s_result:='[';
    if not v_readQuest.a_answer1[i].b_XisInt then
    begin
      s_tmp:=FloatToStr(v_wrQuest.a_answer1[i].f_x);
      if (pos(',', s_tmp)=0) and (pos('.', s_tmp)=0) then
        s_tmp:=s_tmp+',0';
      if j=0 then
        CheckBox1.Checked:=False;
    end
    else
    begin
      s_tmp:=IntToStr(v_wrQuest.a_answer1[i].i_x);
      if j=0 then
        CheckBox1.Checked:=True;
    end;
    s_result:=s_result+s_tmp+'; ';
    if j=0 then
      Edit1.Text:=s_tmp;
    if not v_readQuest.a_answer1[i].b_YisInt then
    begin
      s_tmp:=FloatToStr(v_wrQuest.a_answer1[i].f_y);
      if (pos(',', s_tmp)=0) and (pos('.', s_tmp)=0) then
        s_tmp:=s_tmp+',0';
      if j=0 then
        CheckBox2.Checked:=False;
    end
    else
    begin
      s_tmp:=IntToStr(v_wrQuest.a_answer1[i].i_y);
      if j=0 then
        CheckBox2.Checked:=True;
    end;
    if j=0 then
      Edit2.Text:=s_tmp;
    s_result:=s_result+s_tmp+']';
    inc(j);
    inline1(1);
  end;

  for i:=1 to st_tmp.a_answerAm[2] do
  begin
    s_result:='(';
    if not v_readQuest.a_answer2[i].b_XisInt then
    begin
      s_tmp:=FloatToStr(v_wrQuest.a_answer2[i].f_x);
      if (pos(',', s_tmp)=0) and (pos('.', s_tmp)=0) then
        s_tmp:=s_tmp+',0';
      if j=0 then
        CheckBox1.Checked:=False;
    end
    else
    begin
      s_tmp:=IntToStr(v_wrQuest.a_answer2[i].i_x);
      if j=0 then
        CheckBox1.Checked:=True;
    end;
    if j=0 then
      Edit1.Text:=s_tmp;
    s_result:=s_result+s_tmp+'; ';
    if not v_readQuest.a_answer2[i].b_YisInt then
    begin
      s_tmp:=FloatToStr(v_wrQuest.a_answer2[i].f_y);
      if (pos(',', s_tmp)=0) and (pos('.', s_tmp)=0) then
        s_tmp:=s_tmp+',0';
      if j=0 then
        CheckBox2.Checked:=False;
    end
    else
    begin
      s_tmp:=IntToStr(v_wrQuest.a_answer2[i].i_y);
      if j=0 then
        CheckBox2.Checked:=True;
    end;
    if j=0 then
      Edit2.Text:=s_tmp;
    s_result:=s_result+s_tmp+')';
    inc(j);
    inline1(2);
  end;

  for i:=1 to st_tmp.a_answerAm[3] do
  begin
    s_result:='(';
    if not v_readQuest.a_answer3[i].b_XisInt then
    begin
      s_tmp:=FloatToStr(v_wrQuest.a_answer3[i].f_x);
      if (pos(',', s_tmp)=0) and (pos('.', s_tmp)=0) then
        s_tmp:=s_tmp+',0';
      if j=0 then
        CheckBox1.Checked:=False;
    end
    else
    begin
      s_tmp:=IntToStr(v_wrQuest.a_answer3[i].i_x);
      if j=0 then
        CheckBox1.Checked:=True;
    end;
    if j=0 then
      Edit1.Text:=s_tmp;
    s_result:=s_result+s_tmp+'; +)';
    inc(j);
    inline1(3);
  end;

  for i:=1 to st_tmp.a_answerAm[4] do
  begin
    s_result:='(-; ';
    if not v_readQuest.a_answer4[i].b_XisInt then
    begin
      s_tmp:=FloatToStr(v_wrQuest.a_answer4[i].f_x);
      if (pos(',', s_tmp)=0) and (pos('.', s_tmp)=0) then
        s_tmp:=s_tmp+',0';
      if j=0 then
        CheckBox1.Checked:=False;
    end
    else
    begin
      s_tmp:=IntToStr(v_wrQuest.a_answer4[i].i_x);
      if j=0 then
        CheckBox1.Checked:=True;
    end;
    if j=0 then
      Edit1.Text:=s_tmp;
    s_result:=s_result+s_tmp+')';
    inc(j);
    inline1(4);
  end;

  for i:=1 to st_tmp.a_answerAm[5] do
  begin
    s_result:='';
    s_result:='{'+IntToStr(v_wrQuest.a_answer5[i].i_x)+'; '+IntToStr(v_wrQuest.a_answer5[i].i_y)+'}';
    if j=0 then
    begin
      Edit1.Text:=IntToStr(v_wrQuest.a_answer5[i].i_x);
      Edit2.Text:=IntToStr(v_wrQuest.a_answer5[i].i_y);
      if j=0 then
      begin
        CheckBox1.Checked:=True;
        CheckBox2.Checked:=True;
      end;
    end;
    inc(j);
    inline1(5);
  end;

  for i:=1 to st_tmp.a_answerAm[6] do
  begin
    s_result:='';
    if not v_readQuest.a_answer6[i].b_XisInt then
    begin
      s_tmp:=FloatToStr(v_wrQuest.a_answer6[i].f_x);
      if (pos(',', s_tmp)=0) and (pos('.', s_tmp)=0) then
        s_tmp:=s_tmp+',0';
      if j=0 then
        CheckBox1.Checked:=False;
    end
    else
    begin
      s_tmp:=IntToStr(v_wrQuest.a_answer6[i].i_x);
      if j=0 then
        CheckBox1.Checked:=True;
    end;
    if j=0 then
      Edit1.Text:=s_tmp;
    s_result:=s_result+s_tmp;
    inc(j);
    inline1(6);
  end;

  for i:=1 to st_tmp.a_answerAm[7] do
  begin
    s_result:=v_wrQuest.a_answer7[i].s;
    if j=0 then
      Edit1.Text:=s_result;
    s_result:=''''+s_result+'''';
    inc(j);
    inline1(7);
  end;

  Edit1.Visible:=False;
  Edit2.Visible:=False;
  CheckBox1.Visible:=False;
  CheckBox2.Visible:=False;
  if st_tmp.b_link then
    RadioGroup1.ItemIndex:=0
  else
    RadioGroup1.ItemIndex:=1;
  CheckBoxCritical.Checked:=st_tmp.b_critical;
  EditPer.Text:=FloatToStr(st_tmp.f_per);
end;

procedure TForm2.ListBox1Click(Sender: TObject);
Var
  f_x, f_y: Real;
  i_x, i_y, i, j: Integer;
  s_selname, s_tmp: String;
  uc_number: Byte;
begin
  f_x:=0;
  f_y:=0;
  i_x:=0;
  i_y:=0;
  s_selname:='';
  uc_number:=a_lb[uc_itemIndex+1].uc_number;

  Case a_lb[uc_itemIndex+1].uc_answerType of
    1:
    begin
      if not CheckX(Sender, f_x, i_x) then
        Exit;
      if not CheckY(Sender, f_y, i_y) then
        Exit;

      if not v_readQuest.a_answer1[uc_number].b_XisInt then
      begin
        s_tmp:=FloatToStr(f_x);
        if (pos(',', s_tmp)=0) and (pos('.', s_tmp)=0) then
          s_tmp:=s_tmp+',0';
        s_selname:=s_selname+s_tmp;
        v_wrQuest.a_answer1[uc_number].f_x:=f_x;
      end
      else
      begin
        s_selname:=s_selname+IntToStr(i_x);
        v_wrQuest.a_answer1[uc_number].i_x:=i_x;
      end;
      s_selname:=s_selname+'; ';
      if not v_readQuest.a_answer1[uc_number].b_YisInt then
      begin
        s_tmp:=FloatToStr(f_y);
        if (pos(',', s_tmp)=0) and (pos('.', s_tmp)=0) then
          s_tmp:=s_tmp+',0';
        s_selname:=s_selname+s_tmp;
        v_wrQuest.a_answer1[uc_number].f_y:=f_y;
      end
      else
      begin
        s_selname:=s_selname+IntToStr(i_y);
        v_wrQuest.a_answer1[uc_number].i_y:=i_y;
      end;
      s_selname:='['+s_selname+']';
      ListBox1.Items[uc_itemIndex]:=s_selname;
      a_lb[uc_itemIndex+1].uc_answerType:=1;
    end;
    2:
    begin
      if not CheckX(Sender, f_x, i_x) then
        Exit;
      if not CheckY(Sender, f_y, i_y) then
        Exit;
      if not v_readQuest.a_answer2[uc_number].b_XisInt then
      begin
        s_tmp:=FloatToStr(f_x);
        if (pos(',', s_tmp)=0) and (pos('.', s_tmp)=0) then
          s_tmp:=s_tmp+',0';
        s_selname:=s_selname+s_tmp;
        v_wrQuest.a_answer2[uc_number].f_x:=f_x;
      end
      else
      begin
        s_selname:=s_selname+IntToStr(i_x);
        v_wrQuest.a_answer2[uc_number].i_x:=i_x;
      end;
      s_selname:=s_selname+'; ';
      if not v_readQuest.a_answer2[uc_number].b_YisInt then
      begin
        s_tmp:=FloatToStr(f_y);
        if (pos(',', s_tmp)=0) and (pos('.', s_tmp)=0) then
          s_tmp:=s_tmp+',0';
        s_selname:=s_selname+s_tmp;
        v_wrQuest.a_answer2[uc_number].f_y:=f_y;
      end
      else
      begin
        s_selname:=s_selname+IntToStr(i_y);
        v_wrQuest.a_answer2[uc_number].i_y:=i_y;
      end;
      s_selname:='('+s_selname+')';
      ListBox1.Items[uc_itemIndex]:=s_selname;
      a_lb[uc_itemIndex+1].uc_answerType:=2;
    end;
    3:
    begin
      if not CheckX(Sender, f_x, i_x) then
        Exit;
      if not v_readQuest.a_answer3[uc_number].b_XisInt then
      begin
        s_tmp:=FloatToStr(f_x);
        if (pos(',', s_tmp)=0) and (pos('.', s_tmp)=0) then
          s_tmp:=s_tmp+',0';
        s_selname:=s_selname+s_tmp;
        v_wrQuest.a_answer3[uc_number].f_x:=f_x;
      end
      else
      begin
        s_selname:=s_selname+IntToStr(i_x);
        v_wrQuest.a_answer3[uc_number].i_x:=i_x;
      end;
      s_selname:='('+s_selname+'; +)';
      ListBox1.Items[uc_itemIndex]:=s_selname;
      a_lb[uc_itemIndex+1].uc_answerType:=3;
    end;
    4:
    begin
      if not CheckX(Sender, f_x, i_x) then
        Exit;
      if not v_readQuest.a_answer4[uc_number].b_XisInt then
      begin
        s_tmp:=FloatToStr(f_x);
        if (pos(',', s_tmp)=0) and (pos('.', s_tmp)=0) then
          s_tmp:=s_tmp+',0';
        s_selname:=s_selname+s_tmp;
        v_wrQuest.a_answer4[uc_number].f_x:=f_x;
      end
      else
      begin
        s_selname:=s_selname+IntToStr(i_x);
        v_wrQuest.a_answer4[uc_number].i_x:=i_x;
      end;
      s_selname:='(-; '+s_selname+')';
      ListBox1.Items[uc_itemIndex]:=s_selname;
      a_lb[uc_itemIndex+1].uc_answerType:=4;
    end;
    5:
    begin
      CheckBox1.Checked:=True;
      CheckBox2.Checked:=True;
      if not CheckX(Sender, f_x, i_x) then
        Exit;
      if not CheckY(Sender, f_y, i_y) then
        Exit;
      s_selname:=s_selname+IntToStr(i_x);
      v_wrQuest.a_answer5[uc_number].i_x:=i_x;
      s_selname:=s_selname+'; ';
      s_selname:=s_selname+IntToStr(i_y);
      v_wrQuest.a_answer5[uc_number].i_y:=i_y;
      s_selname:='{'+s_selname+'}';
      ListBox1.Items[uc_itemIndex]:=s_selname;
      a_lb[uc_itemIndex+1].uc_answerType:=5;
    end;
    6:
    begin
      if not CheckX(Sender, f_x, i_x) then
        Exit;
      if not v_readQuest.a_answer6[uc_number].b_XisInt then
      begin
        s_tmp:=FloatToStr(f_x);
        if (pos(',', s_tmp)=0) and (pos('.', s_tmp)=0) then
          s_tmp:=s_tmp+',0';
        s_selname:=s_selname+s_tmp;
        v_wrQuest.a_answer6[uc_number].f_x:=f_x;
      end
      else
      begin
        s_selname:=s_selname+IntToStr(i_x);
        v_wrQuest.a_answer6[uc_number].i_x:=i_x;
      end;
      ListBox1.Items[uc_itemIndex]:=s_selname;
      a_lb[uc_itemIndex+1].uc_answerType:=6;
    end;
    7:
    begin
      v_wrQuest.a_answer7[uc_number].s:=Edit1.Text;
      if length(Edit1.Text)<=16 then
        ListBox1.Items[uc_itemIndex]:=''''+Copy(Edit1.Text, 1, 16) +''''
      else
        ListBox1.Items[uc_itemIndex]:=''''+Copy(Edit1.Text, 1, 16) +'...''';
      a_lb[uc_itemIndex+1].uc_answerType:=7;
    end;
  end;

  uc_number:=a_lb[ListBox1.ItemIndex+1].uc_number;
  uc_itemIndex:=ListBox1.ItemIndex;

  case a_lb[ListBox1.ItemIndex+1].uc_answerType of
    1:
    begin
      if v_readQuest.a_answer1[uc_number].b_XisInt then
      begin
        CheckBox1.Checked:=True;
        Edit1.Text:=IntToStr(v_wrQuest.a_answer1[uc_number].i_x);
        end
      else
      begin
        CheckBox1.Checked:=False;
        Edit1.Text:=FloatToStr(v_wrQuest.a_answer1[uc_number].f_x);
      end;

      if v_readQuest.a_answer1[uc_number].b_YisInt then
      begin
        CheckBox2.Checked:=True;
        Edit2.Text:=IntToStr(v_wrQuest.a_answer1[uc_number].i_y);
      end
      else
      begin
        CheckBox2.Checked:=False;
        Edit2.Text:=FloatToStr(v_wrQuest.a_answer1[uc_number].f_y);
      end;
      Edit1.Visible:=True;
      Edit2.Visible:=True;
      CheckBox1.Visible:=True;
      CheckBox2.Visible:=True;
    end;
    2:
    begin
      if v_readQuest.a_answer2[uc_number].b_XisInt then
      begin
        CheckBox1.Checked:=True;
        Edit1.Text:=IntToStr(v_wrQuest.a_answer2[uc_number].i_x);
      end
      else
      begin
        CheckBox1.Checked:=False;
        Edit1.Text:=FloatToStr(v_wrQuest.a_answer2[uc_number].f_x);
      end;

      if v_readQuest.a_answer2[uc_number].b_YisInt then
      begin
        CheckBox2.Checked:=True;
        Edit2.Text:=IntToStr(v_wrQuest.a_answer2[uc_number].i_y);
      end
      else
      begin
        CheckBox2.Checked:=False;
        Edit2.Text:=FloatToStr(v_wrQuest.a_answer2[uc_number].f_y);
      end;
      Edit1.Visible:=True;
      Edit2.Visible:=True;
      CheckBox1.Visible:=True;
      CheckBox2.Visible:=True;
    end;
    3:
    begin
      if v_readQuest.a_answer3[uc_number].b_XisInt then
      begin
        CheckBox1.Checked:=True;
        Edit1.Text:=IntToStr(v_wrQuest.a_answer3[uc_number].i_x);
      end
      else
      begin
        CheckBox1.Checked:=False;
        Edit1.Text:=FloatToStr(v_wrQuest.a_answer3[uc_number].f_x);
      end;
      Edit1.Visible:=True;
      Edit2.Visible:=False;
      CheckBox1.Visible:=True;
      CheckBox2.Visible:=False;
    end;
    4:
    begin
      if v_readQuest.a_answer4[uc_number].b_XisInt then
      begin
        CheckBox1.Checked:=True;
        Edit1.Text:=IntToStr(v_wrQuest.a_answer4[uc_number].i_x);
      end
      else
      begin
        CheckBox1.Checked:=False;
        Edit1.Text:=FloatToStr(v_wrQuest.a_answer4[uc_number].f_x);
      end;
      Edit1.Visible:=True;
      Edit2.Visible:=False;
      CheckBox1.Visible:=True;
      CheckBox2.Visible:=False;
    end;
    5:
    begin
      Edit1.Text:=IntToStr(v_wrQuest.a_answer5[uc_number].i_x);
      Edit2.Text:=IntToStr(v_wrQuest.a_answer5[uc_number].i_y);
      Edit1.Visible:=True;
      Edit2.Visible:=True;
      CheckBox1.Visible:=False;
      CheckBox2.Visible:=False;
    end;
    6:
    begin
      if v_readQuest.a_answer6[uc_number].b_XisInt then
      begin
        CheckBox1.Checked:=True;
        Edit1.Text:=IntToStr(v_wrQuest.a_answer6[uc_number].i_x);
      end
      else
      begin
        CheckBox1.Checked:=False;
        Edit1.Text:=FloatToStr(v_wrQuest.a_answer6[uc_number].f_x);
      end;
      Edit1.Visible:=True;
      Edit2.Visible:=False;
      CheckBox1.Visible:=True;
      CheckBox2.Visible:=False;
    end;
    7:
    begin
      Edit1.Text:=v_wrQuest.a_answer7[uc_number].s;
      Edit1.Visible:=True;
      Edit2.Visible:=False;
      CheckBox1.Visible:=False;
      CheckBox2.Visible:=False;
    end;
  end;
end;

end.
