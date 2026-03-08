# nimdot_env

A minimal `.env` file loader for Nim. Load environment variables from a `.env` file into your application with a simple API.

## Installation

```bash
nimble install nimdot_env
```

## Usage

```nim
import nimdot_env/nimdot_env

loadEnv()

echo getEnv("DB_HOST")
echo getEnvInt("DB_PORT")
echo getEnvBool("DEBUG")
```

## API

### `loadEnv(path: string = ".env")`

Reads the given file and loads all key-value pairs into memory. Lines starting with `#` and empty lines are ignored.

```nim
loadEnv()           # loads .env from current directory
loadEnv("prod.env") # loads a custom file
```

### `getEnv(key: string, default: string = ""): string`

Returns the value for the given key. If the key does not exist, returns the default value.

```nim
let host = getEnv("DB_HOST", "localhost")
```

### `getEnvInt(key: string, default: int = 0): int`

Returns the value as an integer.

```nim
let port = getEnvInt("DB_PORT", 5432)
```

### `getEnvBool(key: string, default: bool = false): bool`

Returns the value as a boolean. Accepts `"true"` as `true`, everything else as `false`.

```nim
let debug = getEnvBool("DEBUG", false)
```

## .env File Format

```env
# Database
DB_HOST=localhost
DB_PORT=5432
DEBUG=true
```

## License

MIT