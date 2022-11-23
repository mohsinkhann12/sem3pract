#include<iostream.h>
#include<conio.h>
#include<math.h>
class Abc
{
	char ch[20];
	int st[20],top,A,B,v,n;
	public:
	Abc()
	{
		top=0;
		A=0;
		B=0;
		n=1;
	}
	void getdata()
	{
		cout<<"Enter Postfix Expression =";
		for (int i=1; i<=n; i++)
		{
			cin>>ch[i];
			if (ch[i]==')')
			{
				break;
			}
			n++;
		}
	}
	void operation()
	{for(int i=1; i<=n; i++)
		{if (int (ch[i])>=49 && int(ch[i])<=57)
		{
			v=ch[i];
			v=v-'0';
			top++;
			st[top]=v;
			cout<<st[top]<<" ";
		}
		if (ch[i]=='+')
		{
			A=st[top];
			top--;
			B=st[top];
			top--;
			v=B+A;
			top++;
			st[top]=v;
		}
		if (ch[i]=='-')
		{
			A=st[top];
			top--;
			B=st[top];
			top--;
			v=B-A;
			top++;
			st[top]=v;
		}
		if (ch[i]=='*')
		{
			A=st[top];
			top--;
			B=st[top];
			top--;
			v=B*A;
			top++;
			st[top]=v;
		}
		if (ch[i]=='/')
		{
			A=st[top];
			top--;
			B=st[top];
			top--;
			v=B/A;
			top++;
			st[top]=v;
		}
		if (ch[i]=='^')
		{
			A=st[top];
			top--;
			B=st[top];
			top--;
			v=pow(B,A);
			top++;
			st[top]=v;
		}
		if(ch[i]==')')
		{
			v=st[top];
			top--;
			cout<<"\nValue = "<<v;
		}}
	}
};
void main()
{
	Abc a1;
	clrscr();
	a1.getdata();
	a1.operation();
	getch();
}
