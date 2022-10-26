using Microsoft.EntityFrameworkCore;
using MvcFriends.Data;

var builder = WebApplication.CreateBuilder(args);
// Add services to the container.
builder.Services.AddControllersWithViews();

// ==(B)========== [jasper] 註冊 DbContext Service ===============
// 參考 Visual Studio 2022 產出的範例程式
var connectionString = builder.Configuration.GetConnectionString("SampleContext");
builder.Services.AddDbContext<DatabaseContext>(options =>
                options.UseSqlServer(connectionString));
// ==(E)========== [jasper] 註冊 DbContext Service ===============

//
var app = builder.Build();

// Configure the HTTP request pipeline.
if (!app.Environment.IsDevelopment())
{
    app.UseExceptionHandler("/Home/Error");
    // The default HSTS value is 30 days. You may want to change this for production scenarios, see https://aka.ms/aspnetcore-hsts.
    app.UseHsts();
}

app.UseHttpsRedirection();
app.UseStaticFiles();

app.UseRouting();

app.UseAuthorization();

app.MapControllerRoute(
    name: "default",
    pattern: "{controller=Home}/{action=Index}/{id?}");

app.Run();
