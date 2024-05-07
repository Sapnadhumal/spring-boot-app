FROM python:3
RUN pip install spring-boot-app==3.2
copy ..
RUN html index.html migrate 
expose 8000 
CMD ["python","index.html","runserver","0.0.0.0:8000"]
