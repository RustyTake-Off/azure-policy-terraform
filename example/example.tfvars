policy = {


  set_definitions = {


    set1 = {
      assignments = {
        management_groups = {
          mg1 = {
            scope_management_group_name = "example_mg1"
            name                        = "setnumber1mg1"
            display_name                = "set_number1_mg1"
            description                 = "description_number1_mg1"
            non_compliance_message      = "not_compliant_mg1"
            location                    = "westeurope"
            # provided_ids                = [""] # [optional] 8 segment ids for user assigned id for the assignment
          }
        }
        subscriptions = {
          sub1 = {
            scope_subscription_name = "example_sub1"
            name                    = "setnumber1sub1"
            display_name            = "set_number1_sub1"
            description             = "description_number1_sub1"
            non_compliance_message  = "not_compliant_sub1"
            location                = "westeurope"
            # provided_ids                = [""] # [optional] 8 segment ids for user assigned id for the assignment
          }
        }
        resource_groups = {
          rg1 = {
            scope_resource_group_name = "example_rg1"
            name                      = "setnumber1rg1"
            display_name              = "set_number1_rg1"
            description               = "description_number1_rg1"
            non_compliance_message    = "not_compliant_rg1"
            location                  = "westeurope"
            # provided_ids                = [""] # [optional] 8 segment ids for user assigned id for the assignment
          }
          rg2 = {
            scope_resource_group_name = "example_rg2"
            name                      = "setnumber1rg2"
            display_name              = "set_number1_rg2"
            description               = "description_number1_rg2"
            non_compliance_message    = "not_compliant_rg2"
            location                  = "westeurope"
            # provided_ids                = [""] # [optional] 8 segment ids for user assigned id for the assignment
          }
        }
        resources = {
          res1 = {
            scope_resource_name    = "example_res1"
            name                   = "setnumber1res1"
            display_name           = "set_number1_res1"
            description            = "description_number1_res1"
            non_compliance_message = "not_compliant_res1"
            location               = "westeurope"
            # provided_ids                = [""] # [optional] 8 segment ids for user assigned id for the assignment
          }
        }
      }
      set = {
        name             = "setnumber1"
        display_name     = "set_number1"
        description      = "description_number1"
        policy_type      = "Custom"
        management_group = "example_mg1"
        metadata = {
          "category" = "set_category_1"
          "version"  = "1.0.0"
        }
        # parameters = {}
        policy_definition_group = {
          group1 = {
            name         = "group1"
            display_name = "group_1"
            description  = "group1 description"
            category     = "group1"
          }
        }
        policy_definition_reference = {
          poli1 = {
            policy_definition_id = "726aca4c-86e9-4b04-b0c5-073027359532"
            # reference_id           = ""
            non_compliance_message = "not compliant1"
            policy_group_names     = ["group1"]
            parameter_values = {
              "tagName" = {
                "value" = "tag1"
              }
              "tagValue" = {
                "value" = "tag11"
              }
            }
          }
          poli2 = {
            policy_definition_id = "726aca4c-86e9-4b04-b0c5-073027359532"
            # reference_id           = ""
            non_compliance_message = "not compliant2"
            policy_group_names     = ["group1"]
            parameter_values = {
              "tagName" = {
                "value" = "tag2"
              }
              "tagValue" = {
                "value" = "tag22"
              }
            }
          }
          poli3 = {
            policy_definition_id = "726aca4c-86e9-4b04-b0c5-073027359532"
            # reference_id         = ""
            non_compliance_message = "not compliant3"
            policy_group_names     = ["group1"]
            parameter_values = {
              "tagName" = {
                "value" = "tag3"
              }
              "tagValue" = {
                "value" = "tag33"
              }
            }
          }
        }
      }
    }


    set2 = {
      assignments = {
        management_groups = {
          mg1 = {
            scope_management_group_name = "example_mg1"
            name                        = "setnumber2mg1"
            display_name                = "set_number2_mg1"
            description                 = "description_number2_mg1"
            non_compliance_message      = "not_compliant_mg1"
            location                    = "westeurope"
            # provided_ids                = [""] # [optional] 8 segment ids for user assigned id for the assignment
          }
        }
        subscriptions = {
          sub1 = {
            scope_subscription_name = "example_sub1"
            name                    = "setnumber2sub1"
            display_name            = "set_number2_sub1"
            description             = "description_number2_sub1"
            non_compliance_message  = "not_compliant_sub1"
            location                = "westeurope"
            # provided_ids                = [""] # [optional] 8 segment ids for user assigned id for the assignment
          }
        }
        resource_groups = {
          rg1 = {
            scope_resource_group_name = "example_rg1"
            name                      = "setnumber2rg1"
            display_name              = "set_number2_rg1"
            description               = "description_number2_rg1"
            non_compliance_message    = "not_compliant_rg1"
            location                  = "westeurope"
            # provided_ids                = [""] # [optional] 8 segment ids for user assigned id for the assignment
          }
          rg2 = {
            scope_resource_group_name = "example_rg2"
            name                      = "setnumber2rg2"
            display_name              = "set_number2_rg2"
            description               = "description_number2_rg2"
            non_compliance_message    = "not_compliant_rg2"
            location                  = "westeurope"
            # provided_ids                = [""] # [optional] 8 segment ids for user assigned id for the assignment
          }
        }
        resources = {
          res1 = {
            scope_resource_name    = "example_res1"
            name                   = "setnumber2res1"
            display_name           = "set_number2_res1"
            description            = "description_number2_res1"
            non_compliance_message = "not_compliant_res1"
            location               = "westeurope"
            # provided_ids                = [""] # [optional] 8 segment ids for user assigned id for the assignment
          }
        }
      }
      set = {
        name             = "SetDefinitionNumber2"
        display_name     = "set_definition_number_2"
        description      = "set_definition_description_number_2"
        policy_type      = "Custom"
        management_group = "example_mg1"
        metadata = {
          "category" = "set_definition_category_2"
          "version"  = "1.0.0"
        }
        parameters = {}
        policy_definition_group = {
          group1 = {
            name         = "group1"
            display_name = "group_1"
            description  = "group1 description"
            category     = "group1"
          }
        }
        policy_definition_reference = {
          poli1 = {
            policy_definition_id = "726aca4c-86e9-4b04-b0c5-073027359532"
            #reference_id           = ""
            non_compliance_message = "not compliant 4"
            policy_group_names     = ["group1"]
            parameter_values = {
              "tagName" = {
                "value" = "tag4"
              }
              "tagValue" = {
                "value" = "tag44"
              }
            }
          }
          poli2 = {
            policy_definition_id = "726aca4c-86e9-4b04-b0c5-073027359532"
            # reference_id           = ""
            non_compliance_message = "not compliant 5"
            policy_group_names     = ["group1"]
            parameter_values = {
              "tagName" = {
                "value" = "tag5"
              }
              "tagValue" = {
                "value" = "tag55"
              }
            }
          }
        }
      }
    }
  }
}
