import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectOutputStream;

public class SerializeStudent {
    public static void main(String[] args) {
        Student student = new Student("Mehak", 21, "mehak@example.com");

        try (FileOutputStream fos = new FileOutputStream("student.ser");
             ObjectOutputStream oos = new ObjectOutputStream(fos)) {
             
            oos.writeObject(student);
            System.out.println("Object serialized successfully.");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
// import java.io.FileInputStream;
// import java.io.IOException;
// import java.io.ObjectInputStream;

// public class DeserializeStudent {
//     public static void main(String[] args) {
//         try (FileInputStream fis = new FileInputStream("student.ser");
//              ObjectInputStream ois = new ObjectInputStream(fis)) {
             
//             Student student = (Student) ois.readObject();
//             System.out.println("Object deserialized successfully.");
//             student.display();
//         } catch (IOException | ClassNotFoundException e) {
//             e.printStackTrace();
//         }
//     }
// }





// import java.io.Serializable;

// public class Student implements Serializable {
//     private static final long serialVersionUID = 1L;

//     String name;
//     int age;
//     String email;

//     public Student(String name, int age, String email) {
//         this.name = name;
//         this.age = age;
//         this.email = email;
//     }

//     public void display() {
//         System.out.println("Name: " + name + ", Age: " + age + ", Email: " + email);
//     }
// }

