0. SphinxQL reference
=====================



1. Sphinx deprecations and changes in default configuration
===========================================================

Changes are as follows:

- short item.

- 32-bit document IDs are now deprecated. Our binary releases are now all built with 64-bit IDs by default. Note that they can still load older indexes with 32-bit IDs, but that support will eventually be removed. In fact, that was deprecated awhile ago, but now we just want to make it clear: we don't see any sense in trying to save your server's RAM this way.

- short item.

- short item.

- short item.





If the table contains document IDs from 1 to, say, 2345, then sql_query would be run three times:

1. with *$start* replaced with 1 and *$end* replaced with 1000;

2. with *$start* replaced with 1001 and *$end* replaced with 2000;

3. with *$start* replaced with 2001 and *$end* replaced with 2345.



Obviously, that's not much of a difference for 2000-row table, but when it comes to indexing 10-million-row MyISAM table, ranged queries might be of some help.



::

  
  ...
  sql_query = SELECT id, title, content, \
      author_id, forum_id, post_date FROM my_forum_posts
  sql_attr_uint = author_id
  sql_attr_uint = forum_id
  sql_attr_timestamp = post_date
  ...



