unit Useful_tools_u;

interface

uses
  Classes, Sysutils, stdctrls, Math;

type
  TUseful_Tools = class
  private
    function getThreeDigitsTurkishNumeration(number: string): string;
  public
    function explode(Text: string; Limit: char): TStringList;
    function howManyDaysInMonth(month, year: integer): integer;
    function incrementHour(Hour: string; IncrementMinutes: integer): string;
    function decrementHour(Hour: string; DecrementMinutes: integer): string;
    function isValidHour(Hour: string): boolean;
    function isFirstHourLessThanSecondHour(FirstHour, SecondHour: string): boolean;
    function daysOfDifference(date1, date2: string): integer;
    function diferenceBetweenHours(Hour1, Hour2: string): string;
    function MondayInWeekAccordingToDate(Date: string): string;
    function getFirstDayOfTheMonth(Date: string): string;
    function getLastDayOfTheMonth(Date: string): string;
    function translateHourIntoMinutes(Hour: string): integer;
    function translateMinutesIntoHour(Minutes: integer): string;
    function getFirstDayOfNextMonth(Date: string): string;
    function getNextDayOfDate(Date: string): string;
    function getLowNearestDate(Dates: TStringList; Date: string): string;
    function formatCurrencyString(Value: string): string;
    function formatFloatWithDecimals(Value: single; HowManyDecimals: integer): single;
    function takeOutComasFromFormat(Value: string): string;
    function convertNumberToTurkishNumeration(Number: string): string;
    function getDateFromDateTime(Value: TDateTime): string;
    function CopyAFile(AFrom, ATo: string): string;
    function DeleteAFile(filename: string): string;
    function formatCurrencyStringWithDotSeparator(Value: string): string;
    function differenceBetweenDates(date1, date2: string): string;
    function Currformat(Curvalue: extended): extended;

    procedure showItemInComboBox(Combo: TComboBox; Item: string);
  end;

var
  digits: array[0..29] of string = ('', ' bir', ' iki', ' uc', ' dort', ' bes', ' alti', ' yedi', ' sekiz', ' dokuz', '', ' on', ' yirmi', ' otuz', ' kirk', ' elli', ' altmis', ' yedmis', ' seksen', ' doksan', '', ' yuz', ' iki yuz', ' uc yuz', ' dort yuz', ' bes yuz', ' alti yuz', ' yedi yuz', ' sekiz yuz', ' dokuz yuz');
  pointsSeparators: array[0..4] of string = ('', ' bin', ' miliyon', ' miliyar', ' triliyon');

implementation

function TUseful_Tools.Currformat(Curvalue: extended): extended;
var v: variant;
begin
  v := Formatcurr(',0.00;-,0.00', Curvalue);
  result := v;
end;

function TUseful_Tools.getThreeDigitsTurkishNumeration(number: string): string;
var
  i, j: integer;
  value: string;
begin
  number := trim(number);

  value := '';
  i := 10 * (length(number) - 1);

  for j := 1 to length(number) do
  begin
    value := value + digits[i + strtoint(number[j])];
    i := i - 10;
  end;

  Result := value;
end;

function TUseful_Tools.explode(text: string; limit: char): TStringList;
var
  temp: TStringList;
  temp_s: string;
  i: integer;
begin
  temp := TStringList.Create;
  temp_s := '';

  for i := 1 to (length(text)) do
  begin
    if text[i] = limit then
    begin
      temp.Add(temp_s);
      temp_s := '';
    end
    else
      temp_s := temp_s + text[i];
  end;

  if (temp.Count > 0) or (length(temp_s) > 0) then
  begin
    if text[i - 1] <> limit then
      temp.Add(temp_s)
    else
      temp.Add('');
  end;

  Result := temp;
end;

function TUseful_Tools.howManyDaysInMonth(month, year: integer): integer;
begin
  case month of
    1, 3, 5, 7, 8, 10, 12: Result := 31;
    4, 6, 9, 11: Result := 30;
    2:                                  //  if it's february
      begin
        if (year mod 4) = 0 then
          Result := 29
        else
          Result := 28;
      end;
  end;
end;

function TUseful_Tools.incrementHour(Hour: string; IncrementMinutes: integer): string;
var
  temp: TStringList;
  total: string;
  h, m: integer;
  remaining: integer;
begin
  temp := explode(trim(Hour), ':');

  h := strToInt(temp[0]);
  m := strToInt(temp[1]);

  remaining := IncrementMinutes;

  while remaining > 0 do
  begin
    IncrementMinutes := remaining mod 60;
    if IncrementMinutes = 0 then
      IncrementMinutes := 60;

    remaining := remaining - IncrementMinutes;

    if (m + IncrementMinutes) > 59 then
    begin
      m := IncrementMinutes - (60 - m);
      h := h + 1;
      if h > 23 then
        h := 0;
    end
    else
      m := m + IncrementMinutes;
  end;

  if (h >= 0) and (h <= 9) then
    total := '0' + intToStr(h)
  else
    total := intToStr(h);

  total := total + ':';

  if (m >= 0) and (m <= 9) then
    total := total + '0' + intToStr(m)
  else
    total := total + intToStr(m);

  Result := total;
end;

function TUseful_Tools.decrementHour(Hour: string; DecrementMinutes: integer): string;
var
  temp: TStringList;
  total: string;
  h, m: integer;
  remaining: integer;
begin
  temp := explode(trim(Hour), ':');

  h := strToInt(temp[0]);
  m := strToInt(temp[1]);

  remaining := DecrementMinutes;

  while remaining > 0 do
  begin
    DecrementMinutes := remaining mod 60;
    if DecrementMinutes = 0 then
      DecrementMinutes := 60;

    remaining := remaining - DecrementMinutes;

    if (m - DecrementMinutes) < 0 then
    begin
      m := 60 - (DecrementMinutes - m);
      h := h - 1;
      if h < 0 then
        h := 23;
    end
    else
      m := m - DecrementMinutes;
  end;

  if (h >= 0) and (h <= 9) then
    total := '0' + intToStr(h)
  else
    total := intToStr(h);

  total := total + ':';

  if (m >= 0) and (m <= 9) then
    total := total + '0' + intToStr(m)
  else
    total := total + intToStr(m);

  Result := total;
end;

function TUseful_Tools.isValidHour(Hour: string): boolean;
var
  temp: TStringList;
  state: boolean;
begin
  state := true;

  temp := explode(trim(Hour), ':');

  if temp.Count = 2 then
  begin
    try
      if strtoInt(trim(temp[0])) > 23 then
        state := false;
    except
      on EConvertError do state := false;
    end;

    try
      if strToInt(trim(temp[1])) > 59 then
        state := false;
    except
      on EConvertError do state := false;
    end;
  end
  else
    state := false;

  Result := state;
end;

function TUseful_Tools.isFirstHourLessThanSecondHour(FirstHour, SecondHour: string): boolean;
var
  temp1, temp2: TStringList;
  isLess: boolean;
begin
  isLess := true;

  temp1 := explode(trim(FirstHour), ':');
  temp2 := explode(trim(SecondHour), ':');

  if strToInt(temp1[0]) > strToInt(temp2[0]) then
    isLess := false
  else if strToInt(temp1[0]) = strToInt(temp2[0]) then
  begin
    if strToInt(temp1[1]) >= strToInt(temp2[1]) then
      isLess := false
  end;

  Result := isLess;
end;

//**************************************************************************
//    This functions returns the diferences (in days) between to dates,
//    like this:
//                   Result := date2 - date1;
//**************************************************************************

function TUseful_Tools.daysOfDifference(date1, date2: string): integer;
var
  d1, m1, y1: integer;
  d2, m2, y2: integer;
  days: integer;
  y, m: integer;
  temp: TStringList;
begin
  temp := explode(trim(date1), '.');

  d1 := StrToInt(temp[0]);
  m1 := StrToInt(temp[1]);
  y1 := StrToInt(temp[2]);

  temp := explode(trim(date2), '.');

  d2 := StrToInt(temp[0]);
  m2 := StrToInt(temp[1]);
  y2 := StrToInt(temp[2]);

  days := 0;

  for y := y1 to y2 do
  begin
    if y = y2 then
    begin
      for m := m1 to m2 do
        days := days + howManyDaysInMonth(m, y);
    end
    else
    begin
      for m := m1 to 12 do
        days := days + howManyDaysInMonth(m, y);
      m1 := 1;                          // again january of the next year
    end;
  end;

  days := days - d1;
  days := days - (howManyDaysInMonth(m2, y2) - d2);

  Result := days;
end;

{This function returns the difference Hour2 - Hour1.
 The difference is given in this format HH:mm }

function TUseful_Tools.diferenceBetweenHours(Hour1, Hour2: string): string;
var
  difference: string;
  temp1, temp2: TStringList;
  h1, m1, h2, m2: integer;
begin
  difference := '00:00';

  temp1 := explode(trim(hour1), ':');
  temp2 := explode(trim(hour2), ':');

  h1 := strToInt(temp1[0]);
  m1 := strToInt(temp1[1]);
  h2 := strToInt(temp2[0]);
  m2 := strToInt(temp2[1]);

  while h1 <> h2 do
  begin
    difference := incrementHour(difference, (60 - m1));
    m1 := 0;
    h1 := h1 + 1;

    if h1 = 24 then
      h1 := 0;
  end;

  difference := incrementHour(difference, (m2 - m1));

  Result := difference;
end;

{Given a DATE, this function returns a DATE corresponding to the
 Monday of the week to which the given date belongs to}

function TUseful_Tools.MondayInWeekAccordingToDate(Date: string): string;
var
  day: integer;
  theDate: string;
begin
  day := dayOfWeek(strToDateTime(trim(Date)));

  case day of
    2, 3, 4, 5, 6, 7: day := day - 2;
    1: day := 6;
  end;

  theDate := dateTimeToStr(strToDateTime(Date) - day);

  Result := theDate;
end;

function TUseful_Tools.getFirstDayOfTheMonth(Date: string): string;
var
  value: string;
  temp: TStringlist;
begin
  temp := explode(trim(Date), '.');

  value := '01' + '.';

  if StrToInt(temp[1]) < 10 then
    value := value + '0';
  value := value + intToStr(StrToInt(temp[1])) + '.' + temp[2];

  Result := value;
end;

function TUseful_Tools.getLastDayOfTheMonth(Date: string): string;
var
  value: string;
  days: integer;
  temp: TStringlist;
begin
  temp := explode(trim(Date), '.');
  days := howManyDaysInMonth(strToInt(temp[1]), strToInt(temp[2]));

  if days < 10 then
    value := '0';
  value := intToStr(days) + '.';

  if StrToInt(temp[1]) < 10 then
    value := value + '0';

  value := value + intToStr(StrToInt(temp[1])) + '.' + temp[2];
  Result := value;
end;

function TUseful_Tools.translateHourIntoMinutes(Hour: string): integer;
var
  value: integer;
  temp: TStringList;
begin
  temp := explode(trim(Hour), ':');
  value := strToInt(temp[0]) * 60;
  value := value + strToInt(temp[1]);

  Result := value;
end;

function TUseful_Tools.translateMinutesIntoHour(Minutes: integer): string;
var
  value: string;
  temp: integer;
begin
  value := '';

  temp := floor(Minutes / 60);
  if temp < 10 then
    value := value + '0';
  value := value + intToStr(temp) + ':';

  temp := Minutes mod 60;
  if temp < 10 then
    value := value + '0';
  value := value + intToStr(temp);

  Result := value;
end;

function TUseful_Tools.getFirstDayOfNextMonth(Date: string): string;
var
  temp: TStringList;
  value: string;
  m, y: integer;
begin
  temp := explode(trim(Date), '.');

  m := StrToInt(temp[1]);
  y := StrToInt(temp[2]);

  m := m + 1;
  if m > 12 then
  begin
    m := 1;
    y := y + 1;
  end;

  value := getFirstDayOfTheMonth('02.' + intToStr(m) + '.' + intToStr(y));

  Result := value;
end;

function TUseful_Tools.getNextDayOfDate(Date: string): string;
var
  value: string;
  temp: TStringList;
begin
  value := DateToStr(StrToDate(trim(Date)) + 1);
  temp := explode(trim(value), ' ');

  Result := temp[0];
end;

{*********************************************************************
   Objective: This function returns a string that represents the date
              that is lower or equal to its value, according to a set
              of dates listed in the Dates List.
   Restriction: The Dates StringList Object has the set of dates ordered
                in DESCENDENT mode, i.e. the first field is the highest
                value, the second field is the second higest and so on.
**********************************************************************}

function TUseful_Tools.getLowNearestDate(Dates: TStringList; Date: string): string;
var
  i: integer;
  value: string;
  found: boolean;
begin
  value := '';
  found := false;

  if Dates.Count > 0 then
  begin
    value := trim(Dates[0]);

    for i := 1 to (Dates.Count - 1) do
    begin
      if strToDate(Date) >= strToDate(Dates[i]) then
      begin
        value := trim(Dates[i]);
        found := true;
        break;
      end;
    end;

    if not found then
      value := trim(Dates[(Dates.Count - 1)]);
  end;

  Result := value;
end;

function TUseful_Tools.formatCurrencyString(Value: string): string;
var
  aValue: string;
  i, k: integer;
begin
  aValue := '';
  Value := trim(Value);

  k := 1;
  for i := length(Value) downto 1 do
  begin
    aValue := Value[i] + aValue;
    if ((k mod 3) = 0) and (i > 1) then
      aValue := ',' + aValue;

    k := k + 1;
  end;

  Result := aValue;
end;

function TUseful_Tools.formatFloatWithDecimals(Value: single; HowManyDecimals: integer): single;
var
  aValue: single;
  aIntPart: integer;
  aRealPart: single;
begin
  aIntPart := Floor(Value);

  aRealPart := Value - aIntPart;
  aRealPart := Round(aRealPart * (10 * HowManyDecimals));
  aRealPart := aRealPart / (10 * HowManyDecimals);

  aValue := aIntPart + aRealPart;
  Result := aValue;
end;

function TUseful_Tools.takeOutComasFromFormat(Value: string): string;
var
  aValue: string;
  i: integer;
begin
  aValue := '';

  for i := 1 to length(Value) do
    if Value[i] <> ',' then
      aValue := aValue + Value[i];

  Result := aValue;
end;

function TUseful_Tools.convertNumberToTurkishNumeration(number: string): string;
var
  value, temp, temp_number: string;
  parts: TStringList;
  i, j: integer;
begin
  if trim(number) <> '0' then
  begin
    if (length(trim(number)) = 4) and (trim(number)[1] = '1') then
    begin
      value := 'bin';
      value := value + getThreeDigitsTurkishNumeration(number[2] + number[3] + number[4]);
    end
    else
    begin
      value := '';
      number := trim(number);

      temp_number := '';
      j := 0;
      for i := length(number) downto 1 do
      begin
        j := j + 1;
        temp_number := number[i] + temp_number;
        if ((j mod 3) = 0) and (i > 1) then
          temp_number := '.' + temp_number
      end;

      parts := explode(temp_number, '.');

      for i := (parts.Count - 1) downto 0 do
      begin
        temp := value;
        value := getThreeDigitsTurkishNumeration(parts[i]);

        if parts[i] <> '000' then
          value := value + pointsSeparators[(parts.Count - 1) - i];

        value := value + temp;
      end;
    end;
  end
  else
    value := 'Sifir';

  Result := value;
end;

function TUseful_Tools.getDateFromDateTime(Value: TDateTime): string;
var
  aValue: string;
  temp: TStringList;
begin
  aValue := '';

  temp := explode(trim(DateToStr(Value)), ' ');
  aValue := trim(temp[0]);

  Result := aValue;
end;

procedure TUseful_Tools.showItemInComboBox(Combo: TComboBox; Item: string);
var
  i: integer;
begin
  for i := 0 to (combo.Items.Count - 1) do
    if trim(combo.Items[i]) = trim(item) then
      combo.ItemIndex := i;
end;

function TUseful_Tools.CopyAFile(AFrom, ATo: string): string;
var
  FromFileStream, ToFileStream: TFileStream;
  errorString: string;
  size_free: int64;
begin
  errorString := '';
  AFrom := trim(AFrom);
  ATo := trim(ATo);

  if FileExists(AFrom) then
  begin
    FromFileStream := TFileStream.Create(AFrom, fmOpenRead);
    size_free := DiskFree(1);

    if size_free > -1 then
    begin
      if (size_free - FromFileStream.Size) > 0 then
      begin
        try
          ToFileStream := TFileStream.Create(ATo, fmCreate or fmOpenWrite);
          ToFileStream.CopyFrom(FromFileStream, FromFileStream.Size);
        except
          errorString := 'Diskete kopyalarken hata veriyor. Lütfen kontrol ediniz';
        end;

        ToFileStream.Free;
      end
      else
        errorString := 'Diskette boþ yer yok.';
    end
    else
      errorString := 'Sürücüde disket yok. Lütfen disket takýnýz.';

    FromFileStream.Free;
  end
  else
    errorString := 'Sürücüye disket takýnýz';

  Result := errorString;
end;

function TUseful_Tools.DeleteAFile(filename: string): string;
var
  error: string;
begin
  error := '';

  if FileExists(filename) then
  begin
    if not DeleteFile(filename) then
      error := 'Dosyayý silerken hata oluþtu.';
  end;

  Result := error;
end;

function TUseful_Tools.differenceBetweenDates(date1, date2: string): string;
var
  value: string;
  y, m, d: integer;
  days, i: integer;
  difference: integer;
  starting, ending: TStringList;
begin
  y := 0;
  m := 0;
  d := 0;

  difference := Floor(strToDate(date2) - strToDate(date1));
  if difference > 0 then
  begin
    starting := explode(trim(date1), '.');
    ending := explode(trim(date2), '.');

    if strToInt(ending[0]) < strToInt(starting[0]) then
    begin
      ending[1] := intToStr(strToInt(ending[1]) - 1);
      ending[0] := intToStr(strToInt(ending[0]) + 30);
    end;

    if strToInt(ending[1]) < strToInt(starting[1]) then
    begin
      ending[2] := intToStr(strToInt(ending[2]) - 1);
      ending[1] := intToStr(strToInt(ending[1]) + 12);
    end;

    d := strToInt(ending[0]) - strToInt(starting[0]);
    m := strToInt(ending[1]) - strToInt(starting[1]);
    y := strToInt(ending[2]) - strToInt(starting[2]);
  end;

  value := intToStr(d) + '.' + intToStr(m) + '.' + intToStr(y);
  Result := value;
end;

function TUseful_Tools.formatCurrencyStringWithDotSeparator(Value: string): string;
var
  aValue: string;
  i, k: integer;
begin
  aValue := '';
  Value := trim(Value);

  k := 1;
  for i := length(Value) downto 1 do
  begin
    aValue := Value[i] + aValue;
    if ((k mod 3) = 0) and (i > 1) then
      aValue := '.' + aValue;

    k := k + 1;
  end;

  Result := aValue;
end;

end.
