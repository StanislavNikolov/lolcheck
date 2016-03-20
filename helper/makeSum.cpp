#include <iostream>
#include <map>

std::map<std::string, int> s;

int main()
{
	std::string name;
	int a;

	while(std::cin >> a)
	{
		std::cin >> name;
		s[name] += a;
	}

	for(auto i : s)
		std::cout << i.second << ' ' << i.first << std::endl;

	return 0;

}
