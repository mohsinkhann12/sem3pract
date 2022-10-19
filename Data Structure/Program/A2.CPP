#include<iostream.h>
#include<conio.h>
class Abc
{
	int a[20],i;
	int item,loc,flag;
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
	void Search()
	{
		flag = 0;
		cout<<"\nEnter item to search = ";
		cin>>item;
		for(i=1;i<=5;i++)
		{
			if(item==a[i])
			{
				loc=i;
				flag=1;
				break;
			}
		}
			if(flag ==1)
			{
				cout<<"Item found at location="<<loc;
			}
			else
			{
				cout<<"Item not found";
			}

	}
};
void main()
{
	clrscr();
	Abc a1;
	a1.GetData();
	a1.Display();
	a1.Search();
	getch();
}

