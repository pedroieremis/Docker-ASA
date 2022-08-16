# Projeto-ASA-IFRN  :desktop_computer:

### Finalidade:

Repositório onde vamos armazenar o necessário para o projeto da disciplina ASA, como arquivos de configuração, scripts de automatização, programas etc. Tudo isso para o desenvolvimento de um serviço usando containers Docker.

Em Produção...

#### Componentes:

- Pedro Iéremis Brito de Medeiros

###### Para obter o repositório na sua máquina:

```shell
git clone https://github.com/PedroIeremis/ASA.git

cd ASA

ls ou dir 
```

___Dicas:___

1. Só é possível efetuar esta primeira funcionalidade se tiver instalado o *git* na máquina.

2. Sempre que for executar esteja com o *docker* rodando e execute a partir da pasta pai, principal.

---

#### DNS - BIND9:

- Atualmente no processo do projeto, estamos usando o bind9 como servidor dns. Siga até a pasta __dns_bind9__ para visualizar o README.md especificamente sobre ele. Nosso domínio é o *ac.asa.br*, o qual está dentro do *asa.br* referente ao projeto do link a seguir: https://github.com/CostaPauloEdu/dns-bind9

#### HTML - NGINX:

- No momento temos uma pasta ___html___ de exemplo apenas, com a finalidade principal de usarmos para testar os demais serviços. Siga até a pasta ___html___ para mais detalhes com o README.md de lá.

#### MAIL - DOVECOT & POSTFIX:

- Atualmente para o projeto estamos usando como servidores de configurações de email o Dovecot e Postifx. Com apenas algumas configurações. Mais informações sobre os mesmo, se encontra na pasta __server-mails__.

#### WEBMAIL - RAINLOOP:

- Para nossa ambientação ao servidor de Webmail, que irá receber as configurações, ajustes do dns e do servidor de configurações de email, estaremos usando o Webmail Rainloop. Para mais informações sobre o mesmo, dirija-se até a pasta ___webmail___.

#### PROXY - NGINX:

- Estaremos agora utilizando um servidor proxy, ao qual se fará de intermediário entre o web1 comum inicialmente, que no contexto é o ___html___ e o servidor web2, que no contexto é o ___webmail___. Novamente vá até a pasta ___proxy___ para mais informações sobre o mesmo.

---

#### Subindo Serviços

Nesta pasta principal no momento há quatro scripts, um **docker-compose.yml**, **up-services.sh**, **down-services.sh** e **adm-services.sh**. O que deve ser executado é o **up-services.sh**, pois a partir dele será pedida umas informações ajustes, como sua rede e o IP do Host hospedeiro. Basta seta-los corretamente que o script fará o resto, como subistituições no arquivos  e inclusive ajustando de forma reversa as cconfigurações no dns. Após ele finalizar, aponte seu o IP do host hospedeiro como dns e teste os servços.

#### Derrubando Serviços

Para finalizar tudo, basta que execute o script **down-services.sh**, que ele fará todo o resto, dando um down no compose e ainda sim deletando os containers por garantia e também as imagens, caso não deseje esta derrubada bruta, mude as configurações dentro do script a seu gosto.

#### Administrando Serviços

O script **adm-services.sh** possui funcionalidades báscias de administração dos containers, visualização de informações e o que é de suma importância caso mude as configurações do dns, há como restarta-lo. São 8 opções no total, além da opção 0 de encerrar o script.

#### Obs:

Caso os scripts estiverem dando algum problema de execução, pode ser apenas pelo pulo de linha. O Linux usa um padrão chamado de LF e quando direciono os Updates para o repositório, ele transforma o pulo de linha em CRFL normalmente, basta mudar isso, no VsCode por exemplo, lá em baixo é possível enxergar esta opção e mudar.
