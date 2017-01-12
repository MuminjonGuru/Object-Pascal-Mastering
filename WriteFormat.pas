// Format datas using WriteLnFormat();
begin
  WritelnFormat('{2},{1},{0}',1,2,3);
  WritelnFormat('{{}}{0}','Format');
  WritelnFormat('{0:f3}',3.1415);
  WritelnFormat('{0,10:f}',3.1415);
end.