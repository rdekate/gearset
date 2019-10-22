@isTest
public class MyControllerTest{
    public static testMethod void testCalculateValues(){
        fflib_ApexMocks mocks = new fflib_ApexMocks();
        MyInterface mockMyService = new MockMyService(mocks);
        mocks.startStubbing();
        mocks.when(mockMyService.calculateValues(5, 3)).thenReturn(8);
        mocks.stopStubbing();
        Test.startTest();
        MyController controller = new MyController(mockMyService);
        controller.valueOne = 5;
        controller.valueTwo = 3;
        Integer totalValue = controller.calculatedTotalValue();
        Test.stopTest();
        System.assertEquals(8, totalValue, 'The service should return 8');
    }
   private class MockMyService implements MyInterface{
      private fflib_ApexMocks mocks;
      public MockMyService(fflib_ApexMocks mocks){
         this.mocks = mocks;
      }
        public Integer calculateValues(Integer valueOne, Integer valueTwo){
            if (mocks.Stubbing){
                mocks.prepareMethodReturnValue(this, 'calculateValues', new List<Object> {valueOne, valueTwo});
                return null;
            }else{
                mocks.recordMethod(this, 'calculateValues', new List<Object> {valueOne, valueTwo});
                fflib_MethodReturnValue methodReturnValue = mocks.getMethodReturnValue(this, 'calculateValues', new List<Object> {valueOne, valueTwo});
                if (methodReturnValue != null){
                    if (methodReturnValue.ReturnValue instanceof Exception)
                    {
                        throw ((Exception) methodReturnValue.ReturnValue);
                    }
                    return (Integer) methodReturnValue.ReturnValue;
                }
            }
            return null;
        }
   }
}