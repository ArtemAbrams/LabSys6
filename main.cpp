#include <bits/stdc++.h>
using namespace std;
int sumOfDivisors(int n){
    int sum = 0;
    int sum_2 = 0;
    for(int i = 1; i<=n; i++){
        sum_2=sum;
        if(n%i==0){
            sum_2 = sum_2 + i;
        }
        sum = sum_2;
    }
    return sum;
}
int main() {
    for(int i = 20; i<100; i++){
        for(int j = 500; j<1000 ;j++){
            cout<<"Sum of division "<<sumOfDivisors(i)+ sumOfDivisors(j)<<endl;
        }
    }
    return 0;
}
