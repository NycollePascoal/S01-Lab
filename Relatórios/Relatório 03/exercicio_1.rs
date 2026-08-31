use std::io;

fn validar_placa(placa:&str) -> bool{
    let mut letras = 0;
    let mut nums = 0;
    if placa.len() >= 7{
        for i in placa.chars(){
            if i.is_ascii_uppercase(){
                letras+= 1;
            }
            else if i.is_numeric(){
                nums += 1;
            }
        }
        if letras >=4 && nums >=2{
            true
        }
        else{
            false
        }  
    }
    else{
        false
    }
}

fn main() {
    let mut placa = String::new();
    let mut validacao;
    loop{
        println!("Insira a placa do veiculo:");
        io::stdin().read_line(&mut placa).expect("Erro ao ler");
        validacao = validar_placa(placa.trim());
        if validacao{
            println!("Placa cadastrada no sistema!");
            break;
        }
        else{
            println!("Placa invalida. Tente novamente!");
        }
    }
    
}
