#include<iostream.h>
#include<conio.h>
class Abc
{
	int a[20],i;
	public:
	void GetData()
	{
		cout<<"Enter elements in array = ";
		for(i=1;i<=5;i++)
		{
			cin>>a[i];
		}

	}
	void Display()
	{
		cout<<"\nArray\n";
		for(i=1;i<=5;i++)
		{
			cout<<a[i]<<"  ";
		}
	}
};
void main()
{
	clrscr();
	Abc a1;
	a1.GetData();
	a1.Display();
	getch();
}

