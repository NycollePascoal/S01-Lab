package main
import "fmt"

func ValidarCodigoRastreio(codigo string)(bool, string){
	if len(codigo) == 10{
		mensagem := "\nCódigo de rastreio registrado no sistema!"
		return true, mensagem
	} else {
		mensagem := "\nErro: o código de rastreio deve ter exatamente 10 caracteres."
		return false, mensagem
	}
}

func main() {
	var codigo string

	fmt.Printf("Insira o código de rastreio:")
	fmt.Scanln(&codigo)

	aceito, resultado := ValidarCodigoRastreio(codigo);
	fmt.Printf(resultado)
	for aceito == false{
		fmt.Printf("\nInsira o código de rastreio:")
		fmt.Scanln(&codigo)
		aceito, resultado = ValidarCodigoRastreio(codigo);
		fmt.Printf(resultado)
	}

}
