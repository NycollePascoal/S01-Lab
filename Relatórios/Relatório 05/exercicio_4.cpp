#include <iostream>
using namespace std;

int main(){
    int matriz_solar[5][5] = {0};
    int op = 0, fileira = 0, coluna = 0, ativa = 0, inativa = 0;
    float cap_op = 0.0;

    while (op != 3){
        cout<<"=== TELEMETRIA DO PAINEL SOLAR ==="<<endl;
        cout<<"1 - Ativar Célula"<<endl;
        cout<<"2 - Ver Mapa da Matriz"<<endl;
        cout<<"3 - Sair"<<endl;
        cout<<"Escolha uma opção: "<<endl;
        cin>>op;

        if(op == 1){
            cout<<"Digite a fileira (0 - 4): "<<endl;
            cin>>fileira;
            cout<<"Digite a coluna (0 - 4): "<<endl;
            cin>>coluna;

            if(matriz_solar[fileira][coluna] == 0){
                matriz_solar[fileira][coluna] = 1;
                cout<<"Sucesso: Célula solar ativada!"<<endl;
            }
            else{
                cout<<"Erro: Célula solar já está em operação!"<<endl;
            }

        }
        else if(op == 2){
            cout<<"--- Mapa da Matriz Solar ---"<<endl;
            for(int i = 0; i<5; i++){
                for(int j = 0; j<5; j++){
                    cout<<"["<< matriz_solar[i][j]<<"] ";
                }
                cout<<"\n";
            }
        }
        else if(op == 3){
            for(int i = 0; i<5; i++){
                for(int j = 0; j<5; j++){
                    if (matriz_solar[i][j] == 0){
                        inativa++;
                    }
                    else{
                        ativa++;
                    }
                }
            }

            cap_op = (ativa/25.0)*100.0;
            cout<<"=== RELATÓRIO FINAL DE OPERAÇÃO ==="<<endl;
            cout<<"Total de células ATIVAS: "<<ativa<<endl;
            cout<<"Total de células INATIVAS: "<<inativa<<endl;
            cout<<"Capacidade Operacional: "<<cap_op<<"%"<<endl;

        }
    }

    return 0;
}
