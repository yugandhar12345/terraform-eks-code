# File generated by aws2tf see https://github.com/awsandy/aws2tf
# aws_eks_node_group.mycluster1_ng-maneksami2:
resource "aws_eks_node_group" "mycluster1_ng-maneksami2" {
  ami_type       = "AL2_x86_64"
  depends_on     = [aws_eks_cluster.mycluster1]
  cluster_name   = "mycluster1"
  disk_size      = 0
  instance_types = []
  labels = {
    "alpha.eksctl.io/cluster-name"   = "mycluster1"
    "alpha.eksctl.io/nodegroup-name" = "ng-maneksami2"
  }
  node_group_name = "ng-maneksami2"
  node_role_arn   = aws_iam_role.eksctl-mycluster1-nodegroup-ng-ma-NodeInstanceRole-1GFKA1037E1XO.arn
  release_version = "1.17.11-20201007"
  subnet_ids = [
    aws_subnet.subnet-00d48938ae75575f6.id,
    aws_subnet.subnet-0c29b7ba0fae1c061.id,
    aws_subnet.subnet-0eed8d110fe361191.id,
  ]
  tags = {
    "alpha.eksctl.io/cluster-name"                = "mycluster1"
    "alpha.eksctl.io/eksctl-version"              = "0.29.2"
    "alpha.eksctl.io/nodegroup-name"              = "ng-maneksami2"
    "alpha.eksctl.io/nodegroup-type"              = "managed"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "mycluster1"
  }
  version = "1.17"

  launch_template {
    name    = "at-lt-maneksamip2"
    version = "1"
  }

  scaling_config {
    desired_size = 2
    max_size     = 3
    min_size     = 1
  }

  timeouts {}
}