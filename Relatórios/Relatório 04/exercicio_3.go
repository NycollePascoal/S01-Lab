package main
import "fmt"

func gerarEscalaPlantao(n int){
	dia := 1
	fmt.Println("--- Escala de Plantão Técnico ---")
	for i:= 1; i < n+1; i++{
		fmt.Printf("Plantão %d: Dia %d do mês\n", i, dia)
		dia = dia + 4
	}
}

func main() {
	var num int

	fmt.Println("Insira a quantidade de plantões necessários:")
	fmt.Scanln(&num)

	gerarEscalaPlantao(num)
}
