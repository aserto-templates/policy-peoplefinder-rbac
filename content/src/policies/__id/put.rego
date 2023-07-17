package peoplefinder.PUT.api.users.__id

# Policy for updating an employee's phone number in PeopleFinder
#
# The user is Allowed if:
# - User is an admin
# - The user and the employee being updated are the same
#
# The "Edit" button is Visible if:
# - True
#
# The "Edit" button is Enabled if:
# - True

import input.user.properties.roles as user_roles

default allowed = false
default visible = true
default enabled = true

# Iterate over all the user's roles and return "true" if "admin" is present
allowed {
	"admin" = user_roles[_]
}

# Check if the user is the same as the employee being updated
allowed {
	input.user.key == input.resource.id
}
