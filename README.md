# Quick reference

<!--
-	**Where to get help:**
-	**Published image artifact details**:
-	**Image updates**:
-->

-	**Where to file issues**:
	<br/>[https://github.com/pdffillerdocker/kubectl-aws/issues](https://github.com/pdffillerdocker/kubectl-aws/issues)

-	**Supported architectures**:
	<br/>`amd64`

-	**Maintained by**:
	<br/>[PDFfiller](https://github.com/pdffillerdocker/kubectl-aws)
	<br/>[Anton Trifonov](https://github.com/rinrailin)

-	**Source of this description**:
	<br/>[`README.md` at GitHub](https://github.com/pdffillerdocker/kubectl-aws/blob/master/README.md)

# Kubectl-AWS

Kubectl-AWS is a Docker image which contains [kubectl](https://kubernetes.io/docs/reference/kubectl/kubectl/)
and [AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-welcome.html) utilities.
This image can be used to interact with [AWS EKS](https://docs.aws.amazon.com/eks/latest/userguide/what-is-eks.html)
as both kubectl and AWS CLI are [required](https://docs.aws.amazon.com/eks/latest/userguide/create-kubeconfig.html)
to interact with AWS EKS.

# How to use this image

Common case of using whis image:

```bash
$ docker run \
  -it \
  --rm \
  -v${HOME}/.kube/config:/root/.kube/config:ro \
  -e AWS_ACCESS_KEY_ID=... \
  -e AWS_SECRET_ACCESS_KEY=... \
  pdffiller/kubectl-aws \
  get nodes
```

# License

pdffiller/kubectl-aws is **licensed** under the [**MIT License**](https://github.com/pdffillerdocker/kubectl-aws/blob/master/LICENSE).
