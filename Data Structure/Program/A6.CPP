#include<iostream.h>
#include<conio.h>
class Node
{
	int info;
	Node *link,*start;
	public:
	Node()
	{
		start=NULL;
	}
	void insert(int data)
	{
		Node *NEW = new Node;
		NEW -> info=data;
		NEW -> link=start;
		start=NEW;
	}
	void display()
	{
		Node *ptr;
		ptr=start;
		cout<<"\nLinked List\n";
		while(ptr!=NULL)
		{
			cout<<ptr->info<<"  ";
			ptr=ptr->link;
		}
	}
	void Delete()
	{
		Node *ptr,*save,*LOC,*LOCP;
		int item;
		cout<<"\nEnter item to be deleted = ";
		cin>>item;
		if(item==start->info)
		{
			start=start->link;
		}
		else
		{
			save=start;
			ptr=start->link;
			while(ptr!=NULL)
			{
				if(item==ptr->info)
				{
					LOC=ptr;
					LOCP=save;
					break;
				}
				else
				{
					save=ptr;
					ptr=ptr->link;
				}
			}
		}       LOCP->link=LOC->link;
	}
};
void main()
{
	clrscr();
	Node n1;
	n1.insert(20);
	n1.insert(10);
	n1.insert(30);
	n1.insert(40);
	n1.display();
	n1.Delete();
	n1.display();
	getch();
}
