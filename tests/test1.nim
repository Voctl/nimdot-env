import nimdot_env/nimdot_env

loadEnv(".env")

echo getEnv("DB_HOST")
echo getEnvInt("DB_PORT")
echo getEnvBool("DEBUG")
