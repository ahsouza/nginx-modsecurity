**Protegendo Contêineres Docker com Web Application Firewall (WAF) baseado em ModSecurity e NGINX**

![alt text](https://techcrunch.com/wp-content/uploads/2016/08/r10-blog-modsecurity-ddos.jpg?w=730&crop=1)

:shield: :lock:  Implementing reverse proxy with NGINX and web aplication firewall (WAF). OWASP ModSecurity Core Rule Set for better web application security using API developed in Laravel PHP  containerized with Docker :whale:

  Geralmente os contêineres são considerados mais seguros por padrão que as máquinas virtuais porquê reduzem substancialmente a superfície de ataque a um determinado aplicativo e sua infra-estrutura de suporte. Isso não implica, entretanto, que não se deva ficar atento a contêineres seguros. Além de seguir práticas seguras para reduzir riscos de segurança com contêineres, aqueles que os utilizam também devem usar a segurança de borda para proteger os contêineres também. A maioria dos aplicativos que estão sendo implantados em contêineres está de alguma forma conectada à Internet com portas expostas e assim por diante.

O [Web Application Firewall (WAF)](https://www.owasp.org/index.php/Web_Application_Firewall) é um firewall criado especificamente para proteger contra ataques comuns a aplicativos da web. Um dos WAF mais utilizados é o [ModSecurity](https://modsecurity.org/). Originalmente, foi escrito como um módulo para o servidor web Apache, mas desde então foi portado para o NGINX e IIS. O ModSecurity protege contra ataques procurando por:

- Injeção SQL
- Segurar o tipo de conteúdo corresponde aos dados do corpo.
- Proteção contra solicitações POST malformadas.
- Proteção do protocolo HTTP
- Pesquisas em lista negra em tempo real
- Proteções de negação de serviço de HTTP
- Proteção genérica contra ataques da Web
- Detecção e ocultação de erros

![alt text](https://www.nginx.com/wp-content/uploads/2017/08/blog-fm-2017-modsecurity-featured-500x300.png)

O **NGINX**, no entanto, é mais do que um simples servidor web. Ele também pode atuar como um balanceador de carga, proxy reverso e descarregamento de SSL. Combine com o ModSecurity, ele tem todos os recursos para ser um WAF completo. O NGINX / ModSecurity WAF é tradicionalmente implantado em servidores VMs e bare-metal, mas também pode ser contêinerizado. Usar o NGINX/ModSecurity em um contêiner significa que um contêiner em si pode ser um WAF e transportar todas as vantagens dos contêineres. Da mesma forma, ele pode escalar e implantar com cargas de contêineres com soluções baseadas em nuvem e no local, enquanto as VMs e os firewalls físicos não podem. O Dockerfile e o script aqui criados constroem o NGINX e o ModSecurity a partir de suas fontes dentro de um contêiner e, em seguida, carregam três arquivos de configuração.

*   **nginx.conf** - Este é o arquivo de configuração do **NGINX** que contém as diretivas para balanceamento de carga e proxy reverso.
    *   linha **44** inicia a seção sobre como ativar e desativar o ModSecurity
    *   linha **52** inicia a seção para configurar o proxy reverso. Para o docker, esse geralmente será o nome do contêiner que está sendo liderado pelo aplicativo.
    *   linha **53** contém o URL interno que o nginx está fazendo proxy.
    
*   **modsecurity.conf** - contém a configuração para modsecurity e algumas configurações para os padrões e exclusão das regras usadas pela segurança mod. Quase tudo no arquivo modsecurity.conf pode ser deixado como está.
    *   linha **230** inicia a configuração das regras.
    *   As regras são baixadas e instaladas (/usr/local/nginx/conf/rules) quando o contêiner é construído. Regras individuais podem ser desativadas ou ativadas ou todas podem ser ativadas.
    
*   **crs-setup.conf** – isto configura as regras usadas pelo ModSecurity. O arquivo possui documentação integrada. Ler através deste arquivo explica para que servem as configurações. Para mais informações sobre o **crs-setup.conf**, visite o site da [OWASP](https://www.owasp.org/index.php/Main_Page).

O comando abaixo irá criar os serviços levantando imagens docker:

```sh
docker-compose up
```
