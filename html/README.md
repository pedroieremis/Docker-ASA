## HTML - NGINX  :bookmark_tabs:

Para esta pasta há apenas um Dockerfile, um simples html e um simples css. O qual está copiando todo o conteúdo da pasta **web01** para dentro do container, usando a imagem da nginx.

Agora com o proxy na estrutura não é possível acessa-lo diretamente, irá acessa-lo a partir do proxy. Podendo ser a partir do IP do Host, ou se tiver apontando para o dns da estrutura de serviços, será possível acessa-lo a partir do domínio, basta digitar no navegor **www.ac.asa.br**, por exemplo, dentro do nosso contexto.
