# Use the official Ruby image as a base
FROM ruby:3.3

# Set the working directory
#WORKDIR /app

# Install dependencies
#COPY Gemfile Gemfile.lock ./
# RUN bundle install

# Copy the rest of the application code
#COPY . .

# Precompile assets (optional, if you are using Rails assets)
#RUN RAILS_ENV=production bundle exec rake assets:precompile

# Expose the port the app runs on
EXPOSE 3000

# Start the Rails server
CMD ["rails", "server", "-b", "0.0.0.0"]