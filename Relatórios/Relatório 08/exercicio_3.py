from abc import ABC, abstractmethod

class Persona:

    def __init__(self, nome: str, arcano: str):
        self.nome = nome
        self.arcano = arcano

    def invocar(self):
        print(f"Nome: {self.nome} | Arcano: {self.arcano}")

class Aliado:

    def __init__(self, nomeReal: str, codinome: str):
        self.nomeReal = nomeReal
        self.codinome = codinome

class Lider:

    def __init__(self, codinome: str):
        self.codinome = codinome
        self.persona = Persona("Arsène", "Louco")
        self._equipe = []

    def recrutar(self, aliado: Aliado):
        self._equipe.append(aliado)

    def infiltrar(self, palacio):
        print(f"Infiltrando no Palácio de {palacio}...")
        print("Invocando persona:")
        self.persona.invocar()

        print("--- Equipe ---")
        for aliado in self._equipe:
            print(f"Nome: {aliado.nomeReal} | Codinome: {aliado.codinome}")
            
if __name__ == "__main__":

    a1 = Aliado("Pompompurin", "Golden")
    a2 = Aliado("Cinnamoroll", "Canela")
    a3 = Aliado("Hello Kitty", "Kitty")

    l = Lider("Pinguim")

    l.recrutar(a1)
    l.recrutar(a2)
    l.recrutar(a3)

    l.infiltrar("Badtz")

    # A composição é quando uma parte não pode existir sem o todo, no caso do meu programa, 
	# a persona "Arsène" só existe se existir algum líder*/ 

	# Já na agregação, é quando, uma parte faz parte do todo, mas ela é independente dele. Nesse caso,
	# os aliados fazem parte de uma equipe criada dentro de líder, mas continuam existindo mesmo se ele não existir*/

    
    
