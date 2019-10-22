@isTest
public class pointTest{
    
    @isTest
    static public void test(){
        Point p = new Point(10,10);
        System.assert(p.x == 10);
        p.x = 5;
        System.assert(p.x == 5);
        System.debug('Done');
    }
}