#include<iostream.h>
#include<conio.h>
class Abc
{
	int a[20],i,j;
	public:
	void GetData()
	{
		cout<<"Enter elements in array = ";		for(i=1;i<=5;i++)
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
	void Sort()
	{
		for(i=1;i<=5;i++)
		{
			for(j=1;j<=5;j++)
			{
				if(a[i]<a[j])
				{
					int temp=a[i];
					a[i]=a[j];
					a[j]=temp;
				}
			}
		}
	}
};
void main()
{
	clrscr();
	Abc a1;
	a1.GetData();
	a1.Display();
	a1.Sort();
	cout<<"\nNew Order";
	a1.Display();
	getch();
}

