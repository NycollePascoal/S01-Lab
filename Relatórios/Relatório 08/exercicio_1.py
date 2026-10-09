from abc import ABC, abstractmethod

class MortoVivo:

    def __init__(self, nome: str, almas: int, estus: int):
        self.nome = nome
        self._almas = almas
        self.__estus = estus

    def get_estus(self):
        return self.__estus

    def set_estus(self, novo_estus):
        if novo_estus >=0 and novo_estus <=10:
            self.__estus = novo_estus
        else:
            print("Quantidade de Estus Inválida!")

    def mostrar_status(self):
        return f"Morto-Vivo: {self.nome} | Almas: {self._almas} | Estus: {self.__estus}"
        
class Clerigo(MortoVivo):

    def __init__(self, nome: str, almas: int, estus: int, milagre: str):
        super().__init__(nome, almas, estus)
        self.milagre = milagre
    
    def mostrar_status(self):
        return super().mostrar_status() + f" | Milagre : {self.milagre}"


if __name__ == "__main__":
    cler = Clerigo("Zé", 700, 4, "Força")
    print(cler.mostrar_status())
    
    cler.set_estus(15)
    cler.set_estus(10)
    print(cler.mostrar_status())

    print(cler.__estus)

    # Erro encontrado:
    # AttributeError: 'Clerigo' object has no attribute '__estus'. Did you mean: 'get_estus'?
