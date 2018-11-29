==============
 Coding Style
==============

- PSR-2
  - https://github.com/php-fig/fig-standards/blob/master/accepted/PSR-2-coding-style-guide.md
  - http://blog.mosil.biz/2012/09/psr-2-basic-coding-standard/

- PSR-1
  - https://github.com/php-fig/fig-standards/blob/master/accepted/PSR-1-basic-coding-standard.md
  - http://blog.mosil.biz/2012/08/psr-1-basic-coding-standard/

- PSR-0
  - https://github.com/php-fig/fig-standards/blob/master/accepted/PSR-0.md
  - http://blog.mosil.biz/2012/08/psr-0-autoloading-standard/

- Use 'echo' instead of 'print', and use as a function as 'echo()'.

- include/require/require_once is a statement, not a function. Do not use include() / require() / require_once().
  - ref: http://php.net/manual/en/function.include.php for different of 'include' and 'include()'.

- include/require/require_once a file with full path, unless include/require/require_once a file from include_path.
  - require __DIR__ . '/lib.php';  // PHP 5.3+
  - require dirname(__FILE__) . '/lib.php';  // PHP 5.2-

- Free to use <?= $blah ?> instead of <?php echo($blah); ?>.
