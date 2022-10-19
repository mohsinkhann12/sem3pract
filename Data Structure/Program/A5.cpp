#include<iostream.h>
#include<conio.h>
class node
{
	int info;
	node *link, *start;
	public:
	node()
	{
		start=NULL;
	}
	void insert(int Data)
	{
		node *NEW =new node;
		NEW->info=Data;
		NEW->link=start;
		start=NEW;
	}
    void display()
	{
		node *ptr;
		ptr=start;
		while(ptr!=NULL)
		{
			cout<<ptr->info<<" ";
			ptr=ptr->link;
		}
    }
    void search(int item)
	{
		node *ptr, *loc;
		ptr=start;
		while(ptr!=NULL)
		{
			if(ptr->info==item){
				loc=ptr;
				break;
			}
			else
			{
				ptr=ptr->link;
			}
		}
		if (loc!=NULL)
		{
			cout<<"\nItem found at:"<<endl<<loc;
		}
	    else
		{
			cout<<"\nItem Not found";
	    }
	}
};
void main()
{
	clrscr();
	node n1;
	n1.insert(10);
	n1.insert(20);
	n1.insert(30);
	cout<<"Link List:\n";
	n1.display();
	n1.search(10);
	getch();
}
