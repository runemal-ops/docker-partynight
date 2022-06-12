# docker-partynight

## Set up & Installation.

### 1 .Clone/Fork the git repo and create a virtual environment 
                    
**Windows**
          
```bash
git clone https://github.com/runemal-ops/docker-partynight.git
cd docker-partynight
python3 -3 -m venv venv

```
          
**macOS/Linux**
          
```bash
git clone https://github.com/runemal-ops/docker-partynight.git
cd docker-partynight
python3 -m venv venv

```
### 2 .Activate the environment
          
**Windows** 

```venv\Scripts\activate```
          
**macOS/Linux**

```. venv/bin/activate```
or
```source venv/bin/activate```


### 3 .Install the requirements

Applies for windows/macOS/Linux

```
pip install -r requirements.txt
```

### 5. Run the application
`python app.py`

### 6. Build the container with directory contents
`docker build --tag docker-partynight .`
