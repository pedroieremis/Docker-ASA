# Administração de Sistemas Abertos - ASA  :desktop_computer:

### Finalidade:

Repositório onde vamos armazenar o necessário para o projeto final da disciplina ASA, como arquivos de configuração, scripts de automatização, programas etc. Tudo isso para o desenvolvimento de serviços usando containers Docker.

Ainda em Produção...

###### Para obter o repositório na sua máquina:

```shell
git clone https://github.com/PedroIeremis/ASA.git

cd ASA

ls ou dir 
```

___Dicas:___

1. Só é possível efetuar esta primeira funcionalidade se tiver instalado o *git* na máquina.

2. Sempre que for executar esteja com o *docker* rodando e execute a partir da pasta principal, é a que estamos.

---

#### DNS - BIND9:

- Atualmente no processo do projeto, estamos usando o bind9 como servidor dns. Siga até a pasta __dns__ para visualizar o README.md especificamente sobre ele. O domínio é o *ac.asa.br*.

#### WEB - NGINX:

- Dentro da pasta ___web___  vai ter arquivos para um serviço com servidor web usando da nginx. Serve mais como exemplo de página web principal, para funcionar com o proxy e o dns. Siga até a pasta ___web___ para mais detalhes com o README.md de lá.

#### MAIL - DOVECOT & POSTFIX:

- Atualmente para o projeto está sendo usado como servidores de configurações de email, o Dovecot e o Postifx. Com apenas algumas configurações. Mais informações sobre os mesmo, se encontra na pasta __server-mails__.

#### WEBMAIL - RAINLOOP:

- Para a ambientação ao servidor de Webmail, que irá receber as configurações, ajustes do dns e do servidor de configurações de email, está sendo usado o Webmail Rainloop. Para mais informações sobre o mesmo, dirija-se até a pasta ___webmail___.

#### PROXY - NGINX:

- Agora utilizando um servidor proxy, ao qual se fará de intermediário entre o __web__ e o ___webmail___. Novamente vá até a pasta ___proxy___ para mais informações sobre o mesmo.

---

#### Subindo Serviços

Nesta pasta principal no momento há quatro scripts, um **docker-compose.yml**, **up-services.sh**, **down-services.sh** e **adm-services.sh**. O que deve ser executado para subir os serviços é o **up-services.sh**, pois a partir dele será pedida umas informações, como sua rede e o IP do Host hospedeiro. Basta seta-los corretamente que o script fará o resto, como subistituições no arquivos  e inclusive ajustando de forma reversa as configurações, para o dns. Após ele finalizar totalmente, aponte seu o IP do host hospedeiro como dns e teste os servços.

#### Derrubando Serviços

Para finalizar tudo, basta que execute o script **down-services.sh**, que ele fará todo o resto, dando um down no compose e ainda sim deletando os containers por garantia e também as imagens, caso não deseje esta derrubada bruta, mude as configurações dentro do script a seu gosto.

#### Administrando Serviços

O script **adm-services.sh** possui funcionalidades báscias de administração dos containers, visualização de informações e o que é de suma importância caso mude as configurações do dns, já que há mapeamento de volumes, há como restarta-lo daqiu de fora. São 8 opções no total, além da opção 0 de encerrar o script.

#### Obs:

Caso os scripts estiverem dando algum problema na chamda de execução, pode ser apenas o pulo de linha. O Linux usa um padrão chamado de LF e quando direciono os Updates para o repositório, ele transforma o pulo de linha em CRFL normalmente, basta mudar isso. No VsCode por exemplo, lá em baixo é possível enxergar esta opção e mudar. Lembrando que arquivos *.sh* são da ambientação Linux.


