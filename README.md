Built as part of a learning exercise in Rails, this application is intended to replicate the functionality of LinkedIn and other similar networking sites. The app currently allows signed in users to construct a profile with a list of his or her past degrees, containing associated information such as grade point average, year completed, and major. Furthermore, users can browse the site’s list of all users, with filtering available by minimum GPA. Other functionality may be added in the future, and I welcome feedback / suggestions from all those in the Github community!


INSTALLATION

Fork and clone this repository to your local environment and run bundle install to get started. Next, fun ‘rake db:migrate’ to create the necessary tables in the database. Enter ‘rails s’ to run the app on your local server.

To use the Facebook oauth login, you will have to set the environment variables, ‘FACEBOOK_APP_ID’ and ‘FACWBOOK_SECRET’ with your own facebook application values, as I do not have these posted publicly. These variables may be set with the Figaro gem that is included in the Gemfile - run ‘figaro install’ in your command line to create the file, ‘application.yml’, in the config directory.


CONTRIBUTIONS

While this application is being built primarily as a learning exercise, I welcome contributions from outside programmers, as well. Feel free to submit pull requests with suggested changes / additions with a brief description of your code.


LICENSING

MIT License

Copyright (c) [2016] [Chris Bruen]

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
