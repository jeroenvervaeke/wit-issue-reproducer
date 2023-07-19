#!/usr/bin/env bash
cargo build --package wit-issue-reproducer --target wasm32-wasi
wasm-tools component new ./target/wasm32-wasi/debug/wit_issue_reproducer.wasm -o fundament-component.wasm --adapt ./wasi_snapshot_preview1.reactor.wasm