Instance: ExampleSignatureLibrary
InstanceOf: Library
* description = """
This example now demonstrates how to properly attach an artifact signature to a
FHIR Library resource using the CRMI signature extension.

The generated SHA256 checksum of the current resource (which excludes `id`,
`text`, and `meta`), in minified JSON form is:
```
892c98e8660c3b84f88cffc4759880ea6f73afa9f58a5ee5dd2f8b7c48250dca
```

The signature `data` value after base64 decoding is a JWT:
```
eyJhbGciOiJSUzM4NCJ9.eyJpc3MiOiJodHRwczovL2xvY2FsaG9zdDozMDAwL29pZGMiLCJoYXNoIjoiODkyYzk4ZTg2NjBjM2I4NGY4OGNmZmM0NzU5ODgwZWE2ZjczYWZhOWY1OGE1ZWU1ZGQyZjhiN2M0ODI1MGRjYSJ9.T581_ZkQee7RnJpePnApDIgWtHCO6GUFltHF3riM0wEEAMuVK8X63OrBZpRMCFZWwJ9_RQk3Jo9q4Tyu5WxnZaFxyH0cDCs21gFuCtUanRf4jep2ZfShjVjmm90AGyAzz6EeTodpWyNL48Js__ZSmK8HahkFos5DWZdi93BZalOPvR-pAnzKgxyrrkdmLFZBjKC6drzqhfTyTY0P2yLZV0x6X3btvkdcci8_tqKDl8xz84Gut4iHr0fivP7CbzBoIO6Dlw1gScFWaE9ATRDvkTnSYu3JVptMZo4xgKhrL3ZQktrQZm1CIQ8tnMn5hCdT7W-DysejxxH9t128FYBA1Q
```

The decoded JWT payload contains the following fields:
- `iss`: The issuer of the signature, which is the CRMI server URL.
- `hash`: The SHA256 checksum of the resource in minified JSON form.
```
{
  "iss": "https://localhost:3000/oidc",
  "hash": "892c98e8660c3b84f88cffc4759880ea6f73afa9f58a5ee5dd2f8b7c48250dca"
}
```

The signature is created using the private key of the CRMI server, ensuring the
integrity and authenticity of the resource. Clients can verify JWT signature
using the public key provided by the CRMI server, and then verify the SHA256
checksum against the resource's content to ensure it has not been altered.
"""
* status = #active
* type = #logic-library
* meta.extension[CRMIArtifactSignature].valueSignature
  * type = http://hl7.org/fhir/signature-type#ProofOfCreation
  * when = "2025-05-12T10:17:55.135Z"
  * who.display = "CRMI Server"
  * sigFormat = #application/jwt
  * data = "ZXlKaGJHY2lPaUpTVXpNNE5DSjkuZXlKcGMzTWlPaUpvZEhSd2N6b3ZMMnh2WTJGc2FHOXpkRG96TURBd0wyOXBaR01pTENKb1lYTm9Jam9pT0RreVl6azRaVGcyTmpCak0ySTROR1k0T0dObVptTTBOelU1T0Rnd1pXRTJaamN6WVdaaE9XWTFPR0UxWldVMVpHUXlaamhpTjJNME9ESTFNR1JqWVNKOS5UNTgxX1prUWVlN1JuSnBlUG5BcERJZ1d0SENPNkdVRmx0SEYzcmlNMHdFRUFNdVZLOFg2M09yQlpwUk1DRlpXd0o5X1JRazNKbzlxNFR5dTVXeG5aYUZ4eUgwY0RDczIxZ0Z1Q3RVYW5SZjRqZXAyWmZTaGpWam1tOTBBR3lBeno2RWVUb2RwV3lOTDQ4SnNfX1pTbUs4SGFoa0ZvczVEV1pkaTkzQlphbE9QdlItcEFuektneHlycmtkbUxGWkJqS0M2ZHJ6cWhmVHlUWTBQMnlMWlYweDZYM2J0dmtkY2NpOF90cUtEbDh4ejg0R3V0NGlIcjBmaXZQN0NiekJvSU82RGx3MWdTY0ZXYUU5QVRSRHZrVG5TWXUzSlZwdE1abzR4Z0tockwzWlFrdHJRWm0xQ0lROHRuTW41aENkVDdXLUR5c2VqeHhIOXQxMjhGWUJBMVEK"
