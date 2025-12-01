from fastapi import FastAPI
from settings import settings

app = FastAPI()


@app.get("/")
async def root():
    return {"message": "Hello World", "environment": settings.environment}
