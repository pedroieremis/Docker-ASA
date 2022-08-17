## WEB - NGINX  :bookmark_tabs:

Para esta pasta há apenas um Dockerfile, será configurado um serviço simples de exemplo para a página principal web, usando a imagem da nginx.

Agora com o proxy na estrutura não é possível acessa-lo diretamente pelo nevagdor, irá acessa-lo a partir do proxy. Podendo ser a partir do IP do Host, ou se tiver apontando para o dns da estrutura de serviços, será possível acessa-lo a partir do domínio, basta digitar no navegor **www.ac.asa.br**, por exemplo, dentro do nosso contexto. Mas quem fará o intermédio será o proxy
