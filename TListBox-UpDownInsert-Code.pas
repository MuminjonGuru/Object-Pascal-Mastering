procedure TForm1.BtnDownClick(Sender: TObject);
var
  OldPos: Integer;
begin
  OldPos := ListBox1.ItemIndex;
  ListBox1.Items.Move(OldPos, OldPos + 1);
  ListBox1.ItemIndex := OldPos + 1;
end;

procedure TForm1.BtnInsertClick(Sender: TObject);
begin
  ListBox1.Items.Insert(ListBox1.ItemIndex, Edit1.Text);
end;

procedure TForm1.BtnUpClick(Sender: TObject);
var
  OldPos: Integer;
begin
  OldPos := ListBox1.ItemIndex;
  ListBox1.Items.Move(OldPos, OldPos - 1);
  ListBox1.ItemIndex := OldPos - 1;
end;
