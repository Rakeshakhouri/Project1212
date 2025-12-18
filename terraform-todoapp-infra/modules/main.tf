module "rg" {
  source = "./modules/rg"
}

module "acr" {
  source = "./modules/acr"
}

module "aks" {
  source = "./modules/aks"
}

module "pip" {
  source = "./modules/pip"
}

module "sql_server" {
  source = "./modules/sql_server"
}

module "sql_db" {
  source = "./modules/sql_db"
}

