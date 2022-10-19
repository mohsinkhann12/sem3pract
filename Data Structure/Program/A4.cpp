#include<iostream.h>
#include<conio.h>
class Node
{
	int Info ;
	Node *link, *start;
	public:
	Node()
	{
		start=NULL;
	}
	void insert(int data)
	{
		Node *NEW= new Node;
		NEW->Info=data;
		NEW->link=start;
		start=NEW;
    }
    void display()
	{
		Node *ptr;
		ptr=start;
		while(ptr!=NULL)
		{
			cout<<ptr->Info<<" ";
			ptr=ptr->link;
		}
	}
};
void main()
{
	clrscr();
	Node n1;
	n1.insert(10);
	n1.insert(20);
	n1.insert(30);
	cout<<"Link List:\n";
	n1.display();
	getch();
}
