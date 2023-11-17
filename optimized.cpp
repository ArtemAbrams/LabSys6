#include <bits/stdc++.h>
using namespace std;
int sumOfDivisors(int n){
    int sum = 0;
    for(int i = 1; i<=n; i++){
        if(n%i==0){
            sum = sum + i;
        }
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
