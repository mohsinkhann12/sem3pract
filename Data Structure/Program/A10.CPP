#include<iostream.h>
#include<conio.h>
class abc
{
	int Q[20],FRONT,REAR,N;
	public:
		abc()
		{
			FRONT=REAR=0;N=5;
		}
		void Insert(int ITEM)
		{
			if((FRONT==1 && REAR==N) || (FRONT==REAR+1))
			{
				cout<<"\nOVERFLOW!";
			}
			else
			{
				if(FRONT==0)
				{
					FRONT=REAR=1;
				}
				else if(REAR==N)
				{
					REAR=1;
				}
				else
				{
					REAR++;
				}
				Q[REAR]=ITEM;
			}
		}
		void Display()
		{
			cout<<"\nQUEUE\n";

			for(int i=FRONT;i<=REAR;i++)
			{
				cout<<Q[i]<<" ";
			}
		}
};
void main()
{
	clrscr();
	abc a1;
	a1.Insert(10);
	a1.Display();
	a1.Insert(20);
	a1.Display();
	a1.Insert(30);
	a1.Display();
	a1.Insert(40);
	a1.Display();
	a1.Insert(50);
	a1.Display();
	a1.Insert(60)
	getch();

}