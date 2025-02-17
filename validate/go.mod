module github.com/decred/dcrwallet/validate

go 1.12

require (
	github.com/decred/dcrd/blockchain/standalone v1.0.0
	github.com/decred/dcrd/gcs v1.1.0
	github.com/decred/dcrd/wire v1.2.0
	github.com/decred/dcrwallet/errors/v2 v2.0.0-00010101000000-000000000000
	github.com/fsnotify/fsnotify v1.4.7 // indirect
	github.com/golang/protobuf v1.2.0 // indirect
	github.com/hpcloud/tail v1.0.0 // indirect
	github.com/kr/pretty v0.1.0 // indirect
	golang.org/x/sync v0.0.0-20181108010431-42b317875d0f // indirect
	gopkg.in/check.v1 v1.0.0-20180628173108-788fd7840127 // indirect
	gopkg.in/fsnotify.v1 v1.4.7 // indirect
	gopkg.in/tomb.v1 v1.0.0-20141024135613-dd632973f1e7 // indirect
)

replace github.com/decred/dcrwallet/errors/v2 => ../errors
