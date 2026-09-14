#include <iostream>
using namespace std;

int main(){
    float capm = 0.0, peso_carregado = 0.0, atual = 0.0, peso_removido = 0.0, disponivel = 0.0;
    int op = 0;

    cout<<"Informe a capacidade máxima de carga do drone (kg):"<<endl;
    cin>>capm;
    while(op != 4){
        cout<<"===  SISTEMA DE CARGA DO DRONE ==="<<endl;
        cout<<"1 - Verificar Carga"<<endl;
        cout<<"2 - Carregar Pacote"<<endl;
        cout<<"3 - Descarregar Pacote"<<endl;
        cout<<"4 - Encerrar uma Operação"<<endl;
        cout<<"Escolha uma opção: "<<endl;
        cin>>op;

        if(op == 1){
            cout<<"Carga atual: "<<atual<<" kg/ "<<capm<<endl;
            disponivel = capm - atual;
            cout<<"Espaço disponível: "<<disponivel<<" kg"<<endl;
        }
        else if(op == 2){
            cout<<"Insira o peso do pacote a ser carregado (kg): "<<endl;
            cin>>peso_carregado;
            if ((atual + peso_carregado)>capm){
                cout<<"Alerta: peso máximo de decolagem excedido! Operação cancelada."<<endl;
            }
            else{
                cout<<"Pacote adicionado com sucesso!"<<endl;
                atual+= peso_carregado;
            }
        }
        else if(op == 3){
            cout<<"Insira o peso do pacote a ser removido (kg): "<<endl;
            cin>>peso_removido;
            if ((atual-peso_removido)<0){
                cout<<"Alerta: não é permitido remover mais peso do que o que já está carregado! Operação cancelada."<<endl;
            }
            else{
                cout<<"Pacote removido com sucesso!"<<endl;
                atual -= peso_removido;
            }
        }
        else if(op == 4){
            cout<<"Encerrando sistema de telemetria..."<<endl;
        }

    }

    return 0;
}
