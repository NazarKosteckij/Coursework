unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Unit2, Vcl.Menus, Vcl.ExtCtrls,
  Vcl.ToolWin, Vcl.Grids, Vcl.Samples.Spin;

type
  TForm1 = class(TForm)
    ListBox1: TListBox;
    edName: TEdit;
    StatusBar1: TStatusBar;
    MainMenu: TMainMenu;
    FileMenu: TMenuItem;
    FileNew: TMenuItem;
    FileOpen: TMenuItem;
    FileSave: TMenuItem;
    FileSaveAs: TMenuItem;
    N1: TMenuItem;
    FileExit: TMenuItem;
    BaseMenu: TMenuItem;
    Add1: TMenuItem;
    Modify1: TMenuItem;
    ClearFields1: TMenuItem;
    Delete1: TMenuItem;
    Find1: TMenuItem;
    N2: TMenuItem;
    SortAdr: TMenuItem;
    HelpMenu: TMenuItem;
    HelpAbout: TMenuItem;
    SpeedBarBottom: TPanel;
    Button1: TButton;
    btModify: TButton;
    Button2: TButton;
    btDelete: TButton;
    btExit: TButton;
    OpenDialog: TOpenDialog;
    Panel1: TPanel;
    edPrice: TEdit;
    GroupBox1: TGroupBox;
    cbSeller: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    SaveDialog: TSaveDialog;
    CheckBox1: TCheckBox;
    N3: TMenuItem;
    N4: TMenuItem;
    DateTimePicker1: TDateTimePicker;
    Label5: TLabel;
    Settings: TMenuItem;
    Language: TMenuItem;
    Ukranian: TMenuItem;
    English1: TMenuItem;
    Button3: TButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    StringGrid1: TStringGrid;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    RadioGroup1: TRadioGroup;
    DateTimePicker2: TDateTimePicker;
    Label6: TLabel;
    N10: TMenuItem;
    N11: TMenuItem;
    GroupBox2: TGroupBox;
    N12: TMenuItem;
    N13: TMenuItem;
    Button5: TButton;
    DateTimePicker3: TDateTimePicker;
    Label7: TLabel;
    N14: TMenuItem;
    Edit1: TEdit;
    Label8: TLabel;
    DateFilter: TCheckBox;
    NameFilter: TCheckBox;
    PriceFilter: TCheckBox;
    GroupBox3: TGroupBox;
    RadioGroup2: TRadioGroup;
    Label9: TLabel;
    GroupBox4: TGroupBox;
    Edit4: TEdit;
    Edit5: TEdit;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    PopupMenu1: TPopupMenu;
    N15: TMenuItem;
    edCount: TSpinEdit;
    LabeledEdit1: TEdit;
    procedure ListBox1Click(Sender: TObject);
    procedure btAddClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btClearClick(Sender: TObject);
    procedure FileSaveClick(Sender: TObject);
    procedure FileSaveAsClick(Sender: TObject);
    procedure FileOpenClick(Sender: TObject);
    procedure FormCanResize(Sender: TObject; var NewWidth, NewHeight: Integer;
      var Resize: Boolean);
    procedure CheckBox1Click(Sender: TObject);
    procedure SortAdrClick(Sender: TObject);
    procedure HelpAboutClick(Sender: TObject);
    procedure English1Click(Sender: TObject);
    procedure UkranianClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure N14Click(Sender: TObject);
    procedure RadioGroup2Click(Sender: TObject);
    procedure DateFilterClick(Sender: TObject);
    procedure NameFilterClick(Sender: TObject);
    procedure PriceFilterClick(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    DetailList : TDetail;
    procedure UpdateCountBase;
  end;

var
  Form1: TForm1;
  pr:Integer;

implementation
 uses Unit3;
{$R *.dfm}

procedure TForm1.btAddClick(Sender: TObject);
var
    name            : nameString;
    numerOfSelled   : numberString;
    date            : TDateTime;
    price           : priceString;
    seller          : sellerString;
    k,i,j : Integer;
    p : pointer;
begin
   date:=DateTimePicker1.Date;
   name := edName.Text;
   numerOfSelled:=edCount.Text;
   price:=edPrice.Text;
   seller:=cbSeller.Text;
   if CheckBox1.Checked=True then
    begin
      cbSeller.Items.Add(seller);
      CheckBox1.Checked:=False;
    end;
   DetailList.Add(name, numerOfSelled, date ,price,seller);
   ListBox1.Items.Add(Name+', ' + price+'грн. ('+numerOfSelled + ' штук) Продав:' + seller + ' ' + DateToStr(date));
   UpdateCountBase;
end;

procedure TForm1.btClearClick(Sender: TObject);
begin
  edName.Text:='';
  edPrice.Text:='0';
  edCount.Text:='1';
  cbSeller.Clear;
end;

procedure TForm1.Button3Click(Sender: TObject);
var P:pDetails;
pd:TDetails;
begin
if RadioGroup1.ItemIndex=1 then
  p:=DetailList.FindItem(LabeledEdit1.Text);
 if RadioGroup1.ItemIndex=0 then
 // p:=DetailList.FindItem(DateTimePicker2.Text);
 if p=nil then
  ShowMessage('Nil')
 else
  begin
  pd:=p^;
  ShowMessage(pd.name+', '+pd.numerOfSelled+' штук, '+ pd.price+'грн.');

  end;
 p:=nil;
end;

procedure TForm1.Button5Click(Sender: TObject);
var
  i,j:integer;
  Grid:TStringGrid;
begin
  i:=1;
  j:=1;

  if DateFilter.Checked then
    begin
     for I := 1 to StringGrid1.RowCount do
      begin
        if StringGrid1.Cells[4,i]=DateToStr(DateTimePicker3.DateTime) then
          begin
            StringGrid1.Cells[1,j]:=StringGrid1.Cells[1,i];
            StringGrid1.Cells[2,j]:=StringGrid1.Cells[2,i];
            StringGrid1.Cells[3,j]:=StringGrid1.Cells[3,i];
            StringGrid1.Cells[4,j]:=StringGrid1.Cells[4,i];
            StringGrid1.Cells[5,j]:=StringGrid1.Cells[5,i];
            inc(j);
          end;
      end;
      StringGrid1.RowCount:= j;
      j:=1;
    end;

  if NameFilter.Checked then
    begin
      for I := 1 to StringGrid1.RowCount do
      begin
        if StringGrid1.Cells[1,i]=Edit1.Text then
          begin
            StringGrid1.Cells[1,j]:=StringGrid1.Cells[1,i];
            StringGrid1.Cells[2,j]:=StringGrid1.Cells[2,i];
            StringGrid1.Cells[3,j]:=StringGrid1.Cells[3,i];
            StringGrid1.Cells[4,j]:=StringGrid1.Cells[4,i];
            StringGrid1.Cells[5,j]:=StringGrid1.Cells[5,i];
            inc(j);
          end;
      end;
      StringGrid1.RowCount:= j;
      j:=1;
    end;

  if PriceFilter.Checked then
   begin
    case  RadioGroup2.ItemIndex of
    0: for I := 1 to StringGrid1.RowCount do
        begin
          if (strtoint(StringGrid1.Cells[3,i])>=strtoint(Edit5.Text))and(strtoint(StringGrid1.Cells[3,i])<=strtoint(Edit4.Text)) then
            begin
              StringGrid1.Cells[1,j]:=StringGrid1.Cells[1,i];
              StringGrid1.Cells[2,j]:=StringGrid1.Cells[2,i];
              StringGrid1.Cells[3,j]:=StringGrid1.Cells[3,i];
              StringGrid1.Cells[4,j]:=StringGrid1.Cells[4,i];
              StringGrid1.Cells[5,j]:=StringGrid1.Cells[5,i];
              inc(j);
            end;
        end;


    1:   for I := 1 to StringGrid1.RowCount-1 do
        begin

          ShowMessage('@'+StringGrid1.Cells[3,i]+' '+Edit5.Text);
          if strtoint(StringGrid1.Cells[3,i])>=strtoint(Edit5.Text) then
            begin
              StringGrid1.Cells[1,j]:=StringGrid1.Cells[1,i];
              StringGrid1.Cells[2,j]:=StringGrid1.Cells[2,i];
              StringGrid1.Cells[3,j]:=StringGrid1.Cells[3,i];
              StringGrid1.Cells[4,j]:=StringGrid1.Cells[4,i];
              StringGrid1.Cells[5,j]:=StringGrid1.Cells[5,i];
              inc(j);
            end;
        end;

    2:  for I := 1 to StringGrid1.RowCount do
        begin
          if strtoint(StringGrid1.Cells[3,i])<=strtoint(Edit5.Text) then
            begin
              StringGrid1.Cells[1,j]:=StringGrid1.Cells[1,i];
              StringGrid1.Cells[2,j]:=StringGrid1.Cells[2,i];
              StringGrid1.Cells[3,j]:=StringGrid1.Cells[3,i];
              StringGrid1.Cells[4,j]:=StringGrid1.Cells[4,i];
              StringGrid1.Cells[5,j]:=StringGrid1.Cells[5,i];
              inc(j);
            end;
        end;

    end;

      StringGrid1.RowCount:= j;
      j:=1;
   end;


     StringGrid1.Cells[0,0]:='№';
     StringGrid1.Cells[1,0]:='Ім"я';
     StringGrid1.Cells[2,0]:='Кількісь';
     StringGrid1.Cells[3,0]:='Ціна';
     StringGrid1.Cells[4,0]:='Дата';
     StringGrid1.Cells[5,0]:='Продавець';
    {for I := j to StringGrid1.RowCount do
      begin
        StringGrid1.Cells[0,i]:='';
        StringGrid1.Cells[1,i]:='';
        StringGrid1.Cells[2,i]:='';
        StringGrid1.Cells[3,i]:='';
        StringGrid1.Cells[4,i]:='';
        StringGrid1.Cells[5,i]:='';
      end;      }

end;

procedure TForm1.CheckBox1Click(Sender: TObject);
begin
{if CheckBox1.Checked then
 form1.cbSeller.Enabled:=true
else    form1.cbSeller.Enabled:= not true;   }
end;

procedure TForm1.DateFilterClick(Sender: TObject);
begin
if DateFilter.Checked then
 DateTimePicker3.Enabled:=True
else
 DateTimePicker3.Enabled:=false;
end;

procedure TForm1.English1Click(Sender: TObject);
begin
  English1.Checked:=true;
  Ukranian.Checked:=false;
//main menu
  //File
  FileMenu.Caption:='&File';
  FileNew.Caption:='New';
  FileOpen.Caption:='&Open...';
  FileSave.Caption:='&Save';
  FileSaveAs.Caption:='Save &As...';
  FileExit.Caption:='&Exit';
  //Base
  BaseMenu.Caption:='&Base';
  Add1.Caption:='Add';
  Modify1.Caption:='Modify';
  ClearFields1.Caption:='&Clear Fields';
  Delete1.Caption:='Delete';
  Find1.Caption:='&Find';
  N3.Caption:='&Sorting';
  SortAdr.Caption:='Sort by name';
  N4.Caption:='Sort by date';
  //Settings
  Settings.Caption:='Settings';
  Language.Caption:='Language';
  //Help
  HelpMenu.Caption:='Help';
  HelpAbout.Caption:='About...';
//Main form
//GroupBox
  GroupBox1.Caption:='Add new elemebt';
  Label1.Caption:='Count';
  Label3.Caption:='Seller';
  Label2.Caption:='Name';
  Label4.Caption:='Price';
  Label5.Caption:='Date';
  CheckBox1.Caption:='New seller';
  Button1.Caption:='Add (Ctrl+A)';
  btModify.Caption:='Modify (Ctrl+M)';
  Button2.Caption:='Clear (Ctrl+Del)';
  btDelete.Caption:='Delete (Shift+Del)';



end;

procedure TForm1.FileOpenClick(Sender: TObject);
begin
  if OpenDialog.Execute then begin
    case OpenDialog.FilterIndex of
    1: begin
         FAdrWay := OpenDialog.FileName;
         AssignFile(FAdr, FAdrWay);
         Reset(FAdr);
         DetailList.Clear;
         ListBox1.Items.Clear;
         DetailList.ReadFromFile(FAdr);
         ListBox1.Items := DetailList.FillTStrings;
         //OKClick(FileOpen);
         CloseFile(FAdr);
       end;
    end;{case OpenDialog.FilterIndex}
  end;{if OpenDialog.Execute}
  UpdateCountBase;
end;

procedure TForm1.FileSaveAsClick(Sender: TObject);
begin
  if SaveDialog.Execute then begin
    case SaveDialog.FilterIndex of
    1 : begin
          FAdrWay := SaveDialog.FileName;
          if Copy(FAdrWay,Length(FAdrWay)-3,1)<>'.' then FAdrWay:=FAdrWay+'.adb';
        end;
    end;{case SaveDialog.FilterIndex}
  end;{if SaveDialog.Execute}
  FileSaveClick(nil);

end;{procedure TMainForm.FileSaveClick}


procedure TForm1.FileSaveClick(Sender: TObject);
begin


  if FAdrWay <> '' then begin
    AssignFile(FAdr, FAdrWay);
    Rewrite(FAdr);
    DetailList.SaveToFile(FAdr);
    CloseFile(FAdr);
    ListBox1.SetFocus;
  end else FileSaveAsClick(nil);
  UpdateCountBase;
end;

procedure TForm1.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
 Panel1.Width:=ClientWidth-305;
end;

procedure TForm1.FormCreate(Sender: TObject);
var
  I : Integer;
begin
  DetailList := TDetail.Create;
  StatusBar1.Panels.Items[1].Text:='0';
  UpdateCountBase;
  btClearClick(nil);

  StringGrid1.ColWidths[0]:=30;
  StringGrid1.ColWidths[1]:=200;
  StringGrid1.ColWidths[2]:=50;
  StringGrid1.ColWidths[3]:=45;
  StringGrid1.ColWidths[4]:=70;
  StringGrid1.ColWidths[5]:=85;
  // Назви стовпців таблиці
  StringGrid1.Cells[0,0]:='№';
  StringGrid1.Cells[1,0]:='Ім"я';
  StringGrid1.Cells[2,0]:='Кількісь';
  StringGrid1.Cells[3,0]:='Ціна';
  StringGrid1.Cells[4,0]:='Дата';
  StringGrid1.Cells[5,0]:='Продавець';

end;

procedure TForm1.HelpAboutClick(Sender: TObject);
begin
  AboutBox.Show;
end;

procedure TForm1.ListBox1Click(Sender: TObject);
Var
 p                              : pointer;
 name                           : nameString;
 numerOfSelled                  : numberString;
 date                           : TUC_Date;
 price                          : priceString;
 seller                         : sellerString;
 k                              : Integer;
begin
  k := Form1.ListBox1.ItemIndex;
end;

procedure TForm1.N11Click(Sender: TObject);
var
  Item : PDetails;
  i,countOfElement    : Integer;
begin
  StringGrid1.ColWidths[0]:=25;
  Item := DetailList.FFirst;
  countOfElement:=2;
  i:=1;
  try
  while Item <> nil do
  begin
    if  (Item <> nil) and (Item.Name<>'') and (Item.NumerOfSelled<>'') then
      begin
        StringGrid1.Cells[0,i]:=inttostr(i);
        StringGrid1.Cells[1,i]:=(Item.Name);
        StringGrid1.Cells[2,i]:=(Item.NumerOfSelled);
        StringGrid1.Cells[4,i]:=(DateToStr(Item.Date));
        StringGrid1.Cells[3,i]:=(Item.Price);
        StringGrid1.Cells[5,i]:=(Item.seller);
        Item := Item^.Next;
        inc(i);
        StringGrid1.RowCount:=i;
      end;

      countOfElement:=countOfElement+1;
     // Dispose(Item);
  end;{while Item<>nil}
  except
   ShowMessage('Сталася помилка');
  end;
end;

procedure TForm1.N12Click(Sender: TObject);
begin
if N12.Checked=false then
begin
 GroupBox2.Visible:=true;
 n12.Checked:=true;

end
 else
 begin
 GroupBox2.Visible:=false;
 n12.Checked:=false;
 end;
end;

procedure TForm1.N14Click(Sender: TObject);
begin
if N14.Checked=false then
begin
 GroupBox4.Visible:=true;
 n14.Checked:=true;

end
 else
 begin
 GroupBox4.Visible:=false;
 n14.Checked:=false;
 end;
end;

procedure TForm1.N6Click(Sender: TObject);
begin
  N6.Checked:=True;
  N7.Checked:=false;
  PageControl1.ActivePageIndex:=1;
end;

procedure TForm1.N7Click(Sender: TObject);
begin
  N7.Checked:=True;
  N6.Checked:=false;
  PageControl1.ActivePageIndex:=0;
end;

procedure TForm1.NameFilterClick(Sender: TObject);
begin
if NameFilter.Checked then
 Edit1.Enabled:=True
else
 Edit1.Enabled:=false;
end;

procedure TForm1.PriceFilterClick(Sender: TObject);
begin
if PriceFilter.Checked then
 GroupBox3.Enabled:=True
else
 GroupBox3.Enabled:=false;
end;

procedure TForm1.RadioGroup2Click(Sender: TObject);
begin
if RadioGroup2.ItemIndex=0 then
begin
  Edit4.Visible:=true;
  label10.Caption:='Від';
  Label11.Visible:=True;

end;
if RadioGroup2.ItemIndex=1 then
begin
  Label11.Visible:=False;
  Edit4.Visible:=false;
  label10.Caption:='Більша за';
end;

if RadioGroup2.ItemIndex=2 then
begin
  Label11.Visible:=false;
  Edit4.Visible:=false;
  label10.Caption:='Менша за';
end;

end;

// сортування в списку
procedure TForm1.SortAdrClick(Sender: TObject);
begin
  SortAdr.Checked := not SortAdr.Checked;
  ListBox1.Sorted := SortAdr.Checked;
end;

procedure TForm1.UkranianClick(Sender: TObject);
begin
  English1.Checked:=not true;
  Ukranian.Checked:=not false;
  FileMenu.Caption:='&Файл';
  FileNew.Caption:='Новий';
  FileOpen.Caption:='Відкрити';


end;

procedure TForm1.UpdateCountBase;
begin
  if Ukranian.Checked then
  begin
    StatusBar1.Panels.Items[0].Text := 'Кількість даних в базі: ' + IntToStr(DetailList.Count) +
    ', кількість даних у списку: ' + IntToStr(DetailList.Count);
    if edPrice.Text='' then
    edPrice.Text:='0';
    pr:=pr+StrToInt(edPrice.Text)*StrToInt(edCount.Text);
    StatusBar1.Panels.Items[2].Text := 'Прибуток: ' + IntToStr(pr) + 'грн.';
  end;
  if English1.Checked then
  begin
    StatusBar1.Panels.Items[0].Text := 'Cuont of records: ' + IntToStr(DetailList.Count) +
    ', count records in list: ' + IntToStr(DetailList.Count);
    if edPrice.Text='' then
     edPrice.Text:='0';
    pr:=pr+StrToInt(edPrice.Text)*StrToInt(edCount.Text);
    StatusBar1.Panels.Items[2].Text := 'Profi: ' + IntToStr(pr) + 'грн.';
  end;

end;{procedure TMainForm.UpdateCountBase}
end.
