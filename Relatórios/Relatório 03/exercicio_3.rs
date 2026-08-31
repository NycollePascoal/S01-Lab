use std::io;

fn imprimir_terminados_em(digito: i32, limite_inferior: i32, limite_superior: i32){
    for i in limite_inferior..=limite_superior{
        if i %10 == digito{
            println!("{}", i)
        }
    }
}

fn main() {
    let mut e1 = String::new();
    let mut e2 = String::new();
    let mut e3 = String::new();

    println!("Insira o digito final desejado (de 0 a 9):");
    io::stdin().read_line(&mut e1).expect("Erro ao ler");
    let digito: i32 = e1.trim().parse().unwrap_or(0);
    println!("Insira o limite inferior:");
    io::stdin().read_line(&mut e2).expect("Erro ao ler");
    let lim_inf: i32 = e2.trim().parse().unwrap_or(0);
    println!("Insira o limite superior:");
    io::stdin().read_line(&mut e3).expect("Erro ao ler");
    let lim_sup: i32 = e3.trim().parse().unwrap_or(0);
    
    println!("--- Numeros no intervalo terminados em {} ---", digito);
    imprimir_terminados_em(digito, lim_inf, lim_sup);
}
