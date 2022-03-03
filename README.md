# Thumbvid Creator v1.0

## Objetivo 

Criação de thumbnails de videos a partir de imagens com extensão png, jpg, jpeg.


## Antes de começar a usar 

Certifique-se que as imagens de origem possuem a extensão: png (preferencial), jpg ou jpeg.  


## Instruções de utilização 

1. Coloque as imagens que irão originar os thumbs dentro da pasta entrada
2. Clique 2 vezes no ícone "Criar thumbs"
3. Após o script terminar de rodar, pressione qualquer tecla para fechar a janela.
4. Os thumbs estarão disponíveis na pasta de saída. 
5. Mova os thumbs da pasta de saída para um local de sua preferência. 
6. Limpe a pasta de entrada - O script não altera os arquivos originais.  


## Funcionamento

O programa realiza o redimensionamento (resize) da imagem original para 535x305 pixels. 
É mantida a proporção de altura (305 pixels) que corresponde ao menor lado da imagem. 
É utilizada uma opção de extensão para garantir que a imagem irá preencher 100% do tamanho especificado.
É feito corte (crop) nas laterais da imagem afim de evitar distorção no redimensionamento para 535x305. 
O corte ocorre proporcionalmente nas laterais do maior lado da imagem. 
É adicionado (fill) 50% de black sobre a imagem para gerar efeito de opacidade para preto. 
É adicionada a imagem (compose over) de 1 botão de play c/ fundo transparente SOBRE a imagem redimensionada opaca gerada. 
A imagem do botão é centralizada sobre a imagem redimensionada. 
A imagem final é gravada na pasta saída.
O programa repete a operação para todas as imagens da pasta entrada.
 

## Changelog
 
24/02/22 - Criação do script de conversão de arquivos png
25/02/22 - Inclusão de opção de 50% de opacidade para black na imagem final
25/02/22 - Correção que possibilita realizar o resize mantendo a proporção de altura e efetuando crop nas laterais. 
26/02/22 - Inclusão de conversão para arquivos extensão jpg e jpeg
26/02/22 - Limpeza do diretório do programa: Exclusão de utilitários e arquivos não utilizados no processo de conversão. 
26/02/22 - Correção no path dos arquivos de programa de conversão. 
26/02/22 - Simplificação do Leia-me.txt
26/02/22 - Inclusão dos termos de licenciamento no leia-me.txt

## Licenciamento

Este script de conversão utiliza o sotware livre ImageMagick criado e distribuído por
ImageMagick  Studio LLC sob os termos de licença Apache 2.0. 
O ImageMagick está disponível em https://imagemagick.org/

ImageMagick is free software delivered as a ready-to-run binary distribution or as source code
that you may use, copy, modify, and distribute in both open and proprietary applications. 
It is distributed under a derived Apache 2.0 license.


### TO-DO AND KNOW BUGS

1. Bug: ao iniciar geração mensagem somente cita arquivos png.
2. Otimizar arquivo final para reduzir o tamanho em kb sem perda de qualidade.
3. Interface gráfica.
4. Opção de gerar thumbs com ou sem botão play.
5. Opção de gerar thumbs com e sem opacidade. 
6. Opção de controlar o grau de opacidade do arquivo final. 
7. Opção de escolher a cor de opacidade. 
8. Opção de escolher diversos tipos de imagens botão play.
9. Opção de gerar screnshot de arquivos de video.  
10. Versão para linux.
11. Modernizar a linguagem de script para python.

--
Alan Santos - 25/02/2022