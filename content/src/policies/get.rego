package peoplefinder.GET.api.users

# Policy for retrieving the list of employees in PeopleFinder
#
# Retrieving the list of employees is Allowed if:
# - True
#
# The list of employees is Visible if:
# - True
#
# The list of employees is Enabled if:
# - True

default allowed = true
default visible = true
default enabled = true