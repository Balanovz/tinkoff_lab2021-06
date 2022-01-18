/*
Пополам
Имя входного файла: стандартный ввод
Имя выходного файла: стандартный вывод
Ограничение по времени: 1 секунда
Ограничение по памяти: 256 мегабайт
Вам дана строка S длины 4, состоящая из заглавных букв латинского алфавита.
Определите, правда ли, что S состоит из двух различных букв, каждая из которых встречается
дважды.
Вам нужно ответить на T независимых наборов входных данных.
Формат входных данных
Первая строка теста содержит одно целое число T (1 <= T <= 100) — количество наборов входных
данных. Затем следуют T наборов входных данных.
В первой строке набора входных данных вводится строка S (|S| = 4).
Формат выходных данных
Для каждого набора входных данных выведите ответ на него — «Yes», если S состоит из двух
букв, каждая из которых встречается дважды, и «No» иначе

Test
ABBA - YES
FIRE - NO
GOGO - YES
WAFF - NO
AAAA - NO
*/


#include <iostream>
#include <algorithm>
#include <vector>
#include <sstream>
using namespace std;

void ex(vector<string>& v) {
	string buff;
	string word;
	for (int i = 0; i < v.size(); ++i) {
		word = v[i];
		sort(v[i].begin(), v[i].end());
		buff = v[i];
		buff[0] == buff[1] && buff[2] == buff[3] && buff[1] != buff[2] ?
			cout << word << " - Yes\n" :
			cout << word << " - No\n";
	}
}

int main() {
	int t;
	cout << "How much examination do you want to do: ";
	cin >> t;

	vector <string> s;
	string m;
	for (int i = 0; i < t; ++i) {
		cin >> m;
		s.push_back(m);
	}

	ex(s);

	return 0;
}
