# Projeto Laravel + NestJS (Mensageria)

Este repositório demonstra uma arquitetura de microsserviços utilizando Laravel e NestJS, com comunicação via RabbitMQ.

## Estrutura

- `laravel-api/`: Backend principal em Laravel.
- `notification-service/`: Microserviço de notificações em NestJS.
- `docker-compose.yml`: Orquestração dos serviços (Laravel, NestJS, PostgreSQL, RabbitMQ).

## Objetivo

Demonstrar uma arquitetura desacoplada com:
- Microsserviços
- Mensageria
- Docker e DevOps
- Boas práticas como Clean Architecture e DDD
