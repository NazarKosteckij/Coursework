unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Unit2, Vcl.Menus, Vcl.ExtCtrls,
  Vcl.ToolWin;

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
    SaveDialog: TSaveDialog;
    Panel1: TPanel;
    edPrice: TEdit;
    edCount: TEdit;
    Panel2: TPanel;
    Panel3: TPanel;
    procedure ListBox1Click(Sender: TObject);
    procedure btAddClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btClearClick(Sender: TObject);
    procedure FileSaveClick(Sender: TObject);
    procedure FileSaveAsClick(Sender: TObject);
    procedure FileOpenClick(Sender: TObject);
    procedure FormCanResize(Sender: TObject; var NewWidth, NewHeight: Integer;
      var Resize: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    DetailList : TDetail;
    procedure UpdateCountBase;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btAddClick(Sender: TObject);
var
    name            : nameString;
    numerOfSelled   : numberString;
    date            : TUC_Date;
    price           : priceString;
    seller          : sellerString;
    k : Integer;
    p : pointer;
begin
   date.Day:=1;
   date.Month:=2;
   date.Year:=2014;
   name := edName.Text;
   numerOfSelled:=edCount.Text;
   price:=edPrice.Text;
   DetailList.Add(name, numerOfSelled, date ,price,seller);
   ListBox1.Items.Add(edName.Text+', ' + price+'грн. ('+numerOfSelled + ' штук(а))' );
   UpdateCountBase;

end;

procedure TForm1.btClearClick(Sender: TObject);
begin
edName.Text:='';
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
  UpdateCountBase;
  btClearClick(nil);
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


procedure TForm1.UpdateCountBase;
begin
  StatusBar1.Panels.Items[0].Text := 'Count in base: ' + IntToStr(DetailList.Count) +
    ', count in list: ' + IntToStr(DetailList.Count);
end;{procedure TMainForm.UpdateCountBase}
end.
