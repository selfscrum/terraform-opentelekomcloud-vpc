package test

import (
	"testing"

	"github.com/gruntwork-io/terratest/modules/terraform"
	"github.com/stretchr/testify/assert"
)

func TestTerraformVpc(t *testing.T) {
	// retryable errors in terraform testing.

	terraformOptions := terraform.WithDefaultRetryableErrors(t, &terraform.Options{
		TerraformDir: ".", VarFiles: []string{"./secret.tfvars"},
	})

	defer terraform.Destroy(t, terraformOptions)

	terraform.InitAndApply(t, terraformOptions)

	output := terraform.Output(t, terraformOptions, "vpc_id")
	assert.NotEqual(t, "", output)

	output := terraform.Output(t, terraformOptions, "vpc_id_cidr")
	assert.Equal(t, "10.0.0.0/8", output)

	output := terraform.Output(t, terraformOptions, "vpc_cidr_status")
	assert.Contains(t, ["OK", "CREATING"], output)

	output := terraform.Output(t, terraformOptions, "nat_public_ip")
	assert.Regexp(t, "[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+", output)

	output := terraform.Output(t, terraformOptions, "nat_public_ip_id")
	assert.NotEqual(t, "", output)

	output := terraform.Output(t, terraformOptions, "nat_gateway_id")
	assert.NotEqual(t, "", output)

	output := terraform.Output(t, terraformOptions, "public_subnet_id")
	assert.NotEqual(t, "", output)

	output := terraform.Output(t, terraformOptions, "public_subnet_cidr")
	assert.Equal(t, "10.0.1.0/24", output)

	output := terraform.Output(t, terraformOptions, "public_subnet_status")
	assert.Equal(t, "ACTIVE", output)

	output := terraform.Output(t, terraformOptions, "private_subnet_id")
	assert.NotEqual(t, "", output)

	output := terraform.Output(t, terraformOptions, "private_subnet_cidr")
	assert.Equal(t, "10.0.0.0/24", output)

	output := terraform.Output(t, terraformOptions, "private_subnet_status")
	assert.Equal(t, "ACTIVE", output)
}
