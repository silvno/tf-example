# DMP SaaS Datacenter Terraform Project

This Terraform project demonstrates a **single-tenant multi-customer DMP (Data Management Platform) SaaS architecture**, using `local_file` resources to simulate APIs and processing components. Each customer gets a **full isolated instance** of the SaaS.

* **`api-data-collection`** module: Simulates the data collection API.
* **`api-activation`** module: Simulates the activation API.
* **`batch-processing`** module: Simulates batch processing per customer.
* **`realtime-processing`** module: Simulates realtime processing per customer.

---

## Usage

1. Initialize Terraform:

```bash
terraform init
```

2. Preview the plan:

```bash
terraform plan
```

3. Apply the configuration to create resources:

```bash
terraform apply
```

4. Destroy resources when done:

```bash
terraform destroy
```
