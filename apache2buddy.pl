#!/usr/bin/perl

eval "use diagnostics; 1"  or die("\n[ FATAL ] Could not load the Diagnostics module.\n\nTry:\n\n      sudo apt-get install perl-modules\n\nThen try running this script again.\n\n");
use Getopt::Long qw(:config no_ignore_case bundling pass_through);
use POSIX;
use strict;

############################################################################################################
##       ___                     __        ___      ____            __    __                              ##
##      /   |  ____  ____ ______/ /_  ___ |__ \    / __ )__  ______/ /___/ /_  __                         ##
##     / /| | / __ \/ __ `/ ___/ __ \/ _ \__/ /   / __  / / / / __  / __  / / / /                         ##
##    / ___ |/ /_/ / /_/ / /__/ / / /  __/ __/   / /_/ / /_/ / /_/ / /_/ / /_/ /                          ##
##   /_/  |_/ .___/\__,_/\___/_/ /_/\___/____/  /_____/\__,_/\__,_/\__,_/\__, /    ...new & improved!!!   ##
##         /_/ apache2buddy.pl                                          /____/                            ##
##                                                                                                        ##
############################################################################################################
# author: richard forth
# version: 1.0
# description: apache2buddy, a fork of apachebuddy that caters for apache2, obviously.
#
#  Github Page: https://github.com/richardforth/apache2buddy
#  Please only make pull requests from staging branch.
#
###########################################################################################################
#
#                                           L I C E N S E
#
###########################################################################################################
#
#   Copyright 2016 Richard Forth
#
#   Licensed under the Apache License, Version 2.0 (the "License");
#   you may not use this file except in compliance with the License.
#   You may obtain a copy of the License at
#
#       http://www.apache.org/licenses/LICENSE-2.0
#
#   Unless required by applicable law or agreed to in writing, software
#   distributed under the License is distributed on an "AS IS" BASIS,
#   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#   See the License for the specific language governing permissions and
#   limitations under the License.
#    
#   The copyright line reads as my name, because I did a lot of work in making
#   this fork a whole new beast, and the previous project was never distributed
#   under any official license, I did get the blessing from Gus Maskowitz to
#   publish it under the Apache License 2.0.
#   
#   The purpose of the license is to ensure that free software remains free, not
#   as in "free beer" but in "freedom". The freedom to derive new software from
#   this and to keep that software "free" too. 
#   
#   But it is important to acknowldege too, that this is a derivative work from 
#   apachebuddy.pl. Even though it is not being maintained any more, I would like 
#   to acknowledge the talents of a few people:
#   
#     Major Hayden - for his inspiring work on MySQLTuner.pl
#     Jacob Walcik - who is the credited author of apache2buddy.pl (see the first
#                    few lines of the original script code at http:// apachebuddy.pl)
#     Gus Maskowitz - for his work on the script, though it is no longer maintained
#     Will Parsons - for hosting the original script at http://apachebuddy.pl
#   
#   Here I note that I also do not maintain the old project, this is a complete
#   fork and revamp of the original code, and is maintained separately.
#   
#  Please keep any and all credits in the source code, and if you derive a new
#  software from it, by all means add your own credits.
#
#
############################################################################################################

# add some colour
my $BLUE = "\033[94m";
my $ENDC = "\033[0m";


# print a header
my $header = <<"END_HEADER";
########################################################################################
##       ___                     __        ___      ____            __    __          ##
##      /   |  ____  ____ ______/ /_  ___ |__ \\    / __ )__  ______/ /___/ /_  __     ##
##     / /| | / __ \\/ __ `/ ___/ __ \\/ _ \\__/ /   / __  / / / / __  / __  / / / /     ##
##    / ___ |/ /_/ / /_/ / /__/ / / /  __/ __/   / /_/ / /_/ / /_/ / /_/ / /_/ /      ##
##   /_/  |_/ .___/\\__,_/\\___/_/ /_/\\___/____/  /_____/\\__,_/\\__,_/\\__,_/\\__, /       ##
##         /_/ apache2buddy.pl    ${BLUE}OFFICIAL SCREAM TESTING IN PROGRESS${ENDC}  /____/        ##
##                                                                                    ##
########################################################################################
END_HEADER

print $header;
print "\n\nApache2buddy is currently undergoing scream testing.";
print "\n\nIf you value this tool you can take part in the screamtest in the following way:";
print "\n\n\t* Vote with a thumbsdown reaction at: ${BLUE}https://github.com/richardforth/apache2buddy/issues/13${ENDC}";
print "\n\nThe scream test will end on __TBA__, after which normal functionality will be restored.";
print "\n\nIf you have any questions or concerns, please comment on the above issue thread.\n\n";
