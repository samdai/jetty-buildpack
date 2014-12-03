module LanguagePack::DynatraceHelpers

  DYNATRACE_SERVER_ENV_VARIABLE = 'DYNATRACE_SERVER'.freeze
  DYNATRACE_AGENT_NAME_ENV_VARIABLE = 'DYNATRACE_AGENT_NAME'.freeze
  DYNATRACE_AGENT_DOWNLOAD = "http://download.test.cf.hybris.com/dynatrace".freeze
  DYNATRACE_AGENT_LIB = "libdtagent-6.0.0.so".freeze

  def install_dynatrace_agent
    if ENV.key?(DYNATRACE_SERVER_ENV_VARIABLE)
      Dir.chdir("lib") do
        puts "Downloading Dynatrace agent lib: #{DYNATRACE_AGENT_LIB}"
        fetch_package DYNATRACE_AGENT_LIB, DYNATRACE_AGENT_DOWNLOAD
      end
    end
  end

  def get_dynatrace_javaopts
    opts = {}
    if ENV.key?(DYNATRACE_SERVER_ENV_VARIABLE)
      name = ENV.key?(DYNATRACE_AGENT_NAME_ENV_VARIABLE) ? ENV[DYNATRACE_AGENT_NAME_ENV_VARIABLE] : ENV['VCAP_APPLICATION']['name']
      server = ENV[DYNATRACE_SERVER_ENV_VARIABLE]
      opts = {"-agentpath:" => "./lib/#{DYNATRACE_AGENT_LIB}=name=#{name},server=#{server},wait=45,transformationmaxavgwait=256,storage=."}
    end
    opts
  end

end
