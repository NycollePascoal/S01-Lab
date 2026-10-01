#include <iostream>
#include <string>
using namespace std;

//criando classe
class Banda{
    //atributos da banda
    protected:
        string nome;
        int integrantes;
        float potenciaSom;
        int energia;

    //metodo de duelo
    public:
        Banda(string n, int i, float pot, int e) {
            nome = n;
            integrantes = i;
            potenciaSom = pot;
            energia = e;
        }

        virtual void duelar(Banda &rival){
            cout<<"Duelo de Bandas"<<endl;
            cout<<nome<<" esta duelando contra "<<rival.nome<<"!"<<endl;

            //"subtrair o valor da potencia som da energia da banda rival"
            rival.energia -= potenciaSom;
        }

        //mostra o status
        virtual void status(const Banda &rival) const{
            cout<<"Banda Desafiante: "<<nome<<endl;
            cout<<"Integrantes: "<<integrantes<<endl;
            cout<<"Energia: "<<energia<<endl;
            cout<<"Potência de Som: "<<potenciaSom<<endl;

            cout<<"\nBanda Desafiada: "<<rival.nome<<endl;
            cout<<"Integrantes: "<<rival.integrantes<<endl;
            cout<<"Energia: "<<rival.energia<<endl;
            cout<<"Potência de Som: "<<rival.potenciaSom<<endl;

        }
};

int main(){
    //instanciando e atribuindo valores
    Banda b1("Lagum", 4, 1000.0f, 500);
    Banda b2("O Terno", 3, 700.0f, 400);

    //criei um método por conta dos atributos serem "protected" então não ia conseguir printar direto aqui
    cout<<"\n--- Status Inciais de Cada Banda ---"<<endl;
    b1.status(b2);

    cout<<"\n----------------------------------"<<endl;

    b1.duelar(b2);

    cout<<"----------------------------------"<<endl;

    cout<<"\n--- Resultados Após o Duelo ---"<<endl;

    b1.status(b2);

}
