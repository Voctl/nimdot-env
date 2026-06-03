# nimdot_env

`.env` file loader for nim. reads a file, loads variables. that's all.

---

## install

```sh
nimble install nimdot_env
```

---

## usage

```nim
import nimdot_env

loadEnv()  # loads .env from current directory

echo getEnv("MY_VAR")
```

your `.env` file:

```sh
DB_HOST=localhost
DB_PORT=5432
SECRET_KEY=whatever
```

---

## structure

```
nimdot_env/
├── src/nimdot_env/
├── tests/
├── nimdot_env.nimble
└── LICENSE
```

---

## why

because hardcoding secrets is bad.  
because os environment variables shouldn't require a framework.  
one function. one file. done.

---

## license

MIT.
