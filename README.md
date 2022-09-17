<h1 align="center">
Naviteq Practical Task for Senior DevOps Engineer🤘 
</h1>

![alt text](https://naviteq-banner.s3.eu-west-1.amazonaws.com/banner%201.png)

### Account information
- AWS Account - Naviteq Devops recruitment  
- Interviewer name - `Evgenii Tselikov`
- Username/password/secret key and other credentials can be found at [./new_user_credentials.csv](new_user_credentials.csv)
- Time estimation - 3-5 days
- Region to work - US West (N. California) `us-west-1`

**Warning!**  
There can be other resources in region, if so, please don't delete.

---

### To do
1) Create an application on Go/Python (webserver) that serve HTTP requests at the next routes:
```bash
8080:/
8080/ping 
8080:/health
```

```bash
/ping   - return PONG in HTML format, status code 200 OK  
/       - return current weather in London, UK in HTML format, status code 200 OK 
/health - return HEALTHY, in JSON format, status code 200 OK
```

For weather data please use this API: https://openweathermap.org/current  
and this API key: `a6311858fb35df63b55216bae4aa952a`

2) Dockerize your app
3) Upload your code (including Dockerfile) to the repository: https://github.com/naviteq/lab-work-evgenii-tselikov
4) Build a Docker image and run Docker container locally, get `200 OK` from each endpoint
5) With the help of Terraform create:
- VPC
- Subnets
- SGs
- Routing tables
- NAT GW
- EKS cluster (**1 node t3.small**, Nginx ingress controller, NLB, all what needs to be done for the cluster)
- ECR

Terraform code should be uploaded to the repository: https://github.com/naviteq/lab-work-evgenii-tselikov

6) Make sure AWS EKS cluster is up and running and getting traffic
7) Get access to it
8) Provide access to Alex.B's user: `arn:aws:iam::723915311050:user/alex-berber` and Stepan.K's user: `arn:aws:iam::723915311050:user/stepan`
9) Create Helm3 chart for your application and upload Helm3 chart to the repository: https://github.com/naviteq/lab-work-evgenii-tselikov
10) Deploy via Helm3 application to EKS
11) Get HTTP answers on http://`my-fancy-load-balancer`.us-west-1.elb.amazonaws.com/ping
```bash
curl -H "Host: my-fancy-load-balancer.us-west-1.elb.amazonaws.com" http://my-fancy-load-balancer.us-west-1.elb.amazonaws.com/ping
```
12) Provide LoadBalancer Endpoint to Stepan.K via Telegram: https://t.me/stefanmirkin
13) Provide well written step-by-step documentation
14) Make sure that `terraform apply` create all resources correctly and `terraform destroy` remove all resources and doesn't leave behind any garbage in AWS Account.
15) After Stepan.K confirm that work has been checked, remove all created resources

⚠️ **IMPORTANT**    
Please use version of Terraform providers which are updated and compatible with Mac M1 ARM or Linux ARM

___

⚠️ **IMPORTANT**  
**Things which require your attention**
- Readable, understandable and structured project documentation in English
- Use of `Terragrunt` will be big advantage
- Adding CI/CD, Makefile, pre-commit framework, etc.. will be big advantage
- Correct architecture of the project, especially, make sure your Terraform well structured
- Comments in both `application code` and `Terraform code`
- Versions! Please pin versions
- Use `open source` Terraform modules or create `your own` when it needed  