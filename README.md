### Terraform IaC Security Check with Checkov

Hey there 👋,

This repo is a quick demonstration of how I use **Checkov** to scan Infrastructure-as-Code (IaC) for common misconfigurations and security issues — the kind that can slip through in fast-paced DevOps environments.
While it's a simple example using a couple of Terraform resources (like S3 and EBS), the workflow reflects what I’d implement in a real CI/CD pipeline in an enterprise setting.

---

## ⚙️ What's Inside

- `main.tf` — Sample Terraform code with a few intentionally weak configurations (yes, on purpose!)
-  `.github/workflows/checkov.yml` — GitHub Actions workflow that auto-scans Terraform code on every push
-  `checkov_output.txt` — CLI output example (included here and in screenshots)
-  `/screenshots` — Visual proof of the pipeline scan and Checkov results

---

## Why I Built This
As part of my transition from mid-level to senior cybersecurity engineering roles, I’m showcasing practical security automation in DevSecOps. Static checks on Terraform code are an easy win — they can catch problems before the cloud infra is even deployed.

This project is fast, lightweight, and highly scalable across teams.
---

##  How to Run It Locally

> Prerequisites: Docker installed OR Python + pip

**Option 1: Docker (No install needed)**
```bash
docker run --volume $PWD:/tf bridgecrew/checkov --directory /tf
```
Option 2: Python
```bash
pip install checkov
checkov -d .
```
## Sample Output
You’ll see something like this:
```bash
Check: CKV_AWS_20: "S3 Bucket should have server-side encryption enabled"
FAILED for resource: aws_s3_bucket.my_bucket
...
```
![Iac-Security-Scanner-with-Checkov-Github-Actions](assets/![image](https://github.com/user-attachments/assets/4df3ffe6-08e2-422f-a892-7106ea1e3c86)

## Enterprise Scaling
 This lightweight demo could scale with:

    GitHub Actions or GitLab CI for fully automated checks

    Integration into Jenkins, CircleCI, or Azure DevOps

    Policy Gatekeeping via custom baselines (e.g. S3 encryption always enforced)

    Notification hooks (Slack, Teams) for high-priority findings

    Use with Checkov SaaS dashboards for team-wide visibility

🤝 Let's Talk

If you're reviewing this as part of a job application or portfolio, feel free to ping me for a walkthrough. I enjoy this stuff and always happy to go deeper on real-world infrastructure security and automation!

Thanks for checking it out 🙏
— Wai Htet
