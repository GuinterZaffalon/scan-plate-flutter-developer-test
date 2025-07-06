# Plate Recognizer


> Aplicativo em Flutter para fazer o reconhecimento de carros atráves de uma foto, utilizando a api do Plate Recognizer.

![Demonstração da aplicação](demo.gif)

## 📦 Instalação

Para instalar o Plate Recognizer, siga estas etapas:

1. Clone o projeto
2. Crie um arquivo .env na raiz do projeto e coloque seu token neste formato:
```
API_KEY = {SEU TOKEN}
```
3. Rode os seguintes comandos no terminal:
```
flutter pub get
flutter apk build --release
```

## 🏛️ Arquitetura

O projeto foi desenvolvido seguindo as boas práticas do modelo de arquitetura MVVM, neste padrão a View é completamente separada do Model, não contendo nenhuma regra de negócio! Sempre totalmente reativa ao que é trazido a ela. Foi implementado na seguinte forma:

-> View: Neste diretório é alocado todos os arquivos referentes ao visual da aplicação, seja telas ou componentes, não contendo nenhuma regra de negócio. Apenas manipula os estados e cria as instâncias para chamar o ViewModel

-> ViewModel: Aqui se encontra a camada que contém as regras de negócio. É responsável por receber os dados brutos vindo do Model e os formatar, enviando prontos para a View. Garante que o Model fique isolado da View e aumenta a confiabilidade da resposta, assim melhorando a manutenibilidade.

-> Model: Todos os requests são feitos aqui, manipulação da rota, códigos http e paramêtros, contendo também a manipulação de autorizações e seus tokens. Da mesma forma que ele recebe o conteúdo, envia para o ViewModel o tratar. 

## 🎨 Design

Todo a UI da aplicação foi planejada pensando no método 70, 20, 10, o que se refere a porcentagens da utilização de cada cor na interface. O Figma contendo a paleta de cores e o estudo de toda UX/UI do projeto está disponível neste link: https://www.figma.com/design/COQqv77WMxOLCABBGlORUU/Untitled?node-id=0-1&t=DduXRH4GiMuSnGMt-1

## Erros e soluções!

Por possuir uma conta gratuita, a API do Plate Recognizer não me permitia usar o paramêtro mmc=true, dessa forma eu não conseguiria ter acesso aos campos que informam o Modelo, Marca e Cor. Afim de não ficar bloqueado no desenvolvimento da aplicação, usei o exemplo de retorno oficial na documentação que foi passado no teste técnico, acessível neste link: https://guides.platerecognizer.com/docs/snapshot/api-reference/#response. Dessa forma eu pude criar uma camada de mapeamento do retorno da API e enviar os dados necessários para a View, não ficando bloqueado. Por ser a documentação oficial, caso o App seja testado com um token que esteja com acesso ao MMC, funcionará corretamente!