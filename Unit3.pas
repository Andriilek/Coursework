unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ComCtrls, ExtCtrls, DBCtrls, Menus;

type
  TForm2 = class(TForm)
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    DateTimePicker1: TDateTimePicker;
    Button1: TButton;
    DBGrid2: TDBGrid;
    Button2: TButton;
    Label2: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    Label3: TLabel;
    Label4: TLabel;
    Edit2: TEdit;
    Label5: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Button3: TButton;
    Label9: TLabel;
    UpDown1: TUpDown;
    Edit1: TEdit;
    Label10: TLabel;
    Edit5: TEdit;
    Edit6: TEdit;
    Label11: TLabel;
    Button5: TButton;
    Button4: TButton;
    MainMenu1: TMainMenu;
    N4: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N1: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  checknum, checksum, chenatov:string;


implementation

uses Unit2, Unit1, DB, Unit4, Unit5, Unit6;

{$R *.dfm}

procedure TForm2.FormShow(Sender: TObject);
begin
DateTimePicker1.Date:= now;
DataModule2.ADOQCheck.close;
DataModule2.ADOQCheck.SQL.Text:='SELECT ���.[ID ���], ���.����, ���.����, ���.[ϲ� ���������], ���.�������, ���.̳���, ���.³�������, ���.����� FROM ���';
DataModule2.ADOQCheck.open;



end;

procedure TForm2.Button1Click(Sender: TObject);
begin
DateTimePicker1.Enabled:=true;



DataModule2.ADOQCheck.Close;
DataModule2.ADOQCheck.SQL.Text:='INSERT INTO ��� ( ����, ����, [ϲ� ���������], �������, ̳���, ³�������, ����� ) values (:dt,0,"","","",0,"")';
DataModule2.ADOQCheck.Parameters.ParamByName('dt').Value:=FormatDateTime('dd.mm.yyyy',DateTimePicker1.Date);
DataModule2.ADOQCheck.ExecSQL;

FormShow(Sender);

Edit2.Text:='';
Edit3.Text:='0';
Edit4.Text:='';
Edit5.Text:='';
Edit6.Text:='';

DataModule2.ADOQProdazh2.close;

DataModule2.ADOQCheck.close;
DataModule2.ADOQCheck.SQL.Text:='SELECT * FROM ��� ORDER BY [ID ���]';
DataModule2.ADOQCheck.open;

DataModule2.ADOQCheck.Last;
checknum:=DataModule2.DataSCheck.DataSet.Fields[0].AsString;
Label1.Caption:='��� ����� '+ checknum;

checksum:='0';
DBLookupComboBox1.Enabled:=True;
DBLookupComboBox2.Enabled:=True;
Edit1.Enabled:=True;
Edit2.Enabled:=True;
Edit3.Enabled:=True;
Edit4.Enabled:=True;
Edit5.Enabled:=True;
Edit6.Enabled:=True;
Label1.Enabled:=True;
Label9.Enabled:=True;
UpDown1.Enabled:=True;
DBGrid2.Enabled:=True;
Button3.Enabled:=True;
Button5.Enabled:=True;
Button4.Enabled:=True;

Label9.Caption:='���� �� ����' + checksum;

end;

procedure TForm2.Button3Click(Sender: TObject);
begin

DBLookupComboBox2.Enabled:=False;
Edit2.Enabled:=False;
Edit3.Enabled:=False;
Edit4.Enabled:=False;
Edit5.Enabled:=False;
Edit6.Enabled:=False;
DataModule2.ADOWork.close;
DataModule2.ADOWork.SQL.Text:='INSERT INTO ������([ID ������], [ID ���������], [ID ���], �������, ����, ����) values ('+inttostr(DBLookupComboBox1.KeyValue)+', '+inttostr(DBLookupComboBox2.KeyValue)+', '+checknum+','+Edit1.Text+', '+chenatov+', :dt)';
DataModule2.ADOWork.Parameters.ParamByName('dt').Value:=FormatDateTime('dd.mm.yyyy',DateTimePicker1.Date);
DataModule2.ADOWork.ExecSQL;

DataModule2.ADOWork.Close;
DataModule2.ADOWork.SQL.Text:=' Select Sum(������.[����]) AS [Sum-����] FROM ������ GROUP BY ������.[ID ���] HAVING (((������.[ID ���])= '+checknum+'))';
DataModule2.ADOWork.Open;
checksum:= DataModule2.DataSWork.DataSet.Fields[0].AsString;
Label9.Caption:='���� �� ����  ' + checksum;

DataModule2.ADOWork.Close;
DataModule2.ADOWork.SQL.Text:= 'UPDATE ��� SET ���.���� = '+checksum+', ���.[ϲ� ���������]="'+Edit2.Text+'", ���.�������="'+Edit4.Text+'", ���.����="'+Edit6.Text+'", ���.��������='+Edit3.Text+', ���.�����="'+Edit5.Text+'" WHERE ���.[ID ���] = '+checknum+'';
DataModule2.ADOWork.ExecSQL;
FormShow(Sender);

DataModule2.ADOQProdazh2.close;
DataModule2.ADOQProdazh2.SQL.Text:='SELECT ������.[ID ����������],������.�������, ������.����, ������.����, ��������.[ϲ� ��������], ������.[ID ���], ������.[����� ������] FROM ������ INNER JOIN (�������� INNER JOIN ������ ON ��������.[ID ���������] = ������.[ID ���������])'
+'ON ������.[ID ������] = ������.[ID ������] WHERE ������.[ID ���] = '+checknum+'';
DataModule2.ADOQProdazh2.open;

Edit1.Text:='0';

DataModule2.ADOTCheck.Active:=False;
DataModule2.ADOTCheck.Active:=True;
end;

procedure TForm2.Edit2Change(Sender: TObject);
begin
DataModule2.ADOQTovari.close;
DataModule2.ADOQTovari.SQL.Text:='SELECT ������.[ID ������], ������.[����� ������], ������.ֳ��, ������.����, ������.�����, �������.[����� �������] FROM ������ INNER JOIN ������� ON ������.[ID �������] = �������.[ID �������]';
DataModule2.ADOQTovari.open;
chenatov:=inttostr(DataModule2.DataSTovari.DataSet.Fields[2].AsInteger*strtoint(Edit1.Text));
Label10.Caption:='ֳ�� ������� (���) '+chenatov;
end;

procedure TForm2.Button5Click(Sender: TObject);
begin
DataModule2.ADOWork.Close;
DataModule2.ADOWork.SQL.Text:= 'DELETE * FROM ������ WHERE ������.[ID ����������] = '+DBGrid2.Fields[0].AsString+'';
DataModule2.ADOWork.ExecSQL;

DataModule2.ADOQProdazh2.close;
DataModule2.ADOQProdazh2.SQL.Text:='SELECT ������.[ID ����������],������.�������, ������.����, ������.����, ��������.[ϲ� ��������], ������.[ID ���], ������.[����� ������] FROM ������ INNER JOIN (�������� INNER JOIN ������ ON ��������.[ID ���������] = ������.[ID ���������])'
+'ON ������.[ID ������] = ������.[ID ������] WHERE ������.[ID ���] = '+checknum+'';
DataModule2.ADOQProdazh2.open;

DataModule2.ADOWork.Close;
DataModule2.ADOWork.SQL.Text:=' Select Sum(������.[����]) AS [Sum-����] FROM ������ GROUP BY ������.[ID ���] HAVING (((������.[ID ���])= '+checknum+'))';
DataModule2.ADOWork.Open;
checksum:= DataModule2.DataSWork.DataSet.Fields[0].AsString;
Label9.Caption:='���� �� ����  ' + checksum;

DataModule2.ADOWork.Close;
DataModule2.ADOWork.SQL.Text:= 'UPDATE ��� SET ���.���� = '+checksum+', ���.[ϲ� ���������]="'+Edit2.Text+'", ���.�������="'+Edit4.Text+'", ���.����="'+Edit6.Text+'", ���.��������='+Edit3.Text+', ���.�����="'+Edit5.Text+'" WHERE ���.[ID ���] = '+checknum+'';
DataModule2.ADOWork.ExecSQL;
FormShow(Sender);

end;

procedure TForm2.Button4Click(Sender: TObject);
begin

DataModule2.ADOQCheckRep.Close;
DataModule2.ADOQCheckRep.SQL.Text:='SELECT ������.[����� ������], ������.�������, ������.����, ������.����, ������.[ID ���], ��������.[ϲ� ��������], ���.[ϲ� ���������], ���.�������, ���.̳���, ���.³�������, ���.�����, ������.ֳ��, ���.���� '
+'FROM �������� INNER JOIN (������ INNER JOIN (��� INNER JOIN ������ ON ���.[ID ���] = ������.[ID ���]) ON ������.[ID ������] = ������.[ID ������]) ON ��������.[ID ���������] = ������.[ID ���������] WHERE ������.[ID ���] = '+checknum+'';
DataModule2.ADOQCheckRep.Open;

Form5.QRLabel2.Caption:='����: ' + Datetostr(DateTimePicker1.Date);
Form5.QRLabel7.Caption:='��������: '+ DBLookupComboBox2.Text;
Form5.QRLabel1.Caption:='��� � '+ checknum;
Form5.QRLabel8.Caption:='���� ����: '+ checksum;



Form5.QuickRep1.PreviewModal;
end;

procedure TForm2.N4Click(Sender: TObject);
begin
Form3.QuickRep1.PreviewModal;
end;

procedure TForm2.N1Click(Sender: TObject);
begin
Form2.Visible:=False;
Form1.Show;
end;

procedure TForm2.N3Click(Sender: TObject);
begin
close;
end;

procedure TForm2.N2Click(Sender: TObject);
begin
    ShowMessage('�������� �������� ˺������ ����� ��� 19 1/9');
end;

end.