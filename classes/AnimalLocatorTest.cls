public class AnimalLocatorTest {
    
    public void testAnimalLocator1(){
        Integer count = 2;
        AnimalLocator loc = new AnimalLocator();
        String animalName = loc.getAnimalNameById(count);
        System.debug(animalName);
        
    }

}