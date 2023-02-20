# Administração de Sistemas Abertos - ASA  :desktop_computer:

### Finalidade:

Repositório para o projeto final da disciplina ASA, como arquivos de configuração, scripts de automatização, programas etc. Tudo isso para a implementação de serviços usando containers Docker.

__Siga os Passos Abaixo:__

Para clonar o repositório na sua máquina local:

```shell
git clone https://github.com/PedroIeremis/Docker-ASA.git
```

Navegue até a pasta:
```shell
cd Docker-ASA/
```

Para visualizar:
```shell
ls ou dir 
```

Subiir a Infraestrutura:
```shell
./up-services.sh
```

___Dicas:___

1. Só é possível efetuar esta primeira funcionalidade se tiver instalado o *git* na máquina.

2. Sempre que for executar esteja com o *docker* rodando e execute a partir da pasta principal, a que estamos.

---

#### DNS - BIND9:

- Utilizarei o bind9 como servidor dns. Siga até a pasta __dns__ para visualizar o README.md especificamente sobre ele. O domínio é o *ac.asa.br*.

#### WEB - NGINX:

- Dentro da pasta ___web___  terão arquivos para um servidor web usando o nginx. Será mais como um mero exemplo de página web principal, para funcionar com o proxy e o dns. Siga até a pasta ___web___ para mais detalhes com o README.md sobre ele.

#### MAIL - DOVECOT & POSTFIX:

- Serão usados para o servidor de email os serviços do Dovecot e o Postifx. Com apenas algumas configurações. Mais informações sobre os mesmo, se encontra na pasta __server-mails__.

#### WEBMAIL - RAINLOOP:

- Para a ambientação ao servidor de Webmail, que irá receber as configurações, ajustes do dns e do servidor de configurações de email, está sendo usado o Webmail Rainloop. Para mais informações sobre o mesmo, dirija-se até a pasta ___webmail___.

#### PROXY - NGINX:

- Agora utilizando um servidor proxy, ao qual se fará de intermediário entre o __web__ e o ___webmail___. Novamente vá até a pasta ___proxy___ para mais informações sobre o mesmo.

---

#### Subindo Serviços

Nesta pasta principal no momento há quatro scripts, um **docker-compose.yml**, **up-services.sh**, **down-services.sh** e **adm-services.sh**. O que deve ser executado para subir os serviços é o **up-services.sh**, pois a partir dele será pedida umas informações, como sua rede e o IP do Host hospedeiro. Basta seta-los corretamente que o script fará o resto, como subistituições nos arquivos, inclusive ajustando de forma reversa as configurações do dns. Após ele finalizar totalmente, aponte seu o IP do host hospedeiro como dns e teste os serviços usando o domínio.

#### Derrubando Serviços

Para finalizar tudo, basta que execute o script **down-services.sh**, que ele fará todo o resto, dando um down no compose e ainda sim deletando os containers por garantia e, também as imagens, caso não deseje esta parada bruta, mude as configurações dentro do script a seu gosto.

#### Administrando Serviços

O script **adm-services.sh** possui funcionalidades básicas de administração dos containers, visualização de informações, restartar serviços, etc. São 8 opções no total, além da opção 0 de encerrar o script.

#### Obs:

Caso os scripts estejam dando algum problema na chamda de execução, pode ser apenas o pulo de linha. O Linux usa um padrão chamado de LF e quando direciono os Updates para o repositório, ele transforma o pulo de linha em CRFL normalmente mas, basta mudar isso. No VsCode por exemplo, lá em baixo é possível enxergar esta opção e mudar. Lembrando que arquivos *.sh* são da ambientação Linux.
