--[[ $%BEGINLICENSE%$
 Copyright (c) 2007, 2012, Oracle and/or its affiliates. All rights reserved.

 This program is free software; you can redistribute it and/or
 modify it under the terms of the GNU General Public License as
 published by the Free Software Foundation; version 2 of the
 License.

 This program is distributed in the hope that it will be useful,
 but WITHOUT ANY WARRANTY; without even the implied warranty of
 MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 GNU General Public License for more details.

 You should have received a copy of the GNU General Public License
 along with this program; if not, write to the Free Software
 Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA
 02110-1301  USA

 $%ENDLICENSE%$ --]]
--
-- this file contains a list of tests to skip.
-- Add the tests to skip to the table below
--

tests_to_skip = {
    --  test name          reason
    --  --------------    ---------------------------
    ['dummy']       = 'Too ugly to show',
    ['invalid_response_packets'] = 'currently we have a connection close which we can\'t test with mysqltest',
	['bug_30867'] = 'only test for ps here',
	['bug_35669'] = 'only test for ps here',
	['bug_35729'] = 'only test for ps here',
	['bug_41991'] = 'only test for ps here',
	['bug_43078'] = 'only test for ps here',
	['bug_45167'] = 'only test for ps here',
	['bug_46141'] = 'only test for ps here',
	['bug_49248'] = 'only test for ps here',
	['bug_55459'] = 'only test for ps here',
	['bug_61998'] = 'only test for ps here',
	['chain1'] = 'only test for ps here',
	['change_user'] = 'only test for ps here',
	['client_address'] = 'only test for ps here',
	['constants'] = 'only test for ps here',
	['error_struct'] = 'only test for ps here',
	['failover'] = 'only test for ps here',
	['ignore-resultset'] = 'only test for ps here',
	['nvalid_response_packets'] = 'only test for ps here',
	['lineno'] = 'only test for ps here',
	['load-data-infile'] = 'only test for ps here',
	['load_multi'] = 'only test for ps here',
	['mysql-40'] = 'only test for ps here',
	['no_backend'] = 'only test for ps here',
	['overlong'] = 'only test for ps here',
	['raw_packets'] = 'only test for ps here',
	['resultset'] = 'only test for ps here',
	['select_affected_rows'] = 'only test for ps here',
	['select_null'] = 'only test for ps here',
	['tokens-normalize'] = 'only test for ps here',
	['xtab1'] = 'only test for ps here',
	['xtab2'] = 'only test for ps here',
	['tokens1'] = 'only test for ps here',
	['tokens2'] = 'only test for ps here.',
}

local build_os = os.getenv("BUILD_OS")

--
-- some older OSes run out of memory in the 32M byte test on our build
-- platforms. We disable just that test on those platforms
if build_os and
	(build_os == "i386-pc-solaris2.8" or
	 build_os == "x86_64-pc-solaris2.8" or
	 build_os == "sparc-sun-solaris2.8" or
	 build_os == "sparc-sun-solaris2.9" or
	 build_os == "powerpc-ibm-aix5.3.0.0") then
	tests_to_skip['overlong'] = "can't allocate more than 32M"
end


