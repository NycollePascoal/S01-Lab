#include <iostream>
#include <string>
#include <vector>

using namespace std;

class MembroInatel{
    protected:
        string nome;
    
    public:
        MembroInatel(string n) : nome(n) {}

        virtual void seApresentar(){
            cout<<"Sou um membro da comunidade Inatel: "<<nome<<endl;
        }

        virtual ~MembroInatel() {}
};

class Aluno: public MembroInatel{
    protected:
        string curso;

    public:
        Aluno(string n, string c) : MembroInatel(n), curso(c) {}

        void seApresentar() override{
            cout<<"Meu nome é "<<nome<<" e estudo no curso de "<<curso<<"."<<endl;
        }
};

class Professor: public MembroInatel{
    protected:
        string disciplina; 

    public:
        Professor(string n, string d) : MembroInatel(n), disciplina(d) {}
    
        void seApresentar() override{
            cout<<"Meu nome é "<<nome<<" e leciono a disciplina de "<<disciplina<<"."<<endl;
        }
};

int main() 
{
    vector<MembroInatel*> inatelino;

    inatelino.push_back(new Aluno("Nycolle", "Engenharia de Software"));
    inatelino.push_back(new Professor("Daniela", "Cálculo 1"));

    cout<<"--- Membros do INATEL ---\n"<<endl;

    for (MembroInatel* i : inatelino) {
        i->seApresentar();
    }

    for (MembroInatel* i : inatelino) {
        delete i;
    }

    return 0;
}
