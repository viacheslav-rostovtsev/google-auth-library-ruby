# frozen_string_literal: true

# Copyright 2025 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

module Google
  module Auth
    ##
    # Error mixin module for Google Auth errors
    # All Google Auth errors should include this module
    #
    module Error; end

    ##
    # Error raised during initialization of Credentials
    #
    class InitializationError < StandardError
      include Error
    end

    ##
    # Generic error raised during operation of Credentials
    #
    class CredentialsError < StandardError
      include Error
    end

    ##
    # An error indicating the remote server refused to authorize the client.
    # Maintains backward compatibility with Signet
    #
    class AuthorizationError < Signet::AuthorizationError
      include Error
    end

    ##
    # An error indicating that the server sent an unexpected http status
    # Maintains backward compatibility with Signet
    #
    class UnexpectedStatusError < Signet::UnexpectedStatusError
      include Error
    end
    
    ##
    # An error indicating the client failed to parse a value.
    # Maintains backward compatibility with Signet
    #
    class ParseError < Signet::ParseError
      include Error
    end
  end
end