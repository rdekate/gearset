public class AnimalLocator {
    
    public String getAnimalNameById (Integer count){
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals/'+count);
        request.setMethod('GET');
        HttpResponse response = http.send(request);
        // If the request is successful, parse the JSON response.
        if (response.getStatusCode() == 200) {
            // Deserializes the JSON string into collections of primitive data types.
            Map<String, animal> results = (Map<String, Animal>) JSON.deserializeUntyped(response.getBody());
            // Cast the values in the 'animals' key as a list
            Animal animal = (Animal) results.get('animal');
            System.debug('Received the following animal:');
            System.debug(animal);
            return String.valueOf(animal.name);
        }
        return null;
    }
    
    
    public class Animal {
        Integer id;
        String name;
        String eats;
        String says;
        
        public Animal(){}
    }

}