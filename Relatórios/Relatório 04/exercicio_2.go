package main
import "fmt"

func main() {
	var trimestre1 int
	var trimestre2 int
	var trimestre3 int 
	var soma int

	fmt.Println("Insira as vendas do 1º trimestre:")
	fmt.Scanln(&trimestre1)
	fmt.Println("Insira as vendas do 2º trimestre:")
	fmt.Scanln(&trimestre2)
	fmt.Println("Insira as vendas do 3º trimestre:")
	fmt.Scanln(&trimestre3)

	soma = trimestre1 + trimestre2 + trimestre3
	fmt.Printf("\nTotal de vendas: %d unidades\n", soma)

	switch{
		case soma >= 250:
			fmt.Println("Classificação: Categoria Top Seller")
		case soma >= 180 && soma <= 249:
			fmt.Println("Classificação: Categoria Sênior")
		case soma >=100 && soma <= 179:
			fmt.Println("Classificação: Categoria Pleno")
		default:
			fmt.Println("Meta mínima anual não atingida!")
	}
}
