# Testing out creating an ec2 instance along with using other tasks in the amazon_aws module.
#
# Potential solution to end to end automation for AWS provisioning.
# User submits a ticket to request an EC2 instance -> API call to PE 2018/2019+ Orchestrator -> kicks off a bolt plan with paramters
#
# This plan will contain more than just creating an ec2 instance
#
# bolt plan run aws_bolt_plans::create_ec2 nodes=localhost dry_run=false image_id="ami-035be7bafff33b6b6" instance_type=t1.micro key_name=fekops min_count=1 max_count=1 --debug
#
# TODO:
# Figure out how to actually make some parameters truly optional...
# Add ec2 tags
#
plan aws_bolt_plans::create_ec2(
  TargetSpec $nodes,
  Optional[String[1]] $dry_run = ' ',
  Optional[String[1]] $image_id = ' ',
  Optional[String[1]] $key_name = ' ',
  Optional[String[1]] $kernel_id = ' ',
  Optional[String[1]] $max_count = ' ',
  Optional[String[1]] $min_count = ' ',
  Optional[String[1]] $placement = ' ',
  Optional[String[1]] $subnet_id = ' ',
  Optional[String[1]] $user_data = ' ',
  Optional[String[1]] $monitoring = ' ',
  Optional[String[1]] $ramdisk_id = ' ',
  Optional[String[1]] $cpu_options = ' ',
  Optional[String[1]] $client_token = ' ',
  Optional[String[1]] $ebs_optimized = ' ',
  Optional[String[1]] $instance_type = ' ',
  Optional[String[1]] $ipv6_addresses = ' ',
  Optional[String[1]] $additional_info = ' ',
  Optional[String[1]] $launch_template = ' ',
  Optional[String[1]] $security_groups = ' ',
  Optional[String[1]] $ipv6_address_count = ' ',
  Optional[String[1]] $network_interfaces = ' ',
  Optional[String[1]] $private_ip_address = ' ',
  Optional[String[1]] $security_group_ids = ' ',
  Optional[String[1]] $tag_specifications = ' ',
  Optional[String[1]] $hibernation_options = ' ',
  Optional[String[1]] $credit_specification = ' ',
  Optional[String[1]] $iam_instance_profile = ' ',
  Optional[String[1]] $block_device_mappings = ' ',
  Optional[String[1]] $license_specifications = ' ',
  Optional[String[1]] $disable_api_termination = ' ',
  Optional[String[1]] $instance_market_options = ' ',
  Optional[String[1]] $elastic_gpu_specification = ' ',
  Optional[String[1]] $elastic_inference_accelerators = ' ',
  Optional[String[1]] $capacity_reservation_specification = ' ',
  Optional[String[1]] $instance_initiated_shutdown_behavior = ' ',
){

  run_task('amazon_aws::ec2_aws_run_instances',
    $nodes,
    dry_run => $dry_run,
    image_id => $image_id,
    key_name => $key_name,
#    kernel_id => $kernel_id,
    max_count => $max_count,
    min_count => $min_count,
#    placement => $placement,
#    subnet_id => $subnet_id,
#    user_data => $user_data,
#    monitoring => $monitoring,
#    ramdisk_id => $ramdisk_id,
#    cpu_options => $cpu_options,
#    client_token => $client_token,
#    ebs_optimized => $ebs_optimized,
    instance_type => $instance_type,
#    ipv6_addresses => $ipv6_addresses,
#    additional_info => $additional_info,
#    launch_template => $launch_template,
#    security_groups => $security_groups,
#    ipv6_address_count => $ipv6_address_count,
#    network_interfaces => $network_interfaces,
#    private_ip_address => $private_ip_address,
#    security_group_ids => $security_group_ids,
#    tag_specifications => $tag_specifications,
#    hibernation_options => $hibernation_options,
#    credit_specification => $credit_specification,
#    iam_instance_profile => $iam_instance_profile,
#    block_device_mappings => $block_device_mappings,
#    license_specifications => $license_specifications,
#    disable_api_termination => $disable_api_termination,
#    instance_market_options => $instance_market_options,
#    elastic_gpu_specification => $elastic_gpu_specification,
#    elastic_inference_accelerators => $elastic_inference_accelerators,
#    capacity_reservation_specification => $capacity_reservation_specification,
#    instance_initiated_shutdown_behavior => $instance_initiated_shutdown_behavior,

  )

} # End of plan
