type
  TPoint = Record
    X, Y: Single;
  end;
  
  TVector = Array[0..1] of TPoint;
  TMonth = (Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec);
  TDate = record
    D: 1..31;
    M: TMonth;
    Y: 1900..1999;
  end;

const
  ORIGIN: TPoint = (X: 0.0; Y: 0.0);
  LINE: TVector = ((X: -3.1; Y: 1.5), (X: 5.8; Y: 3.0));
  SOMEDAY: TDate = (D: 2; M: Dec; Y: 1960);
