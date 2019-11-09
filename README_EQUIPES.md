## JusTIceiros
**Descrição do projeto desenvolvido:** 

Desafio 2

Produto: Iracema - Assistente Virtual do MP-BA

Descrição: Foi desenvolvido um chatbot para integração com aplicativos de mensagem instantânea, sendo o primeiro deles o Whatsapp. Este chatbot tem os seguintes objetivos:
Direcionamento efetivo das vítimas de crimes aos órgaos competentes do MP-BA;
Facilitar acesso a informação;
Diminuir a cifra oculta da criminalidade;
Coletar dados estatísticos mais fieis à realidade;
Envio de notificações sobre o andamento das denúncias.

**Linguagens de programação utilizadas:**
- Java
- PL/pgSQL

**Ferramentas utilizadas:**
- Docker
- Kubernetes
- Maven
- Wildfly
- Twilio
- PostgreSQL

**Equipe:**

| Nome | Função | Redes | Github/Bitbucket | Site pessoal |
| ------------- | ------------- | ------------- | ------------- | ------------- | 
|  André Muniz  | Developer  | [Linkedin](https://br.linkedin.com/in/andr%C3%A9-muniz-163857a) | @alnmuniz |  | 
|  Gustavo Ramos  | Developer  | [Linkedin](https://br.linkedin.com/in/gustavo-almeida-44b9b330) | @gustavoramos00 |  |
|  Ruy Costa | Developer  | [Facebook]ruy.costa / [Twitter] @ruysc | @ruysc |  |  
|  Ione Gonçalves Souza | Apoio do negócio (Administração)  | [Gmail] ionesouza2019.2@gmail.com |  |  |  
|  Jéssica Marques | Apoio do negócio (Direito)  | [Linkedin] https://www.linkedin.com/in/jéssica-marques-75509b140/ |  |  |
|  Matheus Andrade | Sysadmin/Infraestrura  | [Linkedin] https://br.linkedin.com/in/matheuslao | @matheuslao |  |

**Descrição de execução do código:** 

Descrever de forma detalhada como executar o projeto desenvolvido.

- na raiz do projeto executar o comando: 

### mvn clean package

  _Esta etapa requer maven e jdk 1.8 instalados._
  
- copiar o artefato .war gerado na pasta target para a pasta docker e renomear o arquivo para app.war

- entrar na pasta docker, executar o comando 

### docker build -t iracema . 

  _Esta etapa requer o docker instalado._

- executar o comando 

### docker run -p 8080:8080 -d iracema 

para executar o serviço backend que fica escutando as interações do app de mensagens (whatsapp).

