package main

import "C"

import (
	"encoding/hex"
	"fmt"

	"github.com/btcsuite/btcd/btcec"
	"github.com/okx/go-wallet-sdk/coins/ethereum"
	"github.com/okx/go-wallet-sdk/crypto/bip32"
	"github.com/tyler-smith/go-bip39"
)

//export GenerateMnemonic
func GenerateMnemonic() *C.char {
	entropy, err := bip39.NewEntropy(256)

	if err != nil {
		return C.CString("[GenerateMnemonic Error]: " + err.Error())
	}

	mnemonic, _ := bip39.NewMnemonic(entropy)

	return C.CString(mnemonic)
}

//export GetDerivedPath
func GetDerivedPath(index int) *C.char {
	return C.CString(fmt.Sprintf(`m/44'/60'/0'/0/%d`, index))
}

//export GetDerivedKey
func GetDerivedKey(mnemonic *C.char, hdPath *C.char) (*C.char, *C.char) {
	seed := bip39.NewSeed(C.GoString(mnemonic), "")
	rp, err := bip32.NewMasterKey(seed)

	if err != nil {
		err := C.CString("[GetDerivedPrivateKey Error]")
		return err, err
	}

	c, err := rp.NewChildKeyByPathString(C.GoString(hdPath))

	if err != nil {
		err := C.CString("[NewChildKeyByPathString Error]")
		return err, err
	}

	childPrivateKey := hex.EncodeToString(c.Key.Key)
	childPublicKey := hex.EncodeToString(c.PublicKey().Key)

	return C.CString(childPrivateKey), C.CString(childPublicKey)
}

//export GetNewAddress
func GetNewAddress(prvHex *C.char) *C.char {
	prvBytes, err := hex.DecodeString(C.GoString(prvHex))
	if err != nil {
		return C.CString("")
	}

	prv, pub := btcec.PrivKeyFromBytes(btcec.S256(), prvBytes)
	if prv == nil {
		return C.CString("")
	}

	pubHex := hex.EncodeToString(pub.SerializeCompressed())
	return C.CString(ethereum.GetAddress(pubHex))
}

//export IsValidAddress
func IsValidAddress(address *C.char) bool {
	return ethereum.ValidateAddress(C.GoString(address))
}

func main() {
}
