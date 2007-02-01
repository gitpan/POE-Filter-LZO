use inc::Module::Install;
name 'POE-Filter-LZO';
author 'Chris Williams <chris@bingosnet.co.uk>';
license 'perl';
version_from 'lib/POE/Filter/LZO.pm';
requires 'Carp' => 0;
requires 'POE'    => 0.38;
requires 'Compress::LZO' => 1.08;
WriteAll();
