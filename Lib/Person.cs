namespace MvcFriends.Lib
{
    public class Person
    {
        public Person(string name) => Name = name ?? throw new ArgumentNullException(nameof(name));
        public string Name { get; }
    }

    public class TestPerson
    {
        public void Test()
        {
            var person = new Person(null!);
            
            // warning CS8625: 無法將 null 常值轉換成不可為 Null 的參考型別。
            // warning CS8625: Cannot convert null literal to non-nullable reference type
            //var person = new Person(null);   
        }
    }
}