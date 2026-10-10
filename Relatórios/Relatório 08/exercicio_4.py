from abc import ABC, abstractmethod

class IUnidadeDeRede(ABC):

    @abstractmethod
    def executar_invasao(self) :
        pass

class Cyberdeck:
    
    def __init__(self, modelo: str):
        self.modelo = modelo

class OperadorNetrunner(IUnidadeDeRede):

    def __init__(self, nome: str, modelo: str):
        self.nome = nome
        self.modelo = Cyberdeck(modelo)

    def executar_invasao(self):
        print(f"{self.nome}, com o modelo {self.modelo.modelo}, está quebrando o gelo (ICE) de um servidor.")

class DroneDeVigilancia(IUnidadeDeRede):
    
    def __init__ (self, codigo: int):
        self.codigo = codigo

    def executar_invasao(self):
        print(f"O drone de código {self.codigo} está interceptando o sinal da rede.")

class CelulaHacker:
    
    def __init__ (self, nome: str, membros: list[IUnidadeDeRede]):
        self.nome = nome
        self.membros = membros

    def iniciar_ataque(self):
        print(f"Célula: {self.nome}")
        for m in self.membros:
            m.executar_invasao()

if __name__ == "__main__":

    n1 = OperadorNetrunner("Ruan Patrick", "Computador da Xuxa")
    d1 = DroneDeVigilancia("8")
    
    lista = [n1, d1]

    c1 = CelulaHacker("Ultra Secreta", lista)

    c1.iniciar_ataque()

    #rede = IUnidadeDeRede()
    # Erro Observado:
    # Can't instantiate abstract class IUnidadeDeRede without an implementation for abstract method 'executar_invasao'
