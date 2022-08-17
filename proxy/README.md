## PROXY - NGINX

Aqui temos um Dockerfile, que irá usar a imagem da nginx como servidor de proxy, copiando apenas os principais arquivos de configuração do serviço, com configurações básicas. 

O arquivo **nginx.conf** fica como padrão, já o arquivo **default.conf** é o que foi mudado no contexto. Tendo dois upstreams, um para a pagina __web__ principal e outro para __webmail__, todos serão mapeados para a porta 80, padrão HTTP, sendo possível acessar a pasta padrão digitando apenas o domínio, será mapeado para o __web__. Se acessar o domínio seguido de **/w1**, também será encaminhado, rescrito para a pasta padrão **/**, porém gera uma problemática ainda de não conseguir formatar coerentemente o css da página. E por fim se acessar com **/rainloop**, estará sendo encaminhado o __webmail__. Neste caso irá accessar com todas as configurações, pois não existe rescrição, a pasta existe de fato no container do Webmail.
