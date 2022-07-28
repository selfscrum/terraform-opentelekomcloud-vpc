package test

import (
	"testing"

	"github.com/gruntwork-io/terratest/modules/terraform"
	"github.com/stretchr/testify/assert"
)

func TestTerraformVpc(t *testing.T) {
	// retryable errors in terraform testing.
	vf := []string{"./secret.tfvars"}
	terraformOptions := terraform.WithDefaultRetryableErrors(t, &terraform.Options{
		TerraformDir: ".", VarFiles: vf,
	})

	defer terraform.Destroy(t, terraformOptions)

	terraform.InitAndApply(t, terraformOptions)

	output := terraform.Output(t, terraformOptions, "hello_world")
	assert.Equal(t, "Hello, World!", output)
}
