unit Unit2;

interface

uses Classes, SysUtils;

const

  line = '***---***---***';
  nameLangth   = 60;
  numberLength = 5;
  priceLength  = 10;
  sellerLength = 20;

type
  TUC_Date = record
    Day   : 1..31;
    Month : 1..12;
    Year  : 1000..2300;
  end;{TDate = record}

  nameString   = string[nameLangth];    // Назва деталі
  numberString = string[numberLength];  // Кількість проданих деталей
  priceString  = string[priceLength];   // Ціна деталі
  sellerString = string[sellerLength];  // Продавець


  TArr = array of Integer;

  PDetails = ^TDetails;     // Вказівник
  TDetails = record
    name                           : nameString;
    numerOfSelled                  : numberString;
    date                           : TUC_Date;
    price                          : priceString;
    seller                         : sellerString;
    Prev, Next                     : PDetails;  // Показники на наступний та попередній елементи
  end;{TDetail = record}
  TDetail = class
    FFirst : PDetails;
    constructor Create;
    destructor Destroy; override;
    procedure Clear;

    function add (const name                           : nameString;
                  const numerOfSelled                  : numberString;
                  const date                           : TUC_Date;
                  const price                          : priceString;
                  const seller                         : sellerString) : Boolean;
    function readFromFile (const F : TextFile) : Boolean;
    function saveToFile   (const F : TextFile) : Boolean;
    function getSize : Integer;
//    function delete (const p : pointer) : Boolean;
    function GetItem (const p           : pointer;
                      var name                           : nameString;
                      var numerOfSelled                  : numberString;
                      var date                           : TUC_Date;
                      var price                          : priceString;
                      var seller                         : sellerString) : Boolean;

    // В наступній версії програми
    {function Modify (const p           : pointer;
                     const name                           : nameString;
                     const numerOfSelled                  : numberString;
                     const date                           : TUC_Date;
                     const price                          : priceString;
                     const seller                         : sellerString) : Boolean;    }
    function FillTStrings : TStrings;
    function FindItem (FullName : string)      : pointer;
    property Count : Integer read GetSize;

 end;

 procedure CutNSP (str : string; var name: nameString);
 function UC_StrToDate     (str : string) : TUC_Date;
 function UC_DateToStr     (Date : TUC_Date) : string;
 function LeadZero         (w : Word; Count : Byte = 1) : string;

var
  FAdr     : TextFile;   // Файл
  FAdrWay  : string;     // Шлях жо файлу


implementation

constructor TDetail.Create;
begin
  inherited;
  if FFirst <> nil then Clear;
  FFirst := nil;
end;{constructor TDetail.Create}

destructor TDetail.Destroy;
begin

  if FFirst <> nil then Clear;

end;{destructor TDetail.Destroy}

procedure TDetail.Clear;
var
  Item : PDetails;
begin
  while FFirst <> nil do begin
    Item   := FFirst;
    FFirst := FFirst.Next;
    Dispose (Item);
  end;{while FFirst <> nil}
end;{procedure TDetail.Clear}

function TDetail.Add (const name                           : nameString;
                      const numerOfSelled                  : numberString;
                      const date                           : TUC_Date;
                      const price                          : priceString;
                      const seller                         : sellerString) : Boolean;
var
  Item : PDetails;
  begin
  Result := True;
  try
    New(Item);
    Item.Name     := name;
    Item.NumerOfSelled := numerOfSelled;
    Item.Date     := date;
    Item.Price    := price;
    Item.seller   := seller;
    Item.Prev     := nil;
    if Count > 1 then FFirst.Next.Prev := FFirst;
    Item.Next := FFirst;
    FFirst := Item;
  except
    Result := False;
  end;{try except}
end;{function TDetail.Add}

function TDetail.ReadFromFile (const F : TextFile) : Boolean;
var
  name                           : nameString;
  numerOfSelled                  : numberString;
  date                           : TUC_Date;
  price                          : priceString;
  seller                         : sellerString;
  I                              : Integer;
begin
  Result := True;
  try

    while not Eof(F) do begin
      Readln(F, Name);
      Readln(F, numerOfSelled);
      //Readln(F, date);
      date.Day:=1;
      date.Month:=2;
      date.Year:=2014;

      Readln(F, price);
      Readln(F, seller);
      Readln(F);
      Add(Name, numerOfSelled, (date), price, seller)
    end;{while not Eof(F)}
  except
    Result := False;
  end;{try except}
end;{function TDetail .ReadFromFile}

function TDetail.SaveToFile   (const F : TextFile) : Boolean;
var
  Item : PDetails;
  I    : Integer;
begin
  Result := True;
  try
    Item := FFirst;
    while Item <> nil do begin
      Writeln(F, Item.Name);
      Writeln(F, Item.NumerOfSelled);
      // Writeln(F, UC_DateToStr(Item.Date));
      Writeln(F, Item.Price);
      Writeln(F, Item.seller);
      Writeln(F, Line);
      Item := Item^.Next;
    end;{while Item<>nil}
  except
    Result := False;
  end;{try except}
end;{function TDetail.SaveToFile}

function TDetail.GetSize : Integer;
var
  Count : Integer;
  Item  : PDetails;
begin
  Count := 0;
  Item  := FFirst;
  if Item <> nil then begin
    while Item <> nil do begin
      Inc(Count);
      Item := Item.Next;
    end;{while Item <> nil}
  end;{if Item <> nil}
  Result := Count;
end;{function TDetail.GetSize}

// Необхідність даної функції сумнівна =)
(*

 nction TDetail.Delete (const p : pointer) : Boolean;
var
  Item, Prev, Next : PDetails;
begin
  if p <> nil then begin
    Item := p;
    Prev := Item.Prev;
    Next := Item.Next;
    Dispose (Item);
    if Prev <> nil then begin
      Item      := Prev;
      Item.Next := Next;
    end else FFirst := Next;
    if Next <> nil then begin
      Item      := Next;
      Item.Prev := Prev;
    end;{if Next <> nil}
    if FFirst = nil then begin
      Clear;
      Create;
    end;{if FFirst <> nil}
    Result := True;
  end else Result := False;
end;{function TDetail.Delete}
  *)
function TDetail.GetItem (const p           : pointer;
                          var name                           : nameString;
                          var numerOfSelled                  : numberString;
                          var date                           : TUC_Date;
                          var price                          : priceString;
                          var seller                         : sellerString) : Boolean;
var
  Item : PDetails;
begin
  Item := p;
  if Item <> nil then begin
    Name     := Item.Name;
    numerOfSelled := Item.numerOfSelled;
    date  := Item.date;
    price  := Item.price;
    seller  := Item.seller;
    Result   := True;
  end else Result := False;
end;{function TDetail.GetItem}

//Function TPeople.Modify

function TDetail.FillTStrings : TStrings;
var
  Item  : PDetails;
  Lines : TStrings;
begin
  Item  := FFirst;
  Lines := TStringList.Create;
  while Item <> nil do begin
    Lines.Add(Item.Name +', '+ Item.price +'грн. - '+ Item.numerOfSelled+'шт.');
    Item := Item.Next;
  end;{while Item <> nil}
  Result := Lines;
end;{function TDetail.FillTStrings}

function TDetail.FindItem (FullName : string) : pointer;
var
  p, Item : PDetails;
  Name : NameString;
  bN: Boolean;
begin
  CutNSP(FullName, Name);
  Item := FFirst;
  p    := nil;
  while (Item <> nil) and (p = nil) do begin
    if Name     = Item.Name     then bN := True else bN := False;
    if (bN = True) then p := Item else Item := Item.Next;
  end;{while Item^<>nil}
  Result := p;
end;{function TPeople.FindItem}

(**************************************************************)
// Переробити
procedure CutNSP (str : string; var Name : NameString);
var
  k : Integer;
begin
  k := 0;
  str := Copy(str, k+2, Length(str));
  k := Pos(' ', str);
  if k = Length(str) then Name := Copy(str, 1, k-1) else begin
    Name     := Copy(str, 1, k-1);
  end;
end;{procedure CutNSP}

function UC_StrToDate(str : string) : TUC_Date;
var
  Date    : TUC_Date;
  ValCode : Integer;
begin
  Val(Copy(str,1,2),Date.Day,ValCode);
  Val(Copy(str,4,2),Date.Month,ValCode);
  Val(Copy(str,7,4),Date.Year,ValCode);
  Result:=Date;
end;{function UC_StrToDate}

function UC_DateToStr(Date : TUC_Date) : string;
begin
  Result := LeadZero(Date.Day,2)+'.'+LeadZero(Date.Month,2)+'.'+LeadZero(Date.Year,4);
end;{function UC_DateToStr}

function LeadZero(w : Word; Count : Byte = 1) : string;
var
  s : string;
begin
  Str(w,s);
  while Count>Length(s) do s:='0'+s;
  Result:=s;
end;{function LeadZero}


begin

end.
