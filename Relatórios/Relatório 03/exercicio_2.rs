use std::io;

fn acertou_o_alvo(palpite: i32, numero_secreto: i32) -> bool{
    let mut diferenca;
    diferenca = palpite - numero_secreto;
    if diferenca < 0{
        diferenca = diferenca * -1;
    }

    diferenca <=5
}

fn main() {
    let numero_secreto: i32 = 87;
    let mut resultado;
    let mut unidades;

    loop{
        let mut entrada = String::new();

        println!("Digite seu palpite: ");
        io::stdin().read_line(&mut entrada).expect("Erro ao ler");
        let mut palpite: i32 = entrada.trim().parse().unwrap_or(0);
        resultado = acertou_o_alvo(palpite, numero_secreto);
        if resultado{
            unidades = numero_secreto - palpite;
            if unidades < 0{
                unidades = unidades * -1;
            }
            println!("Parabens voce acertou o alvo!\nFicou apenas {} unidades do numero secreto ({})", unidades, numero_secreto);
            break;
        }
        else{
            println!("Voce passou longe! Tente novamente.");
        }
    }
    
}
