variable "enviroment" {
  type        = string
  description = "Sigla do ambiente correspondente a implantação"
}

variable "service" {
  type        = string
  description = "Nome do serviço que será provisionado"
}

variable "product" {
  type        = string
  description = "Nome do produto que será provisionado"
}

variable "owner" {
  type        = string
  description = "Nome do time responsável"
}

variable "subnet_ids" {
  type        = string
  description = "Id da subnet utilizada para criar as instâncias do auscaling group"
}

variable "aws_vpc" {
  type        = string
  description = "Nome do produto que será provisionado"
}

