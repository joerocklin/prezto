#
# Sets up the chefdk settings 
#
# Authors:
#  Joe Rocklin <joe.rocklin@gmail.com>
#

# Add the chedfk path to the RUBIES array
RUBIES+=(
  /opt/chefdk/embedded
)

# Load Dependencies
pmodload 'ruby'

# Return if requirements are not found.
if (( ! $+commands[chruby-exec] )); then
  return 1
fi

