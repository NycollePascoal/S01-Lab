#include <iostream>
using namespace std;

float calcular_confiabilidade_sistema(float probabilidades[], int tamanho){
    float prob_conjunta = 1.0; 
    for(int i = 0; i<tamanho; i++){
        prob_conjunta = prob_conjunta * probabilidades[i];
    }

    return prob_conjunta;
}

int main(){
    int n;
    float prob[100], confia;

    cout<<"Insira a quantidade de componentes do sistema:"<<endl;
    cin>>n;
    for(int i = 0; i<n; i++){
        cout<<"Insira a quantidade do componente "<<i + 1<<" (ex: 0.95):"<<endl;
        cin>>prob[i];
    }

    confia = calcular_confiabilidade_sistema(prob, n);
    cout<<"Confiabilidade total do sistema: "<<confia<<" ("<<confia*100<<"%)"<<endl;

    return 0;
}
