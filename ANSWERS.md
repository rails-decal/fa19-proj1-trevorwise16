# Q0: Why are these two errors being thrown?
#The first error is being thrown because we've staged a migration in the database for the app but haven't actually
#confirmed the migration. The second is because home tries to reference a pokemon in its code, while there is no 
#controller specified to handle this behavior.

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
#They are created using the seed file that populates the database with some pre-initialized Pokemon. The constant between
#them is that none of them belong to a trainer.

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
#It creates a button and sets the route resource to capture, with the parameter of the pokemon's id, and when clicked
#sends a patch request using that route constructed using the helper.

# Question 3: What would you name your own Pokemon?
#Winston

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
# I passed in :root, which is fine because this symbol is already tied to a path.

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
#

# Give us feedback on the project and decal below!

# Extra credit: Link your Heroku deployed app
