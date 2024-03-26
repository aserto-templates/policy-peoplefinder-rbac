package peoplefinder.POST.api.users.__id

# Policy for updating an employee's deparment and title in PeopleFinder
#
# The user is Allowed if:
# - User is an admin
#
# The "Update" button is Visible if:
# - True
#
# The "Update" button is enabled if:
# - Allowed is true

import input.user.properties.roles as user_roles

default allowed := false
default visible := true
default enabled := false

# Iterate over all the user's roles and return "true" if "admin" is present
allowed if {
	"admin" = user_roles[_]
}

# Enabled is set to the result of the Allowed decision
enabled if {
	allowed
}
