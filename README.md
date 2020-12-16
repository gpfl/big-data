# Gestão de Infraestrutura para Big Data - Trabalho Final

> Camila Reinehr Silva, Esmael Luiz Winter, Gabriel Albrecht Fitarelli, Gustavo Pereira Flores

Este trabalho desenvolve uma análise dados utilizando Spark, acessando arquivos em ambiente hadoop. Os dados utilizados são avaliações de cervejas e cervejarias provenientes da plataforma Kaggle ([link](https://www.kaggle.com/rdoume/beerreviews/))

## Pré-Requisitos
Para rodar o código do trabalho é necessário ter instalado os seguintes pacotes:
* Hadoop 3.2.1
* Spark 3.0.1 (hadoop 3.2)
* Python 3.6
* Jupyterlab 2.2.9

## Configuração

### Exportando variáveis de ambiente
Esse trabalho utiliza algumas variáveis de ambiente do `hadoop` e `spark`, contidas no script abaixo:

```
. ./hadoop_vars.sh
```

### Iniciando serviços hadoop e yarn
Iniciamos os serviços `namenode` e `datanode` do hadoop, e `resourcemanager` e `nodemanager` do yarn, rodando o script abaixo:

```
. ./hadoop_start.sh
```

## Ingestão do dado no HDFS
Após acessar o [link](https://www.kaggle.com/rdoume/beerreviews/) para o dataset e fazer o download local do arquivo `beer_reviews.csv`, fazemos a ingestão desse arquivo no nosso HDFS:

```
hdfs dfs -put beer_reviews.csv /user/gpfl/beer
```

## Análise de dados em PySpark
Desenvolvemos a análise em `PySpark`, framework em `Python` da ferramenta `Spark`. Nas nossas variáveis de ambiente, setamos a interface `jupyter lab` como padrão de execução do `pyspark`. Para acessar a análise, executamos o comando:

```
pyspark
```

Dessa forma, um servidor jupyter local é criado, onde podemos acessar o arquivo `pyspark.ipynb` com as análises produzidas.
