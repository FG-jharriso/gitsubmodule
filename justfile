#############################################################################
# Justfile Imports, order matters:                                          #
#   'Base' at the bottom, project specific at the top.                      #
#   'Each layer will override the previous layer - important for variables' #
#                                                                           #
#   Comment out any layer between Project Specific and Base                 #
#   not being used.                                                         #
#############################################################################

#
# Project specific - justfile
#
# import './<project>.justfile'

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# import './justfiles/tf.justfile'
# import './justfiles/git.justfile'
import './justfiles/justenvs/live.justfile'
import './justfiles/justenvs/prod.justfile'
import './justfiles/justenvs/dev.justfile'
import './justfiles/devtools.justfile'
# import './justfiles/justenvs/obsrv.justfile'
#
# Required for SSL Development
#
# import './justfiles/pki.justfile'
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# ~

#
# Base - Justfiles
#
import './justfiles/tshoot.justfile'
import './justfiles/dockerdev.justfile'
# Usually if you need a sidecar, or pki. 
import './justfiles/buildbase.justfile' 
import './justfiles/base.justfile'

#
# Default recipe
#
[group('Default')]
default:
    just --list

