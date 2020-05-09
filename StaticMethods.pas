type
  TFigure = class
    procedure Draw;
  end;
  TRectangle = class(TFigure)
    procedure Draw;
  end;
  
  
var
  Figure: TFigure;
  Rectangle: TRectangle;
  
begin
  Figure := TFigure.Create;
  Figure.Draw; // calls TFigure.Draw
  Figure.Destroy;
  
  Figure := TRectangle.Create;
  Figure.Draw; // calls TFigure.Draw
  TRectangle(Figure).Draw; // calls TRectangle.Draw
  Figure.Destroy;
  
  Rectangle := TRectangle.Create;
  Rectangle.Draw; // calls TRectangle.Draw
  Rectangle.Destroy;
end;
