unit Units;
interface
     uses Classes, SysUtils, ADODB, cxGridDBTableView, cxGridCustomTableView, DateUtils, Variants, Forms,
  cxControls, cxGridCustomView, StdCtrls, cxGridBandedTableView,
  cxGridDBBandedTableView,  Messages, cxVariants, Windows, Dialogs, CXGridExportLink, cxCheckBox,
  Controls, cxGridStrs, cxFilterControlStrs, cxFilterConsts, cxDataConsts, cxEditConsts, cxGridPopupMenuConsts, cxLibraryStrs,
  cxTextEdit, cxButtonEdit, cxDropDownEdit, cxMemo, cxCalendar, cxDateUtils, cxCurrencyEdit, cxRichEdit, strUtils,
  cxGrid, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel,
  cxGridTableView, cxClasses;


  function Kaydet(ADbConnection: TADOConnection;TableName:string;QryKaydet:TADOQuery):string;
  function Degistir(ADbConnection: TADOConnection;SqlWhere,TableName:string;QryDegistir:TADOQuery):string;
  function KayitSil(ADbConnection: TADOConnection;TableName, SqlWhere: String):string;
  procedure CokluSecimIDstr(IDFieldName1, IDFieldName2: string; myview: TcxGridDBTableView; var SecimIDstr1, SecimIDstr2: string);
  //procedure CokluSecimIDstr(IDFieldName1, IDFieldName2: string; myview: TcxGridDBTableView; var SecimIDstr1, SecimIDstr2: string);
implementation
function Kaydet(ADbConnection: TADOConnection;TableName:string;QryKaydet:TADOQuery):string;
var
 sql: string;
  i: integer;
  qry: TADOQuery;
begin
  qry := TADOQuery.Create(nil);
  qry.Connection := ADbConnection;
  qry.SQL.Text := 'select * from ' + TableName + ' where 0=1';
  qry.Open;
  sql := 'insert into ' + TableName + ' (';
  for i := 0 to qry.FieldCount - 1 do
    if qry.Fields[i].DataType <> ftAutoInc then
      sql := sql + qry.Fields[i].FieldName + ',';
  sql := copy(sql, 1, length(sql) - 1) + ') values (';
  for i := 0 to qry.FieldCount - 1 do
    if qry.Fields[i].DataType <> ftAutoInc then
      sql := sql + ':' + qry.Fields[i].FieldName + ',';
  sql := copy(sql, 1, length(sql) - 1) + ')';
  QryKaydet.Close;
  QryKaydet.SQL.Clear;
  QryKaydet.SQL.Text := sql;
  QryKaydet.sql.Add('SELECT SCOPE_IDENTITY() as myKeyID');
  for i := 0 to qry.FieldCount - 1 do
  begin
    if qry.Fields[i].DataType = ftString then
      QryKaydet.Parameters.ParamByName(qry.Fields[i].FieldName).Value := ''
    else if qry.Fields[i].DataType = ftSmallint then
      QryKaydet.Parameters.ParamByName(qry.Fields[i].FieldName).Value := 0
    else if qry.Fields[i].DataType = ftInteger then
      QryKaydet.Parameters.ParamByName(qry.Fields[i].FieldName).Value := 0
    else if qry.Fields[i].DataType = ftWord then
      QryKaydet.Parameters.ParamByName(qry.Fields[i].FieldName).Value := 0
    else if qry.Fields[i].DataType = ftBoolean then
      QryKaydet.Parameters.ParamByName(qry.Fields[i].FieldName).Value := false
    else if qry.Fields[i].DataType = ftFloat then
      QryKaydet.Parameters.ParamByName(qry.Fields[i].FieldName).Value := 0
    else if qry.Fields[i].DataType = ftCurrency then
      QryKaydet.Parameters.ParamByName(qry.Fields[i].FieldName).Value := 0
    else if qry.Fields[i].DataType = ftBCD then
      QryKaydet.Parameters.ParamByName(qry.Fields[i].FieldName).Value := 0
    else if qry.Fields[i].DataType = ftDate then
      QryKaydet.Parameters.ParamByName(qry.Fields[i].FieldName).Value := 0
    else if qry.Fields[i].DataType = ftTime then
      QryKaydet.Parameters.ParamByName(qry.Fields[i].FieldName).Value := 0
    else if qry.Fields[i].DataType = ftDateTime then
      QryKaydet.Parameters.ParamByName(qry.Fields[i].FieldName).Value := 0
    else if qry.Fields[i].DataType = ftBytes then
      QryKaydet.Parameters.ParamByName(qry.Fields[i].FieldName).Value := 0
    else if qry.Fields[i].DataType = ftVarBytes then
      QryKaydet.Parameters.ParamByName(qry.Fields[i].FieldName).Value := 0
    else if qry.Fields[i].DataType = ftBlob then
      QryKaydet.Parameters.ParamByName(qry.Fields[i].FieldName).Value := 0
    else if qry.Fields[i].DataType = ftMemo then
      QryKaydet.Parameters.ParamByName(qry.Fields[i].FieldName).Value := ''
    else if qry.Fields[i].DataType = ftGraphic then
      QryKaydet.Parameters.ParamByName(qry.Fields[i].FieldName).Value := 0
    else if qry.Fields[i].DataType = ftFmtMemo then
      QryKaydet.Parameters.ParamByName(qry.Fields[i].FieldName).Value := 0
    else if qry.Fields[i].DataType = ftFmtMemo then
      QryKaydet.Parameters.ParamByName(qry.Fields[i].FieldName).Value := ''
    else if qry.Fields[i].DataType = ftTypedBinary then
      QryKaydet.Parameters.ParamByName(qry.Fields[i].FieldName).Value := 0
    else if qry.Fields[i].DataType = ftFixedChar then
      QryKaydet.Parameters.ParamByName(qry.Fields[i].FieldName).Value := ''
    else if qry.Fields[i].DataType = ftWideString then
      QryKaydet.Parameters.ParamByName(qry.Fields[i].FieldName).Value := ''
    else if qry.Fields[i].DataType = ftLargeint then
      QryKaydet.Parameters.ParamByName(qry.Fields[i].FieldName).Value := 0
    else if qry.Fields[i].DataType = ftVariant then
      QryKaydet.Parameters.ParamByName(qry.Fields[i].FieldName).Value := 0
    else if qry.Fields[i].DataType = ftFMTBcd then
      QryKaydet.Parameters.ParamByName(qry.Fields[i].FieldName).Value := 0
    else
      if qry.Fields[i].DataType <> ftAutoInc then
        QryKaydet.Parameters.ParamByName(qry.Fields[i].FieldName).Value := null;

  end;
  qry.Close;
  qry.Free;
  Result := sql;
end;
function Degistir(ADbConnection: TADOConnection;SqlWhere,TableName:string;QryDegistir:TADOQuery):string;
var
  sql: string; //Tablolarda Autoincrement ilk alan olmalý
  i: integer;
  qry: TADOQuery;
begin
  qry := TADOQuery.Create(nil);
  qry.Connection := ADbConnection;
  qry.SQL.Text := 'select * from ' + TableName + SqlWhere;
  qry.Open;

  sql := 'update ' + TableName + ' set ';
  for i := 0 to qry.FieldCount - 1 do
    if qry.Fields[i].DataType <> ftAutoInc then
      sql := sql + qry.Fields[i].FieldName + '=:' + qry.Fields[i].FieldName + ',';
  sql := copy(sql, 1, length(sql) - 1) + SqlWhere;
  QryDegistir.Close;
  QryDegistir.SQL.Clear;
  QryDegistir.SQL.Text := sql;
  for i := 0 to qry.FieldCount - 1 do
    if qry.Fields[i].DataType <> ftAutoInc then
      QryDegistir.Parameters.ParamByName(qry.Fields[i].FieldName).Value := qry.Fields[i].Value;
  qry.Close;
  qry.Free;
end;
function KayitSil(ADbConnection: TADOConnection;TableName, SqlWhere: String):string;
var
  xAdoQuery : TADOQuery;
 begin
 if MessageDlg('Dikkat kayýt silinecek, Onaylýyormusunuz', mtWarning, [mbYes,mbNo], 0) = mrYes then
 Begin
    xAdoQuery:=TADOQuery.Create(nil);
    xAdoQuery.Connection := ADbConnection;
   TRY
    with  xAdoQuery do
    begin
      Close;
      sql.Clear;
      sql.Text:= 'DELETE FROM ' + TableName + SqlWhere;
      ExecSQL;
    end;
    FINALLY
    FreeAndNil(xAdoQuery);
    END;
 End;
end;
procedure CokluSecimIDstr(IDFieldName1, IDFieldName2: string; myview: TcxGridDBTableView; var SecimIDstr1, SecimIDstr2: string);
var
  I, RecIdx: Integer;
  RecID: Variant;
  BkmSafe: TBookmarkStr;
  ADataSet: TDataSet;
  myvaluestr: string;
begin
  SecimIDstr1 := '';
  SecimIDstr2 := '';

  myview.BeginUpdate;
  myview.DataController.BeginLocate;
  try
    ADataSet := myview.DataController.DataSource.DataSet;
    //BkmSafe := ADataSet.Bookmark;
    for I := 0 to myview.Controller.SelectedRecordCount - 1 do
    begin
      RecIdx := myview.Controller.SelectedRecords[I].RecordIndex;
      RecID := myview.DataController.GetRecordId(RecIdx);

      if IDFieldName1 <> '' then
      begin
        myvaluestr := Vartostrdef(ADataSet.Lookup(myview.DataController.KeyFieldNames, RecID, IDFieldName1), '');

        if SecimIDstr1 = '' then
          SecimIDstr1 := '*' + '''' + myvaluestr + '''' + '*'
        else
        begin
          if pos('*' + myvaluestr + '*', SecimIDstr1) = 0 then
            SecimIDstr1 := SecimIDstr1 + ' , ' + '*' + '''' + myvaluestr + '''' + '*';
        end;
      end;

      if IDFieldName2 <> '' then
      begin
        myvaluestr := Vartostrdef(ADataSet.Lookup(myview.DataController.KeyFieldNames, RecID, IDFieldName2), '');

        if SecimIDstr2 = '' then
          SecimIDstr2 := '*' + '''' + myvaluestr + '''' + '*'
        else
        begin
          if pos('*' + myvaluestr + '*', SecimIDstr2) = 0 then
            SecimIDstr2 := SecimIDstr2 + ' , ' + '*' + '''' + myvaluestr + '''' + '*';
        end;
      end;

    end;                                // for
    SecimIDstr1 := AnsiReplaceStr(SecimIDstr1, '*', ' ');
    SecimIDstr2 := AnsiReplaceStr(SecimIDstr2, '*', ' ');
  finally
    myview.DataController.EndLocate;
    myview.EndUpdate;
  end;

end;


end.
