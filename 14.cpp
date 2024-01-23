/* Write a C++ program to implement a class called Date that has private 
member variables for day, month, and year. Include member functions to 
set and get these variables, as well as to validate if the date is valid.
*/
#include<iostream>
using namespace std;
class date{
	private:
		int day,month,year,leap;
	public:	
		void get_date(int x,int y,int z){
			day=x;
			month=y;
			year=z;
		}
		
		void validation(){
		
			if(month>=1 && month<=12){
				if(day>=1 && day<=31){
					if(month==4 || month==6 || month==9 || month==11 || month == 2){
						if(day>30){
							cout<<"\n invalid day";
						}else{
							if(month == 2){
							leap=year%4;
							if(leap!=0){
								if(day>28){
									cout<<"\n invalid day";
								}
						}
						}
						}
						
					}
				}else{
					cout<<"\n invalid day";
				}	
				
			}
			else{
				cout<<"\n invalid month";
			}	
			}
			
//			if(year>1){
//				cout<<"\n invalid year";		
//			}
			
		
};
int main(){
	date d1;
	d1.get_date(28,2,2017);
	d1.validation();
}








