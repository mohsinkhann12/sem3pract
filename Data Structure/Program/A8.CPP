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
	{       MAXSTK=7;
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
	void Pop()
	{       char ch;
		do
		{
			cout<<"Pop top element\n";

		if (TOP==NULL)
		{
			cout<<"Underflow";
		}
		else
		{
			TOP=TOP-1;
		}
		Display();
		cout<<"\nDo you want to pop next item=";
		cin>>ch;
		}
		while(ch=='y' || ch == 'y');

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
	a1.Pop();
	getch();
}
