unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Grids, DBGrids, ExtCtrls, StdCtrls, DBCtrls, DB, Menus;

type
  TForm1 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    DBGrid1: TDBGrid;
    Label6: TLabel;
    Label7: TLabel;
    Button2: TButton;
    Button3: TButton;
    Edit6: TEdit;
    Edit7: TEdit;
    Button4: TButton;
    Button6: TButton;
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    Button5: TButton;
    Button1: TButton;
    Button7: TButton;
    TabSheet2: TTabSheet;
    DBGrid2: TDBGrid;
    Panel2: TPanel;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    TabSheet4: TTabSheet;
    DBGrid4: TDBGrid;
    Panel5: TPanel;
    Button20: TButton;
    Button16: TButton;
    Button18: TButton;
    TabSheet7: TTabSheet;
    DBGrid7: TDBGrid;
    Panel10: TPanel;
    Label1: TLabel;
    Button27: TButton;
    Edit1: TEdit;
    Button11: TButton;
    TabSheet8: TTabSheet;
    DBGrid8: TDBGrid;
    Panel4: TPanel;
    Button29: TButton;
    TabSheet3: TTabSheet;
    Label14: TLabel;
    DateTimePicker1: TDateTimePicker;
    Button15: TButton;
    DBGrid3: TDBGrid;
    Label8: TLabel;
    MainMenu1: TMainMenu;
    N3: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure Clear(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button20Click(Sender: TObject);
    procedure Button18Click(Sender: TObject);
    procedure Button28Click(Sender: TObject);
    procedure Button30Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button27Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure Button29Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2, Unit3, Unit4, Unit5, Unit6;

{$R *.dfm}

 procedure TForm1.Clear(Sender: TObject);
   begin
    Edit2.Text:='';
    Edit3.Text:='0';
    Edit4.Text:='';
    Edit5.Text:='0';

   end;

procedure TForm1.FormShow(Sender: TObject);
begin


DateTimePicker1.Date:= now;
TabSheet1.Caption:='������';
TabSheet2.Caption:='���������';

DataModule2.ADOQTovari.close;
DataModule2.ADOQTovari.SQL.Text:='SELECT ������.[ID ������], ������.[����� ������], ������.ֳ��, ������.����, ������.�����, �������.[����� �������] FROM ������ INNER JOIN ������� ON ������.[ID �������] = �������.[ID �������]';
DataModule2.ADOQTovari.open;

DataModule2.ADOQProdazh.close;
DataModule2.ADOQProdazh.SQL.Text:='SELECT ������.[ID ����������], ���.[ϲ� ���������], ������.[����� ������], ������.�������, ������.����, ������.����, ��������.[ϲ� ��������], ������.[ID ���]'
+'FROM �������� INNER JOIN (������ INNER JOIN (��� INNER JOIN ������ ON ���.[ID ���] = ������.[ID ���]) ON ������.[ID ������] = ������.[ID ������]) ON ��������.[ID ���������] = ������.[ID ���������]';
DataModule2.ADOQProdazh.open;


end;


procedure TForm1.Button1Click(Sender: TObject);
begin
Clear(Sender);
panel1.Visible:= true;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
Edit2.Text:=DBGrid1.Fields[1].AsString;
Edit3.Text:=DBGrid1.Fields[2].AsString;
Edit4.Text:=DBGrid1.Fields[3].AsString;
Edit5.Text:=DBGrid1.Fields[4].AsString;
panel1.Visible:= true;
DataModule2.ADOTKategorii.Locate('����� �������',DBGrid1.Fields[5].AsString, [loCaseInsensitive,loPartialKey]);
DBLookupComboBox1.KeyValue:= StrToInt(DataModule2.DataSKategorii.DataSet.Fields[0].AsString);


end;

procedure TForm1.Button5Click(Sender: TObject);
begin
DataModule2.ADOWork.Close;
DataModule2.ADOWork.SQL.Text:='INSERT INTO ������([����� ������],ֳ��,����,�����,[ID �������])'
+' values ("'+Edit2.Text+'", '+Edit3.Text+', "'+Edit4.Text+'", "'+Edit5.Text+'", '+IntToStr(DBLookupComboBox1.KeyValue)+')';
DataModule2.ADOWork.ExecSQL;

FormShow(Sender);


end;

procedure TForm1.Button7Click(Sender: TObject);
begin

DataModule2.ADOWork.Close;
DataModule2.ADOWork.SQL.Text:= 'UPDATE ������ SET ������.[����� ������] = "'+Edit2.Text+'", ������.���� = "'+Edit3.Text+'", ������.���� = "'+Edit4.Text+'", ������.����� = "'+Edit5.Text+'", ������.[ID �������] = "'+IntToStr(DBLookupComboBox1.KeyValue)+'" WHERE ((������.[ID ������])='+DBGrid1.Fields[0].AsString+')';
DataModule2.ADOWork.ExecSQL;

FormShow(Sender);

end;

procedure TForm1.Button3Click(Sender: TObject);
begin

DataModule2.ADOWork.Close;
DataModule2.ADOWork.SQL.Text:= 'DELETE * FROM ������ WHERE ((������.[ID ������])='+DBGrid1.Fields[0].AsString+')';
DataModule2.ADOWork.ExecSQL;

FormShow(Sender);
Clear(Sender);

end;

procedure TForm1.Button4Click(Sender: TObject);

begin
if (Edit6.Text = '') then
  begin

  DataModule2.ADOQTovari.close;
  DataModule2.ADOQTovari.SQL.Text:='SELECT * FROM ������ WHERE ������.[ID ������] LIKE '+Edit7.Text+' ORDER BY [ID �������]';
  DataModule2.ADOQTovari.open;

  end
else
  begin

  DataModule2.ADOQTovari.close;
  DataModule2.ADOQTovari.SQL.Text:='SELECT * FROM ������ WHERE ������.[����� ������] LIKE "%'+Edit6.Text+'%" ORDER BY [ID �������]';
  DataModule2.ADOQTovari.open;

  end;

end;

procedure TForm1.Button6Click(Sender: TObject);
begin

FormShow(Sender);
Edit6.Text:= '';
Edit7.Text:= '';

end;




procedure TForm1.Button9Click(Sender: TObject);
begin
DataModule2.ADOTRobitnik.Delete;
end;


procedure TForm1.Button14Click(Sender: TObject);
begin
Clear(Sender);
end;

procedure TForm1.Button15Click(Sender: TObject);
begin

DataModule2.ADOQProdazh.Close;
DataModule2.ADOQProdazh.SQL.Text:='SELECT ������.[ID ����������], ������.[����� ������], ������.�������, ������.����, ��������.[ϲ� ��������], ������.[ID ���], ���.���� FROM ��� INNER JOIN'
+' (�������� INNER JOIN (������ INNER JOIN ������ ON ������.[ID ������] = ������.[ID ������]) ON ��������.[ID ���������] = ������.[ID ���������]) ON ���.[ID ���] = ������.[ID ���] WHERE ������.[����]= :dt';
DataModule2.ADOQProdazh.Parameters.ParamByName('dt').Value:=FormatDateTime('dd.mm.yyyy',DateTimePicker1.Date);
DataModule2.ADOQProdazh.Open;
end;

procedure TForm1.N1Click(Sender: TObject);
begin
Form2.Visible:=True;
end;

procedure TForm1.Button16Click(Sender: TObject);
begin
DataModule2.ADOTKategorii.Insert;
end;

procedure TForm1.Button20Click(Sender: TObject);
begin
DataModule2.ADOTKategorii.Delete;
end;

procedure TForm1.Button18Click(Sender: TObject);
begin
if  DataModule2.ADOTKategorii.Modified then
 DataModule2.ADOTKategorii.Post;
end;

procedure TForm1.Button28Click(Sender: TObject);
begin
DataModule2.ADOTCheck.Insert;

end;


procedure TForm1.Button30Click(Sender: TObject);
begin
if  DataModule2.ADOTCheck.Modified then
 DataModule2.ADOTCheck.Post;
end;

procedure TForm1.N3Click(Sender: TObject);
begin
Form1.Visible:=False;
Form2.Show;
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
DataModule2.ADOTRobitnik.Insert;
end;

procedure TForm1.Button10Click(Sender: TObject);
begin
if  DataModule2.ADOTRobitnik.Modified then
 DataModule2.ADOTRobitnik.Post;
end;

procedure TForm1.Button27Click(Sender: TObject);
begin
DataModule2.ADOWork.Close;
DataModule2.ADOWork.SQL.Text:= 'DELETE * FROM ������ WHERE ((������.[ID ����������])='+DBGrid1.Fields[0].AsString+')';
DataModule2.ADOWork.ExecSQL;

FormShow(Sender);
end;

procedure TForm1.Button11Click(Sender: TObject);
begin
  DataModule2.ADOQProdazh.close;
  DataModule2.ADOQProdazh.SQL.Text:='SELECT ������.[ID ����������], ��������.ϲ�, ������.�������, ������.����, ������.[����� ������], ������.����, ��������.[ϲ� ��������], ������.[ID ���]'
+'FROM �������� INNER JOIN (������ INNER JOIN (�������� INNER JOIN ������ ON ��������.[ID ���������] = ������.[ID ���������]) ON ������.[ID ������] = ������.[ID ������])'
+' ON ��������.[ID ���������] = ������.[ID ���������] WHERE (((������.[ID ���])='+Edit1.Text+'))';
  DataModule2.ADOQProdazh.open;
end;

procedure TForm1.N4Click(Sender: TObject);
begin
Form3.QuickRep1.PreviewModal;
end;

procedure TForm1.Button29Click(Sender: TObject);
begin
DataModule2.ADOWork.Close;
DataModule2.ADOWork.SQL.Text:= 'DELETE * FROM ��� WHERE ((���.[ID ���])='+DBGrid1.Fields[0].AsString+')';
DataModule2.ADOWork.ExecSQL;

FormShow(Sender);
end;

end.