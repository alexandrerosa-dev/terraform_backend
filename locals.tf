locals {
    prefix_name = format("%s_%s", var.enviroment, var.service)

    # Regras do security group para os lambdas
    sg_lambda_rules_ingress = {
        #1 = { description = "Access to HTTP", protocol = "tcp", from_port = "80", to_port = "80", cidr_blocks = ["0.0.0.0/0"] }
    }

    sg_lambda_rules_egress = {
        1 = { description = "Access to out instance", protocol = "tcp", from_port = "0", to_port = "65535", cidr_blocks = ["0.0.0.0/0"] }
    }

    security_elb_rules_ingress = [for rule in local.sg_lambda_rules_ingress : {
        description     = lookup(rule, "description", null)
        protocol        = lookup(rule, "protocol", null)
        from_port       = lookup(rule, "from_port", null)
        to_port         = lookup(rule, "to_port", null)
        cidr_blocks     = lookup(rule, "cidr_blocks", null)
        security_groups = lookup(rule, "fsecurity_groups", null)
    }]

    security_elb_rules_egress = [for rule in local.sg_lambda_rules_egress : {
        description     = lookup(rule, "description", null)
        protocol        = lookup(rule, "protocol", null)
        from_port       = lookup(rule, "from_port", null)
        to_port         = lookup(rule, "to_port", null)
        cidr_blocks     = lookup(rule, "cidr_blocks", null)
        security_groups = lookup(rule, "fsecurity_groups", null)
    }]

    common_tags {
        service    = var.service
        owner      = var.owner
        product    = var.product
        enviroment = var.enviroment
    }
}    