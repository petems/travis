require 'travis/cli'

module Travis
  module CLI
    class Disable < RepoCommand
      def run
        authenticate
        repository.disable
        say "disabled", color("#{slug}: %s :(", :error)
      end
    end
  end
end
