# nimdot_env

`.env` file loader for nim. reads a file, loads variables. that's all.

---

## install

not on nimble yet. clone it manually:

```sh
git clone https://github.com/Voctl/nimdot-env
cd nimdot-env
```

then copy `src/nimdot_env` into your project or add the path to your `.nimble` file:

```nim
# yourproject.nimble
requires "nim >= 1.0.0"
# add nimdot_env source path manually
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
