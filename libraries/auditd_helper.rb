# Encoding: utf-8
# Cookbook Name:: auditd
#
# Copyright 2016, PagerDuty
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

module AuditD
  module Helper
    def auditd_package_name_for platform_family
      case platform_family
      when 'rhel'
        'audit'
      when 'fedora'
        'audit'
      else
        'auditd'
      end
    end
  end
end
