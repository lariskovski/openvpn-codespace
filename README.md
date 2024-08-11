# Using the OpenVPN client from GitHub Codespaces

GitHub Codespaces provides a useful environment for development that is separated from your local machine. This provides some nice security benifits due to the fact that the codespace has no direct route to your machine or the network it is sitting in. However, you may have a resource you need to access that is in a private network. This sample illustrates how to set up the OpenVPN (v2) client in a codespace to connect into a OpenVPN capable VPN gateway.

# Using the sample

1. Get the openvpn profile config, example: `vpnconfig.ovpn`

2. Add the file content to a github secret created on *your user's config* named `OPENVPN_CONFIG`

3. create a new secret named `OPENVPN_AUTH` with your user's email and secret like so:

```
user@email.com
123456
```
4. Give access to the repository on these two new secrets

5. Create a new codespace on the repository

5. Execute

```sh
$ sudo openvpn --config .devcontainer/openvpn/vpnconfig.ovpn --auth-user-pass .devcontainer/openvpn/auth --auth-retry interact --auth-nocache
```

If MFA is enabled this is gonna show up:

```sh
CHALLENGE: Enter OTP Code
```

Enter your Authenticator's app code. When `Initialization Sequence Completed` shows up on the terminal, it means the connection was successfull.
