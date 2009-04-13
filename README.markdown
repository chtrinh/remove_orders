# Remove Orders

## SUMMARY
Attach a delete order method to the admin/order class. 
Allowing you to permanently deleted orders from the database. 

## QUICK START

1. script/extension install git://github.com/chtrinh/remove_orders.git

## NOTES - TODO

TODO - Check if user has the correct user previlages (ie. admin) to call the function *might be irrelevant*
     - Should only enable during development/test ENV?
     - When users delete last order on pagination page, it should redirect to previous page, currently just shows nothing.
     - Consider adding a (all) or (none) checkbox selector link. Suggestions?
     - Refactor/DRY up code to be a better fit for future releases.

## Warning 

Use at your own risk!

## License

The MIT License

Copyright (c) 2008 Chris Trinh

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.