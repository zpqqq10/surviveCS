unit SGMacro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ToolWin, Menus, ImgList;

type
  PMacroRec = ^TMacroRec;
  TMacroRec = record
  case Integer of
    0: (Frequency, Level_0, Level_1, PhaseDifference: Real);
    1: (Settings: array[0..3] of Real);
  end;

  TfmMacro = class(TForm)
    ToolBar1: TToolBar;
    tbtnMacroAdd: TToolButton;
    tbtnMacroDelete: TToolButton;
    ToolButton2: TToolButton;
    tbtnMacroCopy: TToolButton;
    lvMacro: TListView;
    PopupMenu1: TPopupMenu;
    Add1: TMenuItem;
    miMacroDelete: TMenuItem;
    N1: TMenuItem;
    miMacroCopy: TMenuItem;
    ImageList1: TImageList;
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure actMacroAddClick(Sender: TObject);
    procedure actMacroDeleteClick(Sender: TObject);
    procedure actMacroCopyClick(Sender: TObject);
    procedure lvMacroSelectItem(Sender: TObject; Item: TListItem;
      Selected: Boolean);
    procedure lvMacroDeletion(Sender: TObject; Item: TListItem);
    procedure lvMacroColumnClick(Sender: TObject; Column: TListColumn);
  private
    SortIndex: Integer;
    procedure Add(const MacroRec: TMacroRec);
  end;

var
  fmMacro: TfmMacro;

implementation

uses
  Registry, Lite2, SGConst, Math, SGMain, SGKernel, Clipbrd, Lite1;

{$R *.dfm}

function MacroRec(const AFrequency, ALevel_0, ALevel_1,
  APhaseDifference: Real): TMacroRec;
begin
  Result.Frequency := AFrequency;
  Result.Level_0 := ALevel_0;
  Result.Level_1 := ALevel_1;
  Result.PhaseDifference := APhaseDifference;
end;

procedure TfmMacro.FormCreate(Sender: TObject);
var
  MacroRec: TMacroRec;
begin
  SortIndex := -1;
  Constraints.MinWidth := (Width - ClientWidth) - Font.Height * 15;
  Constraints.MinHeight := (Height - ClientHeight) - Font.Height * 5;
  try
    with TRegistry.Create do
      try
        if OpenKey(RegKey, False) then
        begin
          with TMemoryStream.Create do
            try
              Size := $800;
              Size := ReadBinaryData(SMacroList, Memory^, Size);
              lvMacro.Items.BeginUpdate;
              try
                while (Read(MacroRec, SizeOf(TMacroRec)) = SizeOf(TMacroRec)) do
                  Add(MacroRec);
              finally
                lvMacro.Items.EndUpdate;
              end;
            finally
              Free;
            end;
          SortIndex := ReadInteger(SSortIndex);
        end;
      finally
        Free;
      end;
  except
    Application.HandleException(Self);
  end;
end;

procedure TfmMacro.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
var
  I: Integer;
begin
  try
    with TRegistry.Create do
      try
        if OpenKey(RegKey, True) then
        begin
          with TMemoryStream.Create do
            try
              with lvMacro do
                for I := 0 to Items.Count - 1 do
                  Write(PMacroRec(Items[I].Data)^, SizeOf(TMacroRec));
              WriteBinaryData(SMacroList, Memory^, Size);
            finally
              Free;
            end;
          WriteInteger(SSortIndex, SortIndex);
        end;
      finally
        Free;
      end;
  except
    Application.HandleException(Self);
  end;
end;

procedure TfmMacro.Add(const MacroRec: TMacroRec);
var
  Rec: PMacroRec;
begin
  with lvMacro.Items.Add, MacroRec do
    try
      Caption := FloatToStrF(Frequency, ffGeneral, 7, 0);
      if Level_0 <> Level_1 then
        SubItems.Add(Format('%.1f · %.1f', [-Level_0, -Level_1]))
      else
        SubItems.Add(FloatToStrF(-Level_0, ffFixed, 7, 1));
      SubItems.Add(FloatToStrF(RadToDeg(PhaseDifference), ffFixed, 7, 1));
      New(Rec);
      Rec^ := MacroRec;
      Data := Rec;
    except
      Delete;
      raise;
    end;
end;

procedure TfmMacro.actMacroAddClick(Sender: TObject);
var
  PD: Real;
begin
  if lvMacro.Items.Count < $40 then
  begin
    if SG <> nil then
    begin
      with SG do
        if Accept[sgsFrequency] then
        begin
          if Accept[sgsPhaseDifference] then
            PD := PhaseDifference
          else
            PD := 0;
          Add(MacroRec(Frequency, Level_0, Level_1, PD));
        end;
      SortIndex := -1;
    end;
  end
  else
    MessageBox(Handle, PChar(SMacroListTooLong), PChar(SMacroAdding),
      MB_ICONEXCLAMATION);
end;

procedure TfmMacro.actMacroCopyClick(Sender: TObject);
var
  Item: TListItem;
begin
  with TStringList.Create do
    try
      Item := nil;
      while True do
      begin
        Item := lvMacro.GetNextItem(Item, sdAll, [isSelected]);
        if Item = nil then
          Break;
        with PMacroRec(Item.Data)^ do
          Add(Format('%.11g'#9'%.2f'#9'%.2f'#9'%.1f', [Frequency, Level_0,
            Level_1, RadToDeg(PhaseDifference)]));
      end;
      Clipboard.AsText := Text;
    finally
      Free;
    end;
end;

procedure TfmMacro.actMacroDeleteClick(Sender: TObject);
begin
  lvMacro.DeleteSelected;
end;

procedure TfmMacro.lvMacroSelectItem(Sender: TObject; Item: TListItem;
  Selected: Boolean);
var
  B: boolean;
begin
  if Selected and (lvMacro.SelCount = 1) then
    with PMacroRec(Item.Data)^ do
      if RespondControlEvent(Sender) then
        try
          SG.Frequency := Frequency;
          if SG.Accept[sgsLevel_1] then
          begin
            SG.Level_0 := Level_0;
            SG.Level_1 := Level_1;
          end
          else
            SG.Level := RoundTo(LevelMean([Level_0, Level_1]), -2);
          SG.PhaseDifference := PhaseDifference;
        finally
          CurrentControl := nil;
        end;
  B := lvMacro.SelCount <> 0;
  miMacroDelete.Enabled := B;
  miMacroCopy.Enabled := B;
  tbtnMacroDelete.Enabled := B;
  tbtnMacroCopy.Enabled := B;
end;

procedure TfmMacro.lvMacroDeletion(Sender: TObject; Item: TListItem);
begin
  Dispose(PMacroRec(Item.Data));
end;

threadvar
  Descending: Boolean;

procedure TfmMacro.lvMacroColumnClick(Sender: TObject;
  Column: TListColumn);

  function DoCompare(Item1, Item2: TListItem; ParamSort: Integer): Integer;
    stdcall;
  var
    Rec1, Rec2: PMacroRec;
    V1, V2: Real;
  begin
    Rec1 := Item1.Data;
    Rec2 := Item2.Data;
    if ParamSort = 1 then
    begin
      V1 := LevelMean([Rec1.Level_0, Rec1.Level_1]);
      V2 := LevelMean([Rec2.Level_0, Rec2.Level_1]);
    end else
    begin
      if ParamSort = 2 then
        Inc(ParamSort);
      V1 := Rec1^.Settings[ParamSort];
      V2 := Rec2^.Settings[ParamSort];
    end;
    if SameValue(V1, V2) then
      Result := 0
    else
      if V1 > V2 then
        Result := 1
      else
        Result := -1;
    if Descending then
      Result := -Result;
  end;

begin
  Descending := Column.Index = SortIndex;
  lvMacro.CustomSort(@DoCompare, Column.Index);
  if Descending then
    SortIndex := -1
  else
    SortIndex := Column.Index;
end;

end.

