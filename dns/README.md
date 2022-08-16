## DNS - BIND9  :globe_with_meridians:

Nesta pasta está alocado os arquivos de configuração para o dns primário. Nosso domínio é __ac.asa.br__.

---

### Instruções de uso:

Os arquivos **db.ac.asa.br**, **db.reverse.ac.asa.br**, são os de configurações de nomes, a partir de sua zona. O arquivos **named.conf.default-zones** é o de configuração das zones, direta e reversa. O **named.conf.options** é o que dá possibilidade de encaminhamento de pesquisa dns. O **named.conf**  é o principal, pois é quem inclui as configurações das zonas. E os demais arqiuvos são mais padrões do bind9, o root de pesquisa recursiva e o outro de dados locais.

Caso deseja mudar as zonas, o domínio, basta que mude o que tem **ac.asa.br** por seu domínio desejado.

---

#### Demais dicas: :left_speech_bubble:

- No Linux você pode usar o *dig* ou o *nslookup* para testar a resolução de nomes do dns, estando no terminal host hospedeiro, tendo o IP 192.168.0.10 como exemplo, faça da seguinte forma:
  
  ```shell
  Com dig
  dig @192.168.0.10 ns1.ac.asa.br
  dig @192.168.0.10 www.ac.asa.br
  dig @192.168.0.10 ac.asa.br
  
  -------------------------------------------------------------------------------------------------------------
  Com nslookup
  nslookup - 192.168.0.10
  
  > ns1.ac.asa.br
  
  > www.ac.asa.br
  
  > ac.asa.br
  ```

- No Windows use o _nslookup_, da mesma forma, tendo o IP 192.168.0.10 como exemplo, seria assim:
  
  ```shell
  nslookup - 192.168.0.10
  
  > ns1.ac.asa.br
  
  > www.ac.asa.br
  
  > ac.asa.br
  ```

- Por fim, na sua máquina, com o dns rodando, configure para usar o IP do primário e refaça o teste, agora sem passar IPs, apenas nomes:
  
  ```shell
  Com dig
  dig ns1.ac.asa.br
  dig www.ac.asa.br
  dig ac.asa.br
  
  -------------------------------------------------------------------------------------------------------------
  Com nslookup
  nslookup ns1.ac.asa.br
  nslookup www.ac.asa.br
  nslookup ac.asa.br
  ```

Você também poderá usa-lo como dns pela internet, coo o IP setado na máquina, tente navegar na internet, certamente funcionará tudo ok, pois há todo um encaminhamento para a resolução de nomes.


