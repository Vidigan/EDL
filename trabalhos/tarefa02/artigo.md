# Ruby
  Com o intuito de superar a poderosa linguagem de script do Perl e a forte orientação à objeto de Python, Ruby foi criada para ser uma linguagem de programação de tipagem dinâmica e forte. Com a capacidade de suportar programações funcionais, orientadas a objeto, imperativas e reflexivas, Ruby tomou o posto de 12ª linguagem de programação mais utilizada no mundo.

## Origens
  Criada em 24 de fevereiro de 1993 pelo cientista da computação e programador **_Yukihiro Matsumoto_**, Ruby veio com o objetivo de criar  um equilíbrio entre a **programação funcional** e a **programação imperativa**. Após o lançamento da sua versão 1.3, foi notado um crescimento no interesse na linguagem em lugares fora do Japão, ajudando assim na criação e impressão do primeiro livro de programação de Ruby em ingles em setembro dos anos 2000.
  
  Após 5 anos, o interesse na linguagem começou a crescer devido a um framework de aplicações web escrito em Ruby chamado **_Rails_**. A criação dessa aplicação é acreditada de ser a responsável pelo aumento na popularidade da linguagem Ruby.

## Influências
  Ruby teve como principais influências : Perl, Python, C, Smalltalk, Eiffel, Ada e Lisp.

## Classificação
  Ruby é considerada uma linguagem de programação interpretada multiparadigma. Nela, toda e qualquer parcela de informação e código podem receber suas propriedades e ações. Com a ajuda da influência recebida pela linguagem **Smalltalk**, Ruby é capaz de atribuir métodos e variáveis de instâncias a todos os tipos primitivos que, em outras linguagens, não seriam considerados objetos, assim facilitando a utlização visto que todas as regras que se aplicam aos objetos aplicam-se a tudo em Ruby.
  
## Avaliação Comparativa
  Uma das principais linguagens a sere comparada com a Ruby é o Python, devido as suas similaridades em termos de alto nível de programação, tipagem dinâmica e de suas características na orientação de objetos. Python tem como objetivo a leitura e a produtividade do código,onde a própria sintaxe reforça o uso de certas regras de recuo, ja a linguagem Ruby, utiliza-se de uma linguagem mais voltada para a "diversão" do programador, devido a sua flexibilidade, fazendo com que você possa chegar a um mesmo resultado utilizando **N** formas diferentes, o famoso : 
  > _There's more than one way to do the same thing_.
  
## Código Representativo
  Abaixo podemos ver a comparação de códigos com relação ao Ruby em diferentes situações
  
  #Caso queiramos o tempo daqui a um mês:
  
   _Ruby_
   
  ```
  require7 'active_support/all'
  new_time = 1.month.from_now
  ```
  _Python_
  
  ```
  from datetime import datetime
  from dateutil.relativedelta import relativedelta
  new_time = datetime.now() + relativedelta(months=1)
  ```
  # Manipulação de blocos em array:
  
  _Ruby_
  ```
  items = [1,2,3,4]
  newitems = items.map{|i| i + 1 }
  ```
  
  _Python_
  ```
  items = [1,2,3,4]
  newitems = [i + 1 for i in items]
  ```
  
  
## Conclusão
  Além de ser uma linguagem totalmente composta por objetos, Ruby apresenta a flexibilidade que um programador precisa para conseguir um resultado da melhor maneira que o satisfaça, mas deixa a desejar com relação a certas peculiaridades em sua sintaxe, que dificultam a leitura do código, e a quantidade de casos especiais que a linguagem apresenta, talvez assim dificultando a vida do programador quantoa colocação de chaves em seu código.


## Bibliografia

  * http://www.tiobe.com/tiobe-index/
  * https://pt.wikipedia.org/wiki/Ruby_(linguagem_de_programa%C3%A7%C3%A3o)
  * https://pt.wikipedia.org/wiki/Yukihiro_Matsumoto
  * https://www.ruby-lang.org/pt/about/
  * http://c2.com/cgi/wiki?PythonVsRuby
  * http://www.wikivs.com/wiki/Python_vs_Ruby
  * http://www.devmedia.com.br/orientacao-a-objetos-com-ruby/33726
  * https://www.infoq.com/br/news/2010/05/python-vs-ruby
  * http://www.senktec.com/2013/06/ruby-vs-python/
  * http://programminglanguage.my-free.website/home/ruby-vs-python-programming-language-for-web-development
