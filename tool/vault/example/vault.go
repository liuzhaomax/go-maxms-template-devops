// Copyright (c) HashiCorp, Inc.
// SPDX-License-Identifier: MPL-2.0

package main

import (
	"context"
	"encoding/json"
	"fmt"
	"net/http"
	"time"

	vault "github.com/hashicorp/vault/api"
)

const (
	username  = "liuzhao"
	password  = "123456"
	vaultAddr = "http://127.0.0.1:8200"
)

var httpClient = &http.Client{
	Timeout: 10 * time.Second,
}

func userpassLogin() (string, error) {
	// create a vault client
	client, err := vault.NewClient(&vault.Config{Address: vaultAddr, HttpClient: httpClient})
	if err != nil {
		return "", err
	}

	// to pass the password
	options := map[string]interface{}{
		"password": password,
	}
	path := fmt.Sprintf("auth/userpass/login/%s", username)

	// PUT call to get a token
	secret, err := client.Logical().Write(path, options)
	if err != nil {
		return "", err
	}

	token := secret.Auth.ClientToken
	return token, nil
}

func main() {
	// Authenticate and obtain a token
	token, err := userpassLogin()
	if err != nil {
		panic(err)
	}

	fmt.Println("Token:", token)

	// Create a new Vault client with the obtained token
	client, err := vault.NewClient(&vault.Config{Address: vaultAddr, HttpClient: httpClient})
	if err != nil {
		panic(err)
	}

	// Set the token for subsequent requests
	client.SetToken(token)
	client.SetNamespace("dev")
	kvPath := "kv"
	ctx := context.Background()

	// Write a secret
	//secretData := map[string]interface{}{
	//	"jwt_secret": "987654",
	//}
	//_, err = client.KVv2(kvPath).Put(ctx, client.Namespace(), secretData)
	//if err != nil {
	//	log.Fatalf("unable to write secret: %v", err)
	//}
	//
	//fmt.Println("Secret written successfully.")

	// Make a read request to Vault
	secret, err := client.KVv2(kvPath).Get(ctx, client.Namespace())
	if err != nil {
		panic(err)
	}
	// Print the response for troubleshooting
	fmt.Println("Vault Response:", secret)

	b, err := json.Marshal(secret.Data)
	if err != nil {
		panic(err)
	}

	fmt.Println("Secret Data:", string(b))
}
