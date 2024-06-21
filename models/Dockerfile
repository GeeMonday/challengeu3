# Use an official Ruby runtime as a parent image
FROM ruby:2.3.4

# Set environment variables
ENV RAILS_ENV=development \
    RAILS_ROOT=/workspaces/Active-Record-Challenge/models

# Set working directory
WORKDIR $RAILS_ROOT

# Install dependencies
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

# Install Rails 2.3.4
RUN gem install -v 2.3.4 rails --no-document

# Bundle install
COPY Gemfile Gemfile.lock ./
RUN gem install bundler -v '< 2' && bundle install

# Copy the application code
COPY . .

# Expose port 3000 to the Docker host, so we can access the Rails server
EXPOSE 3000

# Start the Rails server by default when the container starts
CMD ["rails", "server", "-b", "0.0.0.0"]
