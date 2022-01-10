# AWS Environments

Finally have a funcitonal and safe backend that has a few workspaces as
well as a functional locking schema. The security groups are working,
but currently the solution I have is to manually apply each security
group. That won't last, however Vamshi said that he would like to have
a new implementation of the security group repos. This can be where I
step in. So, the next big step for me will be to implement a new way to
dynamically apply security groups to the environment.

Also, touching on the workspaces, I developed three workspaces within
this backend.
1. default - this is for all regular AWS functions to be implemented.
All development issues and deployments should be made from here.
2. BACKEND - this is for the configuration of the backend bucket and
DynamoDB table that I have for the LockKey. Should not be touched or
worked on unless configuring the BackEnd
3. VPC - for all VPC configurations meaning anything dealing with
subnets, route tables, or anything else of the like, should be dealt
with here. I will also work with adding some security group implementations
within the repo later.

So that about wraps tonight up, I would say it was very productive.
A lot of debugging has got me here though. I plan to upload a VPC
diagram to the README eventually.