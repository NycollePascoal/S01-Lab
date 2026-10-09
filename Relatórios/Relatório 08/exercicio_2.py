from abc import ABC, abstractmethod

class HeroiOverwatch:
    
    def __init__(self, codinome: str, funcao: str):
        self.codinome = codinome
        self.funcao = funcao

    def usar_suprema(self):
        return f"{self.codinome} está usando uma suprema!"

class HeroiTanque(HeroiOverwatch):

    def usar_suprema(self):
        return f"{self.codinome} está usando uma suprema de Tanque!"

class HeroiSuporte(HeroiOverwatch):

    def usar_suprema(self):
        return f"{self.codinome} está usando uma suprema de Suporte!"

    def curar_equipe(self):
        return f"{self.codinome} curou a equipe!"

if __name__ == "__main__":

    equipe: list[HeroiOverwatch] = [HeroiOverwatch("Velma", "Dano"), HeroiTanque("Scooby-Doo", "Tanque"), HeroiSuporte("Salsicha", "Suporte")]  

    for heroi in equipe:
        print(heroi.usar_suprema())
        if isinstance(heroi, HeroiSuporte):
            print(heroi.curar_equipe())

    

