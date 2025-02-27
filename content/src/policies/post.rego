package peoplefinder.POST.api.users

# Policy for creating an employee in PeopleFinder. 
#
# The user is Allowed if:
# - User is an admin
#
# Visible
# - If Allowed
#
# Enabled
# - If Allowed

import input.user.properties.roles as user_roles

default allowed := false
default visible := false
default enabled := false

# Check if "admin" is one of the user's roles
allowed if {
	"admin" = user_roles[_]
}

# Visible if the policy is allowed
visible if {
	allowed
}

# Enabled if the policy is allowed
enabled if {
	allowed
}
