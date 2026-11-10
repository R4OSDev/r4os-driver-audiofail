# AC97FAIL.R4D

`AC97FAIL.R4D` is an independent R4OS driver implemented in Zig.

## Package

- Version: `0.1.2`
- Image target: `/R4OS/DRIVERS/AC97FAIL.R4D`
- Image scope: `none`
- Canonical project manifest: `module.R4MF`

The manifest is the single source of truth for the artifact, imports, image
target, and package metadata.

## Build

On Windows:

    Build.bat

On Linux or macOS:

    ./Build.sh

The build starters resolve the current local R4OS dependency checkouts through
`Settings.R4S`. The URL and hash entries in `build.zig.zon` record the
last verified standalone dependency identities; workspace builds use the
mapped local checkouts.

## Documentation

Detailed German technical notes from the migration are preserved in
`DOCUMENTATION.de.txt`. Source-transfer provenance is recorded in
`PROVENANCE.txt`.

## License

Original R4OS material is licensed under Apache License 2.0. See `LICENSE`
and `NOTICE`. Any repository-specific external material is documented in
`THIRD_PARTY_NOTICES.md`.

## API migration 0.90.52

The normal module uses DriverInit2/DriverApi2 with actual R4DEV Query2:2 callback admission. The deliberate failure backend still returns its intentional failure; it does not become an audio device. Invalid or missing platform callbacks are rejected before registration. SDK 0.64.193; independent resource-record revision1 remains distinct from the platform generation. Native, host-model and Windows compilation qualification are recorded separately in the R4OS ConsumerMigration report.
