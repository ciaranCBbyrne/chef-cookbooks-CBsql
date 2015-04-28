name             'CBsql'
maintainer       'YOUR_COMPANY_NAME'
maintainer_email 'YOUR_EMAIL'
license          'All rights reserved'
description      'Installs/Configures CBsql'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.3'

depends 'mysql','~>6.0'
depends 'database'
depends 'mysql2_chef_gem', '~>1.0'