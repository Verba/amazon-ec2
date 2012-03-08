require 'AWSAPI/EC2/availability_zones'
require 'AWSAPI/EC2/console'
require 'AWSAPI/EC2/devpay'
require 'AWSAPI/EC2/elastic_ips'
require 'AWSAPI/EC2/image_attributes'
require 'AWSAPI/EC2/images'
require 'AWSAPI/EC2/instances'
require 'AWSAPI/EC2/keypairs'
require 'AWSAPI/EC2/password'
require 'AWSAPI/EC2/products'
require 'AWSAPI/EC2/security_groups'
require 'AWSAPI/EC2/snapshots'
require 'AWSAPI/EC2/spot_instance_requests'
require 'AWSAPI/EC2/spot_prices'
require 'AWSAPI/EC2/subnets'
require 'AWSAPI/EC2/tags'
require 'AWSAPI/EC2/volumes'

module AWSAPI
  module EC2

    # Which host FQDN will we connect to for all API calls to AWS?
    # If EC2_URL is defined in the users ENV we can override the default with that.
    #
    # @example
    #   export EC2_URL='https://ec2.amazonaws.com'
    if ENV['EC2_URL']
      EC2_URL = ENV['EC2_URL']
      DEFAULT_HOST = URI.parse(EC2_URL).host
    else
      # Default US API endpoint
      DEFAULT_HOST = 'ec2.amazonaws.com'
    end

    API_VERSION = '2010-08-31'

    class Base < AWSAPI::Base
      def api_version
        API_VERSION
      end

      def default_host
        DEFAULT_HOST
      end
    end

  end
end

