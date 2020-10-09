# Mechanic Book 

This application is intended for the purpose of management of mechanic facility vehicle repair. 

## Table of contents

- [Quick Start](#quick-start)
- [What's Included](#whats-included)
- [License](#license)

## Quick Start

- Clone Repo `https://github.com/TimothyPhilip/Mechanic_Book.git`

- Run Bundle to install gems 

## What's Included

Within the application you'll find that Rails on Ruby is the interpretation being implemented against.  Active Record database usage and building from Sinatra is ideally the goal of this project application.  From the basic created structure of Rails you'll find the following directories and files in logical REST and CRUD convention.  Basic construct is as follows: 

```text
mechanic_book/
└── app/
    ├── controllers/
    │   ├── application_controller
    │   ├── mechanics_controller
    │   ├── repairs_controller
    │   ├── sessions_controller
    │   ├── vehicles_controller
    ├── models/
    │   ├── application_record.rb
    │   ├── mechanics.rb
    │   ├── repairs.rb
    │   ├── vehicles.rb
    ├── views/
        ├── layouts
        ├── mechanics
        ├── repairs
        ├── sessions
        ├── vehicles
```

## License

MIT License

Copyright (c) [2022] [Philippe Timothe]

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.