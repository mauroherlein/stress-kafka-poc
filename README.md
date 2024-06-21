# Kafka Scalability Test

Este repositorio contiene las pruebas de escalabilidad realizadas en instancias de Kafka con diferentes configuraciones de recursos. Las pruebas miden la latencia máxima bajo distintas cargas de trabajo.

## Resultados de las Pruebas

### KAFKA8G
- **Carga:** 1MM de registros de 100 bytes a 10k tps
  - **Latencia Máxima:** 302.00 ms
- **Carga:** 2MM de registros de 1KB a 20k tps
  - **Latencia Máxima:** 1632.00 ms
- **Carga:** 2MM de registros de 1KB a 50k tps
  - **Latencia Máxima:** 6702.00 ms

### KAFKA4G
- **Carga:** 1MM de registros de 100 bytes a 10k tps
  - **Latencia Máxima:** 232.00 ms
- **Carga:** 2MM de registros de 1KB a 20k tps
  - **Latencia Máxima:** 11360.00 ms
- **Carga:** 2MM de registros de 1KB a 50k tps
  - **Latencia Máxima:** 8541.00 ms

### KAFKA2G
- **Carga:** 1MM de registros de 100 bytes a 10k tps
  - **Latencia Máxima:** 246.00 ms
- **Carga:** 2MM de registros de 1KB a 20k tps
  - **Latencia Máxima:** 17531.00 ms
- **Carga:** 2MM de registros de 1KB a 50k tps
  - **Latencia Máxima:** 26171.00 ms

## Estructura del Repositorio

```plaintext
.
├── tests_in_kafka2g
│   └── prueba.txt
├── tests_in_kafka4g
│   └── prueba.txt
├── tests_in_kafka8g
│   └── prueba.txt
├── docker-compose-servidor1.yml
├── get-docker-stats.ps1
├── grafana-docker-compose.yml
├── kafka-commands.txt
├── kafka-jmx-exporter.yml
└── prometheus.yml


## Descripcion de files
docker-compose-servidor1.yml: Archivo Docker Compose para levantar los servicios de Kafka y Zookeeper.
get-docker-stats.ps1: Script PowerShell para obtener estadísticas de los contenedores Docker.
grafana-docker-compose.yml: Archivo Docker Compose para levantar los servicios de Grafana.
kafka-commands.txt: Comandos utilizados para crear tópicos y ejecutar pruebas de rendimiento en Kafka.
kafka-jmx-exporter.yml: Archivo de configuración para el exportador JMX de Kafka.
prometheus.yml: Archivo de configuración para Prometheus.
tests_in_kafka2g, tests_in_kafka4g, tests_in_kafka8g: Directorios que contienen los resultados de las pruebas realizadas en cada configuración de Kafka.

