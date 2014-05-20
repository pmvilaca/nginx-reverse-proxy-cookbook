# nginx-reverse-proxy-cookbook

This cookbook provides an easy way to configure nginx as a reverse proxy to a single backend service

## Supported Platforms

Please check the opscode nginx cookbook

## Attributes

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['nginx]['reverseproxy']['destination_ip']</tt></td>
    <td>IP address</td>
    <td>IP address of the backend service that will be behind the proxy</td>
    <td><tt>127.0.0.1</tt></td>
  </tr>
  <tr>
    <td><tt>['nginx]['reverseproxy']['destination_port']</tt></td>
    <td>Port</td>
    <td>Port of the backend service that will be behind the proxy</td>
    <td><tt>8080</tt></td>
  </tr>
</table>

## Usage

### nginx-reverse-proxy::default

Include `nginx-reverse-proxy` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[nginx-reverse-proxy::default]"
  ]
}
```
If you want to change the default port:

```json
{
  "run_list": [
      "recipe[nginx-reverse-proxy::default]"
  ],
  "nginx": {
      "reverseproxy":{
        "destination_port": 7990
      }
  }
}
```

## Contributing

1. Fork the repository on Github
2. Create a named feature branch (i.e. `add-new-recipe`)
3. Write you change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request

## License and Authors

Author:: Pedro Vilaca
