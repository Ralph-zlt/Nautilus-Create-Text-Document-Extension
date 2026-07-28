Extensão do Nautilus para Criar Documento de Texto

🇺🇸 English: README.md

Uma extensão leve para o Nautilus que adiciona a opção "Novo Documento de Texto..." ao menu de contexto ao clicar com o botão direito em uma área vazia de uma pasta.

Ao selecionar essa opção, uma janela do Zenity solicita o nome do arquivo e cria um documento de texto vazio no diretório atual.

Recursos
Adiciona a opção "Novo Documento de Texto..." ao Nautilus.
Utiliza o Zenity para exibir uma janela gráfica de entrada.
Cria arquivos de texto vazios na pasta atual.
Instalação rápida com um único script Shell.
Requisitos
Nautilus
nautilus-python
zenity
Instalação

Clone o repositório:

git clone https://github.com/Ralph-zlt/Nautilus-Create-Text-Document-Extension.git
cd Nautilus-Create-Text-Document-Extension


Torne o script executável:

chmod +x nautilusdocext.sh


Execute o instalador:

./nautilusdocext.sh


O instalador reinicia o Nautilus automaticamente.

Como usar
Abra qualquer pasta no Nautilus.
Clique com o botão direito em uma área vazia da pasta.
Selecione "Novo Documento de Texto...".
Digite o nome desejado para o arquivo.
Clique em OK.

Um arquivo vazio será criado no diretório atual.

Como funciona

O instalador cria uma extensão em Python no diretório:

~/.local/share/nautilus-python/extensions/


A extensão integra-se ao Nautilus por meio do nautilus-python e utiliza o Zenity para exibir uma janela gráfica onde o usuário informa o nome do novo arquivo.

Licença

Este projeto está licenciado sob a licença MIT.
