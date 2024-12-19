from fastapi import FastAPI

app = FastAPI()

@app.get("/")
def read_root():
    return {"message": "Hello from Python Service!"}

@app.get("/data")
def get_data():
    return {"data": [1, 2, 3, 4, 5]}
