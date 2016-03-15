require 'tmpdir'
require 'git'

require 'cheshirecat/version'

module Cheshirecat
  def deploy(source:, remote:, branch:, name:, email:)
    Dir.mktmpdir do |working_directory|
      deploy_directory = File.join(working_directory, 'cheshirecat_deploy')

      FileUtils.cp_r(source, deploy_directory)

      repository = Git.init(deploy_directory)
      repository.add_remote('origin', remote)

      repository.config('user.name', name)
      repository.config('user.email', email)

      repository.add(all: true)
      repository.commit_all("Automated deploy commit by Cheshirecat #{Time.now}")

      repository.push('origin', 'master', force: true)
    end
  end

  module_function :deploy
end
