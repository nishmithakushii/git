class infor:
    def __init__(self, name):
        self.name= name
    
    def display(self):
        print(f"hello {self.name}")

ni=infor("friend")
ni.display()