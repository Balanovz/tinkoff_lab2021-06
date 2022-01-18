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
