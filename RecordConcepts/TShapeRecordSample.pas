type
  TShapeList = (Rectangle, Triangle, Circle, Ellipse, Other);
  TFigure = Record
    case TShapeList of
      Rectangle: (Height, Width: Real);
      Triangle: (Side1, Side2, Angle: Real);
      Circle: (Radius: Real);
      Ellipse, Other: ();
end;
