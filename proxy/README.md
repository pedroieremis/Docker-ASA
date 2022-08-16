## PROXY - NGINX

Aqui temos um Dockerfile, que irá usar a imagem da nginx como servidor de proxy, copiando apenas os principais arquivos de configuração do serviço, com congfigurações básicas. 

O arquivo **nginx.conf** fica como padrão, já o arquivo **default.conf** é o que foi mudado no contexto. Tendo dois upstreams, um para a pagina simples html e outro para o servidor de webmail, todos serão mapeados para a porta 80, padrão HTTP, sendo possível acessar a pasta padrão digitando apenas o domínio, será mapeado para o html, web1. Se acessar o domínio seguido de **/w1**, também será encaminhado, rescrito para a pasta padrão **/**, porém gerá uma problemática ainda de não conseguir formatar coerentemente o css da página. Já se acessar com **/rainloop**, estará sendo encaminhado ao servidor de webmail. Neste caso irá accessar com todas as configurações, pois não existe rescrição, a pasta de fato existe no container Webmail.


