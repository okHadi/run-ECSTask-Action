The current workflow uses the default vpc, subnet and security group. You can modify that in the workflow according to your desire.
#
It first fetches the commit history, to check if the file that needs to be dockerised and run as a container has been modified. This step is done so that there is no useless building time (can be removed, optional)
#
Then, if it has been modified, it then pushes the docker image to the ECR repo (so you do need to create a ECR repo beforehand whether manually by console or through terraform/cdk)
#
Then, it fetches the default subnet and security group. Then, it uses a pre defined task defintation to run it into a pre defined cluster.
#
Assumptions:
A ECR repo is created beforehand ;
A task definitation is created beforehand ;
A cluster is created beforehand.
