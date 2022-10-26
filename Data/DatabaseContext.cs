using Microsoft.EntityFrameworkCore;
using MvcFriends.Models;

namespace MvcFriends.Data
{
    public class DatabaseContext : DbContext
    {
        public DatabaseContext(DbContextOptions<DatabaseContext> options) : base(options)
        {
        }

        // [jasper]
        // 要加上 ? 以處理以下警告訊息 !!!
        // CS8618: 退出建構函式時，不可為 Null 的 屬性 'Friends' 必須包含非 Null 值。
        //         請考慮將 屬性 宣告為可為 Null。
        // https://learn.microsoft.com/en-us/dotnet/csharp/language-reference/operators/null-forgiving
        public DbSet<Friend>? Friends { get; set; }

        // [jasper]
        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            var obj1 = new Friend() { Id=1, Name="Mary", Email="mary@gmail.com", Mobile="123456789"  };
            var obj2 = new Friend() { Id=2, Name="John", Email="john@gmail.com", Mobile="987654321"  };
            var obj3 = new Friend() { Id=3, Name="Jasper", Email="jasper@gmail.com", Mobile="123456987"  };
            modelBuilder.Entity<Friend>().HasData(
                obj1, obj2, obj3
            );
        }
    }
}