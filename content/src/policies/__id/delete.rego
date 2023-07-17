package peoplefinder.DELETE.api.users.__id

# Policy for deleting an employee in PeopleFinder
#
# The user is Allowed if:
# - User is an admin
#
# The "Delete" button is Visible if:
# - User is an editor or an admin
#
# The "Delete" button is Enabled if:
# - Allowed is true

import future.keywords.in
import input.user.properties.roles as user_roles

default allowed = false
default visible = false
default enabled = false

# Iterate over all the user's roles and return "true" if "admin" is present
allowed {
	"admin" = user_roles[_]
}

# Iterate over all the user's roles and return true if "admin" or "editor" is present
visible {
	allowedRoles := {"editor", "admin"}
	some x in allowedRoles
	x = user_roles[_]
}

# Enabled is set to the result of the Allowed decision
enabled {
    allowed
}
