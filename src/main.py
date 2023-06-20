import os

from fastapi import FastAPI


app = FastAPI(title='env-tester')


@app.get('/get-env')
def get_env():
    env_dict = {}

    for name, value in os.environ.items():
        env_dict[name] = value

    return env_dict


@app.get('/health')
def health_check():

    return True
