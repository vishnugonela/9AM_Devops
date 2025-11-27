
FROM       python:3.11-slim
WORKDIR   /Pythonapp
COPY    Myapp/ ./Myapp
RUN     pip install --no-cache-dir -r /Pythonapp/Myapp/requirments.txt
COPY   Myapp/main.py ./Myapp_bhavyashree
EXPOSE 5000
CMD ["python","Myapp/main.py"]
