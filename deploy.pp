aws_deploy::lambda::function { "Non Authenticated Lamba instance":
	ensure => 'present',
	region => 'us-east-2, ca-central-1, cn-north-1',
	timeout => '180',
	memory => ''128',
	function_name => "non_auth_lambda"
	exec_role_arn => "arn:aws:iam::carterjf:role:/unity_exec_role",
	subnet_group => 'shurt_url_subnet'
	zip_file_path => "~/unity_homework.zip",
}
aws_deploy::dax::cluster { "Non Authenticated DAX cluster":
	node_type => 'dax.r4.large',
	replication_factor => '3',
	iam_role_arn => "arn:aws:iam::carterjf:role:/unity_exec_role",
	subnet_group => 'short_url_subnet',
	region => 'us-east-2, ca-central-1, cn-north-1',
}
