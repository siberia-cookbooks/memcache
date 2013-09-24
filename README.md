memcache Cookbook
=================

This cookbook installs and configures memcached.

Requirements
------------
TODO: List your cookbook requirements. Be sure to include any requirements this cookbook has on platforms, libraries, other cookbooks, packages, operating systems, etc.

e.g.
#### packages
- `toaster` - memcache needs toaster to brown your bagel.

Attributes
----------

#### memcache::server
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['memcache']['memory']</tt></td>
    <td>Integer</td>
    <td>How much RAM memcached can use (in MiB) -- defaults to 128MiB</td>
    <td><tt>true</tt></td>
  </tr>
</table>

Usage
-----
#### memcache::default
TODO: Write usage instructions for each cookbook.

e.g.
Just include `memcache` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[memcache]"
  ]
}
```

Contributing
------------

1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write you change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Authors:

 * Jacques Marneweck (jacques@powertrip.co.za)
