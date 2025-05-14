output "simple-website" {
  value = {
    vpc_id = module.simple-website.vpc_details.id
  }
}