module "rg" {
  source = "./modules/rg"
}

module "pip" {
  source = "./modules/pip"
}

module "acr" {
  source = "./modules/acr"
}

module "sql_server" {
  source = "./modules/sql_server"
}

module "sql_db" {
  source = "./modules/sql_db"

  sql_server_id = module.sql_server.sql_server_id
}

module "aks" {
  source = "./modules/aks"
}
