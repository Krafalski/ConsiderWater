##### Issues:

- when a new user is crated, there is no notification of success or rerouting, right now, the same page shows, like nothing even happened

- give error with create a new user if problem

- need a field for email when creating a new user
- need to add validation for email for the model

- give error with log in if problem

- need to change the view when the user clicks their own name
- move the user delete to somewhere else?

- when a user is logged in, you still see the sign up link

- need a better redirect when user creates a new journal entry

- any user can see all the journal entries

- user id not being added to journal entries

- authenticate in UsersController not working - commented out lets user see 'profile page'/destroy account page

- a user that is not logged in gets a 'cannot find id=0' when trying to user journals. Should just be blocked/throw an error to log in

- remove the box shadow on the mood bar once that is worked out

-turbolinks and jquery don't always play nice - need to fix it so that after clicking through the site a few times, jquery is still functioning

-css - SO much css needed to make it not be terrible/make it look like something.

- change the field sizes and shapes to make sense in the journal forms

- add a dependent destroy to users has many...

- updated journal entry out of chronological order?

- dates in _mood_rating.html.erb & _journal_entry.html.erb need formatting
