{
  N natural son berilgan. (1/2), (3/4), (5/6), (7/8), ... ketma-ketlikning
  N ta hadi yig'indisini hisoblash dasturini tuzing.

  // Just a statement:
        Bu masalada takrorlanishni tashkil etishda barcha takrorlash
        operatorlaridan foydalanish mumkin. Masalada e'tiborni ketma-ketlik
        hadi bilan ketma-ketlik hadi tartib orasidagi bog'lanishga qaratish
        kerak.

        1-had: (2*1-1) / (2*1) = 1 / 2
        2-had: (2*2-1) / (2*2) = 3 / 4
        .....
        N-had: (2*K-1) / (2*K)
}

program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var
  N, K: Word;
  S: Real;

begin
  Write('N = ');  ReadLn(N);
  S := 0;

  for K := 1 to N do
    S := S + (2 * K - 1) / (2 * K);

  Write('Sum = ', S:2:2);


  ReadLn;
end.
