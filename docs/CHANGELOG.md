# [1.1.0-alpha.2](https://git.emico.nl/hipex-services/docker-image-nginx/compare/v1.1.0-alpha.1...v1.1.0-alpha.2) (2021-01-11)


### Bug Fixes

* added `ssl_session_cache`, `ssl_session_timeout`, `ssl_buffer_size` and `ssl_session_tickets` settings to match platform configuration ([70d623c](https://git.emico.nl/hipex-services/docker-image-nginx/commit/70d623c1c0f91d6810253e8b3475c096fdc332e5))
* Added the `map_hash_bucket_size`, `server_names_hash_bucket_size`, `server_names_hash_max_size` and `variables_hash_max_size` buffer to match platform configuration ([c805dbd](https://git.emico.nl/hipex-services/docker-image-nginx/commit/c805dbd85b5a113c996710b25a3dadb86d0caed7))

# [1.1.0-alpha.1](https://git.emico.nl/hipex-services/docker-image-nginx/compare/v1.0.1-alpha.2...v1.1.0-alpha.1) (2020-12-22)


### Features

* Added nginx echo module version 0.62 support ([32072ec](https://git.emico.nl/hipex-services/docker-image-nginx/commit/32072ec0154dcb542564b1db84c293d3088b7dab))
* Added nginx geoip module ([870dc49](https://git.emico.nl/hipex-services/docker-image-nginx/commit/870dc49e5ecb5c202e8b7f75349470fbebeece41))
* Added test step into ci/cd ([02f7a3b](https://git.emico.nl/hipex-services/docker-image-nginx/commit/02f7a3baf3a236614efc6d1a5f283fdccec4a9c0))

## [1.0.1-alpha.2](https://git.emico.nl/hipex-services/docker-image-nginx/compare/v1.0.1-alpha.1...v1.0.1-alpha.2) (2020-11-19)


### Bug Fixes

* Now includes the `/etc/nginx/bots.d/blockbots.conf` and `/etc/nginx/bots.d/ddos.conf` nginx files to match Hipex Dedicated environment ([ecd4a38](https://git.emico.nl/hipex-services/docker-image-nginx/commit/ecd4a387a926a5f67a3075bf2178324bb6e1251b))

## [1.0.1-alpha.1](https://git.emico.nl/hipex-services/docker-image-nginx/compare/v1.0.0...v1.0.1-alpha.1) (2020-11-10)


### Bug Fixes

* Now only scans same file system for `.hipextemplate` config files ([dedd28e](https://git.emico.nl/hipex-services/docker-image-nginx/commit/dedd28e04bf009d2a7cde310d47e39f489dbdf1d))
* Now pushes latest release under the `latest` tag ([f7503bf](https://git.emico.nl/hipex-services/docker-image-nginx/commit/f7503bf49107ab3cfcc88740391d2dfb2ebe1833))

# 1.0.0 (2020-09-16)


### Bug Fixes

* deploy step ([2f183e9](https://git.emico.nl/hipex-services/docker-image-nginx/commit/2f183e9dc4d8e33c98cc73adba194fec64f82153))
* docker extends ([bba1b9b](https://git.emico.nl/hipex-services/docker-image-nginx/commit/bba1b9bda1f3f0b6a522205a168f903417f2c8f6))
* tag push ([2de856b](https://git.emico.nl/hipex-services/docker-image-nginx/commit/2de856bdbd360e9c78ac5efa0aab37302c16831f))


### Features

* build fix ([7f0364b](https://git.emico.nl/hipex-services/docker-image-nginx/commit/7f0364b7c90b0f13dfa6ee00bcc2a9edac61f1b5))
* initial version with tags ([6babaf7](https://git.emico.nl/hipex-services/docker-image-nginx/commit/6babaf74f6d5825446e9c0aa433a6ad395ff1035))

# 1.0.0-beta.1 (2020-09-16)


### Bug Fixes

* deploy step ([2f183e9](https://git.emico.nl/hipex-services/docker-image-nginx/commit/2f183e9dc4d8e33c98cc73adba194fec64f82153))
* docker extends ([bba1b9b](https://git.emico.nl/hipex-services/docker-image-nginx/commit/bba1b9bda1f3f0b6a522205a168f903417f2c8f6))
* tag push ([2de856b](https://git.emico.nl/hipex-services/docker-image-nginx/commit/2de856bdbd360e9c78ac5efa0aab37302c16831f))


### Features

* build fix ([7f0364b](https://git.emico.nl/hipex-services/docker-image-nginx/commit/7f0364b7c90b0f13dfa6ee00bcc2a9edac61f1b5))
* initial version with tags ([6babaf7](https://git.emico.nl/hipex-services/docker-image-nginx/commit/6babaf74f6d5825446e9c0aa433a6ad395ff1035))

# 1.0.0-beta.1 (2020-09-16)


### Bug Fixes

* deploy step ([2f183e9](https://git.emico.nl/hipex-services/docker-image-nginx/commit/2f183e9dc4d8e33c98cc73adba194fec64f82153))
* docker extends ([bba1b9b](https://git.emico.nl/hipex-services/docker-image-nginx/commit/bba1b9bda1f3f0b6a522205a168f903417f2c8f6))
* tag push ([2de856b](https://git.emico.nl/hipex-services/docker-image-nginx/commit/2de856bdbd360e9c78ac5efa0aab37302c16831f))


### Features

* build fix ([7f0364b](https://git.emico.nl/hipex-services/docker-image-nginx/commit/7f0364b7c90b0f13dfa6ee00bcc2a9edac61f1b5))
* initial version with tags ([6babaf7](https://git.emico.nl/hipex-services/docker-image-nginx/commit/6babaf74f6d5825446e9c0aa433a6ad395ff1035))

# 1.0.0-beta.1 (2020-09-16)


### Bug Fixes

* deploy step ([2f183e9](https://git.emico.nl/hipex-services/docker-image-nginx/commit/2f183e9dc4d8e33c98cc73adba194fec64f82153))
* docker extends ([bba1b9b](https://git.emico.nl/hipex-services/docker-image-nginx/commit/bba1b9bda1f3f0b6a522205a168f903417f2c8f6))
* tag push ([2de856b](https://git.emico.nl/hipex-services/docker-image-nginx/commit/2de856bdbd360e9c78ac5efa0aab37302c16831f))


### Features

* build fix ([7f0364b](https://git.emico.nl/hipex-services/docker-image-nginx/commit/7f0364b7c90b0f13dfa6ee00bcc2a9edac61f1b5))
* initial version with tags ([6babaf7](https://git.emico.nl/hipex-services/docker-image-nginx/commit/6babaf74f6d5825446e9c0aa433a6ad395ff1035))

# 1.0.0-beta.1 (2020-09-16)


### Bug Fixes

* deploy step ([2f183e9](https://git.emico.nl/hipex-services/docker-image-nginx/commit/2f183e9dc4d8e33c98cc73adba194fec64f82153))
* docker extends ([bba1b9b](https://git.emico.nl/hipex-services/docker-image-nginx/commit/bba1b9bda1f3f0b6a522205a168f903417f2c8f6))
* tag push ([2de856b](https://git.emico.nl/hipex-services/docker-image-nginx/commit/2de856bdbd360e9c78ac5efa0aab37302c16831f))


### Features

* build fix ([7f0364b](https://git.emico.nl/hipex-services/docker-image-nginx/commit/7f0364b7c90b0f13dfa6ee00bcc2a9edac61f1b5))
* initial version with tags ([6babaf7](https://git.emico.nl/hipex-services/docker-image-nginx/commit/6babaf74f6d5825446e9c0aa433a6ad395ff1035))

# 1.0.0-beta.1 (2020-09-16)


### Bug Fixes

* deploy step ([2f183e9](https://git.emico.nl/hipex-services/docker-image-nginx/commit/2f183e9dc4d8e33c98cc73adba194fec64f82153))
* docker extends ([bba1b9b](https://git.emico.nl/hipex-services/docker-image-nginx/commit/bba1b9bda1f3f0b6a522205a168f903417f2c8f6))
* tag push ([2de856b](https://git.emico.nl/hipex-services/docker-image-nginx/commit/2de856bdbd360e9c78ac5efa0aab37302c16831f))


### Features

* build fix ([7f0364b](https://git.emico.nl/hipex-services/docker-image-nginx/commit/7f0364b7c90b0f13dfa6ee00bcc2a9edac61f1b5))
* initial version with tags ([6babaf7](https://git.emico.nl/hipex-services/docker-image-nginx/commit/6babaf74f6d5825446e9c0aa433a6ad395ff1035))

# 1.0.0-beta.1 (2020-09-16)


### Bug Fixes

* deploy step ([2f183e9](https://git.emico.nl/hipex-services/docker-image-nginx/commit/2f183e9dc4d8e33c98cc73adba194fec64f82153))
* docker extends ([bba1b9b](https://git.emico.nl/hipex-services/docker-image-nginx/commit/bba1b9bda1f3f0b6a522205a168f903417f2c8f6))
* tag push ([2de856b](https://git.emico.nl/hipex-services/docker-image-nginx/commit/2de856bdbd360e9c78ac5efa0aab37302c16831f))


### Features

* build fix ([7f0364b](https://git.emico.nl/hipex-services/docker-image-nginx/commit/7f0364b7c90b0f13dfa6ee00bcc2a9edac61f1b5))
* initial version with tags ([6babaf7](https://git.emico.nl/hipex-services/docker-image-nginx/commit/6babaf74f6d5825446e9c0aa433a6ad395ff1035))

# 1.0.0-beta.1 (2020-09-16)


### Bug Fixes

* deploy step ([2f183e9](https://git.emico.nl/hipex-services/docker-image-nginx/commit/2f183e9dc4d8e33c98cc73adba194fec64f82153))
* docker extends ([bba1b9b](https://git.emico.nl/hipex-services/docker-image-nginx/commit/bba1b9bda1f3f0b6a522205a168f903417f2c8f6))
* tag push ([2de856b](https://git.emico.nl/hipex-services/docker-image-nginx/commit/2de856bdbd360e9c78ac5efa0aab37302c16831f))


### Features

* build fix ([7f0364b](https://git.emico.nl/hipex-services/docker-image-nginx/commit/7f0364b7c90b0f13dfa6ee00bcc2a9edac61f1b5))
* initial version with tags ([6babaf7](https://git.emico.nl/hipex-services/docker-image-nginx/commit/6babaf74f6d5825446e9c0aa433a6ad395ff1035))

# 1.0.0-beta.1 (2020-09-16)


### Bug Fixes

* deploy step ([2f183e9](https://git.emico.nl/hipex-services/docker-image-nginx/commit/2f183e9dc4d8e33c98cc73adba194fec64f82153))
* docker extends ([bba1b9b](https://git.emico.nl/hipex-services/docker-image-nginx/commit/bba1b9bda1f3f0b6a522205a168f903417f2c8f6))
* tag push ([2de856b](https://git.emico.nl/hipex-services/docker-image-nginx/commit/2de856bdbd360e9c78ac5efa0aab37302c16831f))


### Features

* build fix ([7f0364b](https://git.emico.nl/hipex-services/docker-image-nginx/commit/7f0364b7c90b0f13dfa6ee00bcc2a9edac61f1b5))
* initial version with tags ([6babaf7](https://git.emico.nl/hipex-services/docker-image-nginx/commit/6babaf74f6d5825446e9c0aa433a6ad395ff1035))

# 1.0.0-beta.1 (2020-09-16)


### Bug Fixes

* deploy step ([2f183e9](https://git.emico.nl/hipex-services/docker-image-nginx/commit/2f183e9dc4d8e33c98cc73adba194fec64f82153))
* docker extends ([bba1b9b](https://git.emico.nl/hipex-services/docker-image-nginx/commit/bba1b9bda1f3f0b6a522205a168f903417f2c8f6))
* tag push ([2de856b](https://git.emico.nl/hipex-services/docker-image-nginx/commit/2de856bdbd360e9c78ac5efa0aab37302c16831f))


### Features

* build fix ([7f0364b](https://git.emico.nl/hipex-services/docker-image-nginx/commit/7f0364b7c90b0f13dfa6ee00bcc2a9edac61f1b5))
* initial version with tags ([6babaf7](https://git.emico.nl/hipex-services/docker-image-nginx/commit/6babaf74f6d5825446e9c0aa433a6ad395ff1035))

# 1.0.0-beta.1 (2020-09-16)


### Bug Fixes

* deploy step ([2f183e9](https://git.emico.nl/hipex-services/docker-image-nginx/commit/2f183e9dc4d8e33c98cc73adba194fec64f82153))
* docker extends ([bba1b9b](https://git.emico.nl/hipex-services/docker-image-nginx/commit/bba1b9bda1f3f0b6a522205a168f903417f2c8f6))
* tag push ([2de856b](https://git.emico.nl/hipex-services/docker-image-nginx/commit/2de856bdbd360e9c78ac5efa0aab37302c16831f))


### Features

* build fix ([7f0364b](https://git.emico.nl/hipex-services/docker-image-nginx/commit/7f0364b7c90b0f13dfa6ee00bcc2a9edac61f1b5))
* initial version with tags ([6babaf7](https://git.emico.nl/hipex-services/docker-image-nginx/commit/6babaf74f6d5825446e9c0aa433a6ad395ff1035))

# 1.0.0-beta.1 (2020-09-16)


### Bug Fixes

* deploy step ([2f183e9](https://git.emico.nl/hipex-services/docker-image-nginx/commit/2f183e9dc4d8e33c98cc73adba194fec64f82153))
* docker extends ([bba1b9b](https://git.emico.nl/hipex-services/docker-image-nginx/commit/bba1b9bda1f3f0b6a522205a168f903417f2c8f6))
* tag push ([2de856b](https://git.emico.nl/hipex-services/docker-image-nginx/commit/2de856bdbd360e9c78ac5efa0aab37302c16831f))


### Features

* build fix ([7f0364b](https://git.emico.nl/hipex-services/docker-image-nginx/commit/7f0364b7c90b0f13dfa6ee00bcc2a9edac61f1b5))
* initial version with tags ([6babaf7](https://git.emico.nl/hipex-services/docker-image-nginx/commit/6babaf74f6d5825446e9c0aa433a6ad395ff1035))

# 1.0.0-beta.1 (2020-09-16)


### Bug Fixes

* deploy step ([2f183e9](https://git.emico.nl/hipex-services/docker-image-nginx/commit/2f183e9dc4d8e33c98cc73adba194fec64f82153))
* docker extends ([bba1b9b](https://git.emico.nl/hipex-services/docker-image-nginx/commit/bba1b9bda1f3f0b6a522205a168f903417f2c8f6))
* tag push ([2de856b](https://git.emico.nl/hipex-services/docker-image-nginx/commit/2de856bdbd360e9c78ac5efa0aab37302c16831f))


### Features

* build fix ([7f0364b](https://git.emico.nl/hipex-services/docker-image-nginx/commit/7f0364b7c90b0f13dfa6ee00bcc2a9edac61f1b5))
* initial version with tags ([6babaf7](https://git.emico.nl/hipex-services/docker-image-nginx/commit/6babaf74f6d5825446e9c0aa433a6ad395ff1035))

# 1.0.0-beta.1 (2020-09-16)


### Bug Fixes

* deploy step ([2f183e9](https://git.emico.nl/hipex-services/docker-image-nginx/commit/2f183e9dc4d8e33c98cc73adba194fec64f82153))
* docker extends ([bba1b9b](https://git.emico.nl/hipex-services/docker-image-nginx/commit/bba1b9bda1f3f0b6a522205a168f903417f2c8f6))
* tag push ([2de856b](https://git.emico.nl/hipex-services/docker-image-nginx/commit/2de856bdbd360e9c78ac5efa0aab37302c16831f))


### Features

* build fix ([7f0364b](https://git.emico.nl/hipex-services/docker-image-nginx/commit/7f0364b7c90b0f13dfa6ee00bcc2a9edac61f1b5))
* initial version with tags ([6babaf7](https://git.emico.nl/hipex-services/docker-image-nginx/commit/6babaf74f6d5825446e9c0aa433a6ad395ff1035))

# 1.0.0-beta.1 (2020-09-16)


### Bug Fixes

* deploy step ([2f183e9](https://git.emico.nl/hipex-services/docker-image-nginx/commit/2f183e9dc4d8e33c98cc73adba194fec64f82153))
* docker extends ([bba1b9b](https://git.emico.nl/hipex-services/docker-image-nginx/commit/bba1b9bda1f3f0b6a522205a168f903417f2c8f6))
* tag push ([2de856b](https://git.emico.nl/hipex-services/docker-image-nginx/commit/2de856bdbd360e9c78ac5efa0aab37302c16831f))


### Features

* build fix ([7f0364b](https://git.emico.nl/hipex-services/docker-image-nginx/commit/7f0364b7c90b0f13dfa6ee00bcc2a9edac61f1b5))
* initial version with tags ([6babaf7](https://git.emico.nl/hipex-services/docker-image-nginx/commit/6babaf74f6d5825446e9c0aa433a6ad395ff1035))

# 1.0.0-beta.1 (2020-09-16)


### Bug Fixes

* deploy step ([2f183e9](https://git.emico.nl/hipex-services/docker-image-nginx/commit/2f183e9dc4d8e33c98cc73adba194fec64f82153))
* docker extends ([bba1b9b](https://git.emico.nl/hipex-services/docker-image-nginx/commit/bba1b9bda1f3f0b6a522205a168f903417f2c8f6))
* tag push ([2de856b](https://git.emico.nl/hipex-services/docker-image-nginx/commit/2de856bdbd360e9c78ac5efa0aab37302c16831f))


### Features

* build fix ([7f0364b](https://git.emico.nl/hipex-services/docker-image-nginx/commit/7f0364b7c90b0f13dfa6ee00bcc2a9edac61f1b5))
* initial version with tags ([6babaf7](https://git.emico.nl/hipex-services/docker-image-nginx/commit/6babaf74f6d5825446e9c0aa433a6ad395ff1035))

# 1.0.0-beta.1 (2020-09-16)


### Bug Fixes

* deploy step ([2f183e9](https://git.emico.nl/hipex-services/docker-image-nginx/commit/2f183e9dc4d8e33c98cc73adba194fec64f82153))
* docker extends ([bba1b9b](https://git.emico.nl/hipex-services/docker-image-nginx/commit/bba1b9bda1f3f0b6a522205a168f903417f2c8f6))
* tag push ([2de856b](https://git.emico.nl/hipex-services/docker-image-nginx/commit/2de856bdbd360e9c78ac5efa0aab37302c16831f))


### Features

* build fix ([7f0364b](https://git.emico.nl/hipex-services/docker-image-nginx/commit/7f0364b7c90b0f13dfa6ee00bcc2a9edac61f1b5))
* initial version with tags ([6babaf7](https://git.emico.nl/hipex-services/docker-image-nginx/commit/6babaf74f6d5825446e9c0aa433a6ad395ff1035))

# 1.0.0-beta.1 (2020-09-16)


### Bug Fixes

* deploy step ([2f183e9](https://git.emico.nl/hipex-services/docker-image-nginx/commit/2f183e9dc4d8e33c98cc73adba194fec64f82153))
* docker extends ([bba1b9b](https://git.emico.nl/hipex-services/docker-image-nginx/commit/bba1b9bda1f3f0b6a522205a168f903417f2c8f6))
* tag push ([2de856b](https://git.emico.nl/hipex-services/docker-image-nginx/commit/2de856bdbd360e9c78ac5efa0aab37302c16831f))


### Features

* build fix ([7f0364b](https://git.emico.nl/hipex-services/docker-image-nginx/commit/7f0364b7c90b0f13dfa6ee00bcc2a9edac61f1b5))
* initial version with tags ([6babaf7](https://git.emico.nl/hipex-services/docker-image-nginx/commit/6babaf74f6d5825446e9c0aa433a6ad395ff1035))

# 1.0.0-beta.1 (2020-09-16)


### Bug Fixes

* deploy step ([2f183e9](https://git.emico.nl/hipex-services/docker-image-nginx/commit/2f183e9dc4d8e33c98cc73adba194fec64f82153))
* docker extends ([bba1b9b](https://git.emico.nl/hipex-services/docker-image-nginx/commit/bba1b9bda1f3f0b6a522205a168f903417f2c8f6))
* tag push ([2de856b](https://git.emico.nl/hipex-services/docker-image-nginx/commit/2de856bdbd360e9c78ac5efa0aab37302c16831f))


### Features

* build fix ([7f0364b](https://git.emico.nl/hipex-services/docker-image-nginx/commit/7f0364b7c90b0f13dfa6ee00bcc2a9edac61f1b5))
* initial version with tags ([6babaf7](https://git.emico.nl/hipex-services/docker-image-nginx/commit/6babaf74f6d5825446e9c0aa433a6ad395ff1035))

# 1.0.0-beta.1 (2020-09-16)


### Bug Fixes

* deploy step ([2f183e9](https://git.emico.nl/hipex-services/docker-image-nginx/commit/2f183e9dc4d8e33c98cc73adba194fec64f82153))
* docker extends ([bba1b9b](https://git.emico.nl/hipex-services/docker-image-nginx/commit/bba1b9bda1f3f0b6a522205a168f903417f2c8f6))
* tag push ([2de856b](https://git.emico.nl/hipex-services/docker-image-nginx/commit/2de856bdbd360e9c78ac5efa0aab37302c16831f))


### Features

* build fix ([7f0364b](https://git.emico.nl/hipex-services/docker-image-nginx/commit/7f0364b7c90b0f13dfa6ee00bcc2a9edac61f1b5))
* initial version with tags ([6babaf7](https://git.emico.nl/hipex-services/docker-image-nginx/commit/6babaf74f6d5825446e9c0aa433a6ad395ff1035))

# 1.0.0-beta.1 (2020-09-16)


### Bug Fixes

* deploy step ([2f183e9](https://git.emico.nl/hipex-services/docker-image-nginx/commit/2f183e9dc4d8e33c98cc73adba194fec64f82153))
* docker extends ([bba1b9b](https://git.emico.nl/hipex-services/docker-image-nginx/commit/bba1b9bda1f3f0b6a522205a168f903417f2c8f6))
* tag push ([2de856b](https://git.emico.nl/hipex-services/docker-image-nginx/commit/2de856bdbd360e9c78ac5efa0aab37302c16831f))


### Features

* build fix ([7f0364b](https://git.emico.nl/hipex-services/docker-image-nginx/commit/7f0364b7c90b0f13dfa6ee00bcc2a9edac61f1b5))
* initial version with tags ([6babaf7](https://git.emico.nl/hipex-services/docker-image-nginx/commit/6babaf74f6d5825446e9c0aa433a6ad395ff1035))

# 1.0.0-beta.1 (2020-09-16)


### Bug Fixes

* deploy step ([2f183e9](https://git.emico.nl/hipex-services/docker-image-nginx/commit/2f183e9dc4d8e33c98cc73adba194fec64f82153))
* docker extends ([bba1b9b](https://git.emico.nl/hipex-services/docker-image-nginx/commit/bba1b9bda1f3f0b6a522205a168f903417f2c8f6))
* tag push ([2de856b](https://git.emico.nl/hipex-services/docker-image-nginx/commit/2de856bdbd360e9c78ac5efa0aab37302c16831f))


### Features

* build fix ([7f0364b](https://git.emico.nl/hipex-services/docker-image-nginx/commit/7f0364b7c90b0f13dfa6ee00bcc2a9edac61f1b5))
* initial version with tags ([6babaf7](https://git.emico.nl/hipex-services/docker-image-nginx/commit/6babaf74f6d5825446e9c0aa433a6ad395ff1035))

# 1.0.0-beta.1 (2020-09-16)


### Bug Fixes

* deploy step ([2f183e9](https://git.emico.nl/hipex-services/docker-image-nginx/commit/2f183e9dc4d8e33c98cc73adba194fec64f82153))
* docker extends ([bba1b9b](https://git.emico.nl/hipex-services/docker-image-nginx/commit/bba1b9bda1f3f0b6a522205a168f903417f2c8f6))
* tag push ([2de856b](https://git.emico.nl/hipex-services/docker-image-nginx/commit/2de856bdbd360e9c78ac5efa0aab37302c16831f))


### Features

* build fix ([7f0364b](https://git.emico.nl/hipex-services/docker-image-nginx/commit/7f0364b7c90b0f13dfa6ee00bcc2a9edac61f1b5))
* initial version with tags ([6babaf7](https://git.emico.nl/hipex-services/docker-image-nginx/commit/6babaf74f6d5825446e9c0aa433a6ad395ff1035))

# 1.0.0-beta.1 (2020-09-16)


### Bug Fixes

* deploy step ([2f183e9](https://git.emico.nl/hipex-services/docker-image-nginx/commit/2f183e9dc4d8e33c98cc73adba194fec64f82153))
* docker extends ([bba1b9b](https://git.emico.nl/hipex-services/docker-image-nginx/commit/bba1b9bda1f3f0b6a522205a168f903417f2c8f6))
* tag push ([2de856b](https://git.emico.nl/hipex-services/docker-image-nginx/commit/2de856bdbd360e9c78ac5efa0aab37302c16831f))


### Features

* build fix ([7f0364b](https://git.emico.nl/hipex-services/docker-image-nginx/commit/7f0364b7c90b0f13dfa6ee00bcc2a9edac61f1b5))
* initial version with tags ([6babaf7](https://git.emico.nl/hipex-services/docker-image-nginx/commit/6babaf74f6d5825446e9c0aa433a6ad395ff1035))

# 1.0.0-beta.1 (2020-09-16)


### Bug Fixes

* deploy step ([2f183e9](https://git.emico.nl/hipex-services/docker-image-nginx/commit/2f183e9dc4d8e33c98cc73adba194fec64f82153))
* docker extends ([bba1b9b](https://git.emico.nl/hipex-services/docker-image-nginx/commit/bba1b9bda1f3f0b6a522205a168f903417f2c8f6))
* tag push ([2de856b](https://git.emico.nl/hipex-services/docker-image-nginx/commit/2de856bdbd360e9c78ac5efa0aab37302c16831f))


### Features

* build fix ([7f0364b](https://git.emico.nl/hipex-services/docker-image-nginx/commit/7f0364b7c90b0f13dfa6ee00bcc2a9edac61f1b5))
* initial version with tags ([6babaf7](https://git.emico.nl/hipex-services/docker-image-nginx/commit/6babaf74f6d5825446e9c0aa433a6ad395ff1035))

# [1.0.0-alpha.4](https://git.emico.nl/hipex-services/docker-image-nginx/compare/v1.0.0-alpha.3...v1.0.0-alpha.4) (2020-09-16)


### Features

* build fix ([7f0364b](https://git.emico.nl/hipex-services/docker-image-nginx/commit/7f0364b7c90b0f13dfa6ee00bcc2a9edac61f1b5))

# [1.0.0-alpha.3](https://git.emico.nl/hipex-services/docker-image-nginx/compare/v1.0.0-alpha.2...v1.0.0-alpha.3) (2020-09-16)


### Bug Fixes

* tag push ([2de856b](https://git.emico.nl/hipex-services/docker-image-nginx/commit/2de856bdbd360e9c78ac5efa0aab37302c16831f))

# [1.0.0-alpha.2](https://git.emico.nl/hipex-services/docker-image-nginx/compare/v1.0.0-alpha.1...v1.0.0-alpha.2) (2020-09-16)


### Bug Fixes

* deploy step ([2f183e9](https://git.emico.nl/hipex-services/docker-image-nginx/commit/2f183e9dc4d8e33c98cc73adba194fec64f82153))
* docker extends ([bba1b9b](https://git.emico.nl/hipex-services/docker-image-nginx/commit/bba1b9bda1f3f0b6a522205a168f903417f2c8f6))

# 1.0.0-alpha.1 (2020-09-16)


### Features

* initial version with tags ([6babaf7](https://git.emico.nl/hipex-services/docker-image-nginx/commit/6babaf74f6d5825446e9c0aa433a6ad395ff1035))
