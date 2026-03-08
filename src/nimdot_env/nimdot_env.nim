import os, strutils, tables

var env = initTable[string, string]()

proc loadEnv*(path: string = ".env") =
  for line in lines(path):
    if line.len == 0 or line[0] == '#': continue
    let parts = line.split("=", 1)
    if parts.len == 2:
      env[parts[0]] = parts[1]

proc getEnv*(key: string, default = ""): string =
  if env.hasKey(key): env[key] else: default

proc getEnvInt*(key: string, default = 0): int =
  if env.hasKey(key): parseInt(env[key]) else: default

proc getEnvBool*(key: string, default = false): bool =
  if env.hasKey(key): env[key] == "true" else: default