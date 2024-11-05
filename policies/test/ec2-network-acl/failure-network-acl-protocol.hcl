mock "tfplan/v2" {
  module {
    source = "./mocks/failure-network-acl-protocol/mock-tfplan-v2.sentinel"
  }
}

mock "tfresources" {
  module {
    source = "../../../modules/tfresources/tfresources.sentinel"
  }
}

mock "report" {
  module {
    source = "../../../modules/mocks/report/report.sentinel"
  }
}

param "blocked_ports" {
  value = [23]
}

test {
  rules = {
    main = false
  }
}