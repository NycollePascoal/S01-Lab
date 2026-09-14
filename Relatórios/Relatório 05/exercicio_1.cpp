#include <iostream>
using namespace std;

int combinar_equipes(int n){
    if(n <= 0){   //coloquei <= para casos de numeros negativos
        return 0;
    }
    else if(n == 1){
        return 1;
    }
    else{
        return combinar_equipes(n - 1) + combinar_equipes(n - 2);
    }
}

int main(){
    int n; 

    cout<<"Insira o tamanho do chaveamento (n):"<<endl;
    cin>>n;
    cout<<"Total de cenários de confrontos possíveis: "<<combinar_equipes(n)<<endl;

    return 0;
}
