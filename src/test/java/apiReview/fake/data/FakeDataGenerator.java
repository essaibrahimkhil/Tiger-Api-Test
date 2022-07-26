package apiReview.fake.data;
import com.github.javafaker.Faker;

public class FakeDataGenerator {
	
	
		public static String getEmail() {
	        Faker faker = new Faker(); 
	        return faker.name().firstName() 
	                + faker.name().lastName() 
	                + "@gmail.com";
	    }
	    public static String getPhoneNumber() {
	        Faker faker = new Faker(); 
	        return faker.phoneNumber().cellPhone();
	    }
	    public static String getFirstName() {
	        Faker faker = new Faker(); 
	        return faker.name().firstName(); 
	    }
	    public static String getLastName() {
	        Faker faker = new Faker(); 
	        return faker.name().lastName(); 
	    }
	    public static String getDOB() {
	        Faker faker = new Faker(); 
	        return faker.date().birthday().toString();
	   
	}


