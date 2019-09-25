package asd.demo.model.dao;

import java.net.UnknownHostException;
import com.mongodb.client.MongoCollection;
import org.bson.Document;
import java.util.*;
import asd.demo.model.*;
import com.mongodb.MongoClient;
import com.mongodb.MongoClientURI;
import com.mongodb.client.MongoCursor;
import com.mongodb.client.MongoDatabase;
import static com.mongodb.client.model.Filters.and;
import static com.mongodb.client.model.Filters.eq;


public class MongoDBConnector {

    private List<Document> users = new ArrayList();
    private String owner;
    private String password;

   
    public MongoDBConnector(String owner, String password) throws UnknownHostException {
        this.owner = owner;
        this.password = password;
    }

    public MongoDatabase getMongoDB(){
          MongoClientURI uri = new MongoClientURI("mongodb+srv://" + this.owner + ":" + this.password + "@cluster0-fmqy8.gcp.mongodb.net/test?retryWrites=true&w=majority");
          MongoDatabase db;
          try (MongoClient client = new MongoClient(uri)) {
               db = client.getDatabase(uri.getDatabase());
          }
          return db;
       }
    
    public void addUser(String username, String password) {
        MongoClientURI uri = new MongoClientURI("mongodb+srv://" + this.owner + ":" + this.password + "@cluster0-fmqy8.gcp.mongodb.net/test?retryWrites=true&w=majority");
        try (MongoClient client = new MongoClient(uri)) {
            MongoDatabase db = client.getDatabase("hotel_go");
            MongoCollection<Document> collection = db.getCollection("users");
            Document doc = new Document("username", username).append("password", password);
            collection.insertOne(doc);
        }
    }


    public void showTable()
    {
        MongoClientURI uri = new MongoClientURI("mongodb+srv://" + this.owner + ":" + this.password + "@cluster0-fmqy8.gcp.mongodb.net/test?retryWrites=true&w=majority");
        try (MongoClient client = new MongoClient(uri)) {
            MongoDatabase db = client.getDatabase("hotel_go");
            MongoCollection<Document> userlist = db.getCollection("users");
            Document doc = userlist.find().first();
            System.out.println(doc.toJson());
        }
    }
    public User user(String email, String password) {
        MongoClientURI uri = new MongoClientURI("mongodb://" + this.owner + ":" + this.password + "@ds029496.mlab.com:29496/heroku_59pxdn6j");
        User user;
        try (MongoClient client = new MongoClient(uri)) {
            MongoDatabase db = client.getDatabase(uri.getDatabase());
            MongoCollection<Document> userlist = db.getCollection("ASD-Demo-app-users");
            Document doc = userlist.find(and(eq("Username", email), eq("Password", password))).first();
            user = new User((String) doc.get("Username"), (String) doc.get("Password"));
        }
        return user;
    }
    public User checkUser(String email, String password) {
        MongoClientURI uri = new MongoClientURI("mongodb://" + this.owner + ":" + this.password + "@ds029496.mlab.com:29496/heroku_59pxdn6j");
        User user;
        try (MongoClient client = new MongoClient(uri)) {
            MongoDatabase db = client.getDatabase(uri.getDatabase());
            MongoCollection<Document> userlist = db.getCollection("users");
            Document doc = userlist.find(and(eq("username", email), eq("password", password))).first();
            user = new User( (String) doc.get("username"), (String) doc.get("psssword"));
        }
        return user;
    }
    
}
