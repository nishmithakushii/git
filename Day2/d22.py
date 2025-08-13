class node:
    def __init__(self, data):
        self.data = data
        self.next = None
        
class LinkedList:
    def __init__(self):
        self.head = None
    
    def append(self, data):
        new_node = node(data)
        if not self.head:
            self.head = new_node
            return
        last = self.head
        while last.next:
            last = last.next
        last.next = new_node
    
    def display(self):
        current = self.head
        while current:
            print(current.data, end=" -> ")
            current = current.next
        print("None")
    
    def delete(self, key):
        current = self.head
        if current and current.data == key:
            self.head = current.next
            current = None
            return
        prev = None
        while current and current.data != key:
            prev = current
            current = current.next
        if not current:
            return
        prev.next = current.next
        current = None
        
    def search(self, key):
        current = self.head
        while current:
            if current.data == key:
                return True
            current = current.next
        return False
    
    def length(self):
        count = 0
        current = self.head
        while current:
            count += 1
            current = current.next
        return count
    
if __name__ == "__main__":
    ll = LinkedList()
    ll.append(1)
    ll.append(2)
    ll.append(3)
    ll.display()
    print("length:", ll.length())
    print("search for 2:", ll.search(2))
    ll.delete(2)
    ll.display()
    print("length after deletion:", ll.length())
    
    
    