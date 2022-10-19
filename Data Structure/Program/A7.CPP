#include<iostream.h>
#include<conio.h>
class Abc
{
	int STACK[20],TOP,MAXSTK;
	public:
	Abc()
	{
		TOP=0;
	}
	void Push(int item)
	{
		MAXSTK=7;
		if(TOP==MAXSTK)
		{
			cout<<"Overflow";
		}
		else
		{
			TOP=TOP+1;
			STACK[TOP]=item;
		}
	}
	void Display()
	{
		cout<<"\nStack\n";
		for(int i=1;i<=TOP;i++)
		{
			cout<<STACK[i]<<"  ";
		}
	}
};
void main()
{
	Abc a1;
	clrscr();
	a1.Push(20);
	a1.Push(10);
	a1.Push(30);
	a1.Display();
	getch();
}