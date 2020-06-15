# hps
Trabalho de facul

Membros
- Marcos
- Dayvide
- Felipe
- Arthur
- Gilberto
- Henrique

Data 14/março

Para iniciar a aplicação, baixar o projeto e abrir um terminal na raiz do projeto

Rodar no terminal:

```
bundle install
```
Quando acontecer algum erro envolvendo o JavaScript runtime, deve ser instalado o NodeJS

```
sudo apt-get install nodejs
```

```
rails db:migrate db:seed
```

e por fim rodar o servidor

```
rails s
```


Para configurar o git, rode os seguintes comandos:

```
git config --global user.name "Emma Paris"
```
```
git config --global user.email "eparis@atlassian.com"
```

Passos para subir as alterações para o repositorio:

1o - Pegar alterações do servidor
```
git pull origin master --rebase
```
2o - Fazer as alterações nos arquivos

3o - Rodar o git add 
```
git add .
```
4o - Associar a suas alterações à uma mensagem
```
git commit -m "escrever a mensagem aqui"
```
5o - Garantir que não tem nenhuma alteração no servidor novamente
```
git pull origin master --rebase
```
6o - Subir as alterações para o servidor
```
git push origin master
```

Caso não conseguir instalar via bundler por causa da gem 'pg'
rodar o comando:
sudo apt-get install libpq-dev

