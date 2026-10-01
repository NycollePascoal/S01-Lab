#include <iostream>
#include <string>
using namespace std;

class LinkSocial{
    private:
        string nome;
        string arcana;
        int rank;

    public:

    string getNome(){
        return nome;
    }

    string getArcana(){
        return arcana;
    }

    int getRank(){
        return rank;
    }

    void setNome(string n){
        nome = n;
    }

    void setArcana(string a){
        arcana = a;
    }

    void setRank(int r){
        rank = r;
    }

    void subirRank(){
        rank++; 
    }


};

int main() 
{
    LinkSocial social;

    social.setNome("Akinari Kamiki");
    social.setArcana("O Sol");
    social.getRank(2);

    cout<<"--- Link Social --- "<<endl;
    cout<<"Nome: "<<social.getNome()<<endl;
    cout<<"Arcana: "<<social.getArcana()<<endl;
    cout<<"Rank: "<<social.getRank()<<endl;

    cout<<"\nParece que alguns dados foram atualizados...\n"<<endl;
    social.subirRank();

    cout<<"--- Link Social Atualizado ---"<<endl;
    cout<<"Nome: "<<social.getNome()<<endl;
    cout<<"Arcana: "<<social.getArcana()<<endl;
    cout<<"Rank: "<<social.getRank()<<endl;

    return 0;

}
