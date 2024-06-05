def iniciar_menu(produtos = [])
    loop do
        mensagem_amarelo("======= Escolha uma das opções abaixo: =========", false, false)
        mensagem_azul("#{azul("1")} - Cadastro de produtos", false, false)
        mensagem_azul("#{azul("2")} - Lista de produtos", false, false)
        mensagem_azul("#{azul("3")} - Retirada do estoque", false, false)
        mensagem_azul("#{azul("4")} - Sair", false, false)

        opcao = gets.to_i

        case opcao
        when 1
            cadastrar_produto(produtos)
        when 2
            listar_produtos(produtos)
        when 3
            retirar_estoque(produtos)
        when 4
            limpar_tela
            exit
        else
            mensagem "Opção inválida"
        end
    end
end