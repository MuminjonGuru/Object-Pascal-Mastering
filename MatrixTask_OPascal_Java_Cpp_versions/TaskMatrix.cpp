#include "TaskMatrix.h"

namespace algorithms
{

	void TaskMatrix::main(std::vector<std::wstring> &args)
	{
		Scanner *scan = new Scanner(System::in);

		std::wcout << L"N = ";
		int n = scan->nextInt();
//JAVA TO C++ CONVERTER NOTE: The following call to the 'RectangularVectors' helper class reproduces the rectangular array initialization that is automatic in Java:
//ORIGINAL LINE: int[][] q = new int[n][n];
		std::vector<std::vector<int>> q = RectangularVectors::RectangularIntVector(n, n);
		int z = 0;

		for (int i = 0; i < (n) * 2; i++)
		{
			for (int x = 0; x < n; x++)
			{
				for (int y = 0; y < n; y++)
				{
					if (x + y == i)
					{
						z++;
						if (i % 2 == 0)
						{
							q[x][y] = z;
						}
						else
						{
							q[y][x] = z;
						}
					}
				}
			}
		}

		for (int x = 0; x < n; x++)
		{
			std::wcout << L"" << std::endl;
			for (int y = 0; y < n; y++)
			{
				std::wcout << q[x][y] << L"\t";
			}
		}

		delete scan;
	}
}
