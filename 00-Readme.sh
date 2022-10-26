
# ====== 1.. 建立 MvcFriends 專案 ======
PS D:\22-Projects.Git\52-ASP.NET Core> dotnet new mvc -o MvcFriends
範本「ASP.NET Core Web App (Model-View-Controller)」已成功建立。
此範本包含 Microsoft 其他協力廠商的技術，請參閱 https://aka.ms/aspnetcore/6.0-third-party-notices 取得詳細資訊。

正在處理建立後的動作...
正在 D:\22-Projects.Git\52-ASP.NET Core\MvcFriends\MvcFriends.csproj 上執行 'dotnet restore'...
  正在判斷要還原的專案...
  已還原 D:\22-Projects.Git\52-ASP.NET Core\MvcFriends\MvcFriends.csproj (72 ms 內)。
還原成功。

# ====== 2.. 在 Vs Code 開啟專案 ======
PS D:\22-Projects.Git\52-ASP.NET Core> code -r MvcFriends

# ====== 3.. Ctrl+F5 執行而不偵錯 ======
-------------------------------------------------------------------
You may only use the Microsoft .NET Core Debugger (vsdbg) with
Visual Studio Code, Visual Studio or Visual Studio for Mac software
to help you develop and test your applications.
-------------------------------------------------------------------
正在從 'D:\22-Projects.Git\52-ASP.NET Core\MvcFriends\Properties\launchSettings.json' 使用啟動設定 [設定檔 'MvcFriends']...
info: Microsoft.Hosting.Lifetime[14]
      Now listening on: https://localhost:7225
info: Microsoft.Hosting.Lifetime[14]
      Now listening on: http://localhost:5117
info: Microsoft.Hosting.Lifetime[0]
      Application started. Press Ctrl+C to shut down.
info: Microsoft.Hosting.Lifetime[0]
      Hosting environment: Development
info: Microsoft.Hosting.Lifetime[0]
      Content root path: D:\22-Projects.Git\52-ASP.NET Core\MvcFriends\

# ====== [圖片] ======
# 會出現 不安全 https://localhost:7225/, 需採下步驟解決


# ====== 4.. 建立及信任自我簽署的 HTTPS 開發憑證 ======
參考連結: https://learn.microsoft.com/en-us/dotnet/core/tools/dotnet-dev-certs

PS D:\22-Projects.Git\52-ASP.NET Core\MvcFriends> dotnet dev-certs https --trust
Trusting the HTTPS development certificate was requested. A confirmation prompt will be displayed if the certificate was not previously trusted. Click yes on the prompt to trust the certificate.
A valid HTTPS certificate is already present.

# ====== [圖片] ======
# 要求信任該自我簽署的憑證

# ====== [圖片] ======
# 再次瀏覽, 不再出現 不安全

# ====== [圖片] ======
# 查看本機的憑證

# ====== 5.. 新增 Models\Friend.cs ======

# ====== 6.. 新增 Nuget Packages ======

# ------ (1) 安裝 EF Core 的 CLI 命令工具
# ------ Entity Framework Core Tools for the .NET Command-Line Interface.
PS D:\22-Projects.Git\52-ASP.NET Core\MvcFriends> dotnet tool install --global dotnet-ef
工具 'dotnet-ef' 已安裝。

# ------ (2) 更新 EF Core 的 CLI 命令工具
PS D:\22-Projects.Git\52-ASP.NET Core\MvcFriends> dotnet tool update --global dotnet-ef
已成功將工具 'dotnet-ef' 從 '6.0.3' 版更新為 '6.0.10' 版。

# ------ (3) 安裝 dotnet-aspnet-codegenerator 的 CLI 命令工具
# ------ Code Generation tool for ASP.NET Core. Contains the dotnet-aspnet-codegenerator command used 
# ------ for generating controllers and views.
PS D:\22-Projects.Git\52-ASP.NET Core\MvcFriends> dotnet tool install --global dotnet-aspnet-codegenerator
您可以使用下列命令來叫用工具: dotnet-aspnet-codegenerator
已成功安裝工具 'dotnet-aspnet-codegenerator' ('6.0.10' 版)。

# ------ (4) nuget Microsoft.EntityFrameworkCore.SQLite
# ------ SQLite database provider for Entity Framework Core.
PS D:\22-Projects.Git\52-ASP.NET Core\MvcFriends> dotnet add package Microsoft.EntityFrameworkCore.SQLite
  正在判斷要還原的專案...
  Writing C:\Users\jasperlai\AppData\Local\Temp\tmpDA0D.tmp
info : X.509 certificate chain validation will use the default trust store selected by .NET.
info : 正在將套件 'Microsoft.EntityFrameworkCore.SQLite' 的 PackageReference 新增至專案 'D:\22-Projects.Git\52-ASP.NET Core\MvcFriends\MvcFriends.csproj'。
info : ...
info : 正在還原 D:\22-Projects.Git\52-ASP.NET Core\MvcFriends\MvcFriends.csproj 的封裝...
info : ...
info : 已從具有內容雜湊 JWoqE8TMKg+SwMmig3UPsC1Fg00JQ3dyPpr64VuYlnaags+1eJ5gAYJ38CHdxSGIQQouUv7fK3rfuoKfFc5kiA== 的 https://api.nuget.org/v3/index.json 安裝 Microsoft.EntityFrameworkCore.Sqlite 6.0.10。
info : 已從具有內容雜湊 b4jKcjo6BLuBRjLTkZPjJCvZ7oa3a798Q1AXSMAknitpBEOEIDryyRd7XZ0cnEIVCvfSND+Trgb00Z4TiTqOvg== 的 https://api.nuget.org/v3/index.json 安裝 Microsoft.EntityFrameworkCore.Analyzers 6.0.10。
info : 已從具有內容雜湊 3BMwnBB6Bgwd6bjUqx2pOYuHpGBHCJxY3vorRJYX3U2wzrz5q4jNxDZZGsMViFZeJ7PXFIwbgy6rR73J5aalsg== 的 https://api.nuget.org/v3/index.json 安裝 Microsoft.EntityFrameworkCore.Abstractions 6.0.10。
info : 已從具有內容雜湊 5aynyix0/bvGlmlX3ude/ctTJ0t/styV3Cmd9BR9ujb0vlU8WuFxJqriVhuRnCLS9I7+vBgSh7FWdxWz8cHi3A== 的 https://api.nuget.org/v3/index.json 安裝 Microsoft.EntityFrameworkCore.Sqlite.Core 6.0.10。
info : 已從具有內容雜湊 TWUjLTzSeENkEChqWrcaAzIrD9i5M2l2qrWDI00lC38xBPUuK1Qf57ZywO+dwmr2S3yS0VUPvpdpqCrq60QaRw== 的 https://api.nuget.org/v3/index.json 安裝 Microsoft.Data.Sqlite.Core 6.0.10。
info : 已從具有內容雜湊 8rjVzKtGSTojSefghXqh3Y2wq8A7P7iWuUQQyQieXNYrYA7nw2aHZI2rjU+7ta4jHgKITddUHFaPQJ69H18dQA== 的 https://api.nuget.org/v3/index.json 安裝 Microsoft.EntityFrameworkCore.Relational 6.0.10。
info : 已從具有內容雜湊 aMk8c7XKynkDJM8vnRuVz3VHSLiWy4tWpkvSdrQ4No1DNLdtTI6P3iT2wAPvVkuJsS22Ifs62/Jr6AyveX5b4A== 的 https://api.nuget.org/v3/index.json 安裝 Microsoft.EntityFrameworkCore 6.0.10。
info : 已從具有內容雜湊 vWXPg3HJQIpZkENn1KWq8SfbqVujVD7S7vIAyFXXqK5xkf1Vho+vG0bLBCHxU36lD1cLLtmGpfYf0B3MYFi9tQ== 的 https://api.nuget.org/v3/index.json 安裝 Microsoft.Extensions.DependencyInjection 6.0.1。
info : 套件 'Microsoft.EntityFrameworkCore.SQLite' 與專案 'D:\22-Projects.Git\52-ASP.NET Core\MvcFriends\MvcFriends.csproj' 中的所有架構相容。
info : 已將套件 'Microsoft.EntityFrameworkCore.SQLite' 版本 '6.0.10' 的 PackageReference 新增至檔案 'D:\22-Projects.Git\52-ASP.NET Core\MvcFriends\MvcFriends.csproj'。
info : 正在產生 MSBuild 檔案 D:\22-Projects.Git\52-ASP.NET Core\MvcFriends\obj\MvcFriends.csproj.nuget.g.props。
info : 正在將資產檔案寫入磁碟。路徑: D:\22-Projects.Git\52-ASP.NET Core\MvcFriends\obj\project.assets.json
log  : 已還原 D:\22-Projects.Git\52-ASP.NET Core\MvcFriends\MvcFriends.csproj (5.68 sec 內)。

# ------ (5) nuget Microsoft.VisualStudio.Web.CodeGeneration.Design
# ------ Code Generation tool for ASP.NET Core. Contains the dotnet-aspnet-codegenerator command 
# ------ used for generating controllers and views.
PS D:\22-Projects.Git\52-ASP.NET Core\MvcFriends> dotnet add package  Microsoft.VisualStudio.Web.CodeGeneration.Design
  正在判斷要還原的專案...
  Writing C:\Users\jasperlai\AppData\Local\Temp\tmpC2CE.tmp
info : X.509 certificate chain validation will use the default trust store selected by .NET.
info : 正在將套件 'Microsoft.VisualStudio.Web.CodeGeneration.Design' 的 PackageReference 新增至專案 'D:\22-Projects.Git\52-ASP.NET Core\MvcFriends\MvcFriends.csproj'。
info : ...
info : 正在還原 D:\22-Projects.Git\52-ASP.NET Core\MvcFriends\MvcFriends.csproj 的封裝...
info : ...
info : 已從具有內容雜湊 DHxXuZOhUg2TDWZQeC/JYqPsgpLdjgpQF+VEaFPIzFNBwv8y2/DWIakPitfjMtmRH4M0n4tfVidxjbzSmb7vbg== 的 https://api.nuget.org/v3/index.json 安裝 Microsoft.VisualStudio.Web.CodeGeneration.Utils 6.0.10。
info : 已從具有內容雜湊 uqdzuQXxD7XrJCbIbbwpI/LOv0PBJ9VIR0gdvANTHOfK5pjTaCir+XcwvYvBZ5BIzd0KGzyiamzlEWw1cK1q0w== 的 https://api.nuget.org/v3/index.json 安裝 Microsoft.CodeAnalysis.Razor 6.0.0。
info : 已從具有內容雜湊 yCtBr1GSGzJrrp1NJUb4ltwFYMKHw/tJLnIDvg9g/FnkGIEzmE19tbCQqXARIJv5kdtBgsoVIdGLL+zmjxvM/A== 的 https://api.nuget.org/v3/index.json 安裝 Microsoft.AspNetCore.Razor.Language 6.0.0。
info : 已從具有內容雜湊 ZYVcoDM0LnSyT5nWoRGfShYdOecCw2sOXWwP6j1Z0u48Xq3+BVvZ+EiPCX9/8Gz439giW+O1H1kWF9Eb/w6rVg== 的 https://api.nuget.org/v3/index.json 安裝 Microsoft.NET.StringTools 1.0.0。
info : 已從具有內容雜湊 eaiXkUjC4NPcquGWzAGMXjuxvLwc6XGKMptSyOGQeT0X70BUZObuybJFZLA0OfTdueLd3US23NBPTBb6iF3V1Q== 的 https://api.nuget.org/v3/index.json 安裝 NuGet.Frameworks 5.11.0。
info : 已從具有內容雜湊 XbFA0z+6Ws2pNeRXYcDF3lKlNgRoSGMm2Q5HKzZD+EbwYMKPKrl/BJnnkMuDJHU0KravYHfhzBnLLJpPeZ3E7A== 的 https://api.nuget.org/v3/index.json 安裝 Microsoft.Build.Framework 17.0.0。
info : 已從具有內容雜湊 mCv/GzvMk5iatWoZY41PoIShEbwVxq9CDCc1fV/uqPFKZ4DD/1JuKZ5AL/FJJRsTanvMR3EOXKYCLdQ7PFYn8Q== 的 https://api.nuget.org/v3/index.json 安裝 NuGet.Versioning 5.11.0。
info : 已從具有內容雜湊 WCHexQBfSqBDRqP3PSDSUw7YM+PwuvMHGAkT/sXI5UHze4T41yLE+VB/km2Fe0z9y3m2mudcr2djFZezivjMJw== 的 https://api.nuget.org/v3/index.json 安裝 NuGet.Common 5.11.0。
info : 已從具有內容雜湊 I47dVIGiV6SfAyppphxqupertT/5oZkYLDCX6vC3HpOI4ZLjyoKAreUoem2ie6G0RbRuFrlqz/PcTQjfb2DOfQ== 的 https://api.nuget.org/v3/index.json 安裝 System.Text.Json 5.0.2。
info : 已從具有內容雜湊 dTS+3D/GtG2/Pvc3E5YzVvAa7aQJgLDlZDIzukMOJjYudVOQOUXEU68y6Zi3Nn/jqIeB5kOCwrGbQFAKHVzXEQ== 的 https://api.nuget.org/v3/index.json 安裝 System.Threading.Tasks.Dataflow 4.9.0。
info : 已從具有內容雜湊 hCs9OzyCD/TYRid1LxPgghvUDqgXf+tEvV4qd8tBfOyp3zxAk+/rssgxtJnKLMZIu0CEZi3JegvfenaIXjEacQ== 的 https://api.nuget.org/v3/index.json 安裝 Microsoft.Build 17.0.0。
info : 已從具有內容雜湊 jcwfm5lcnE1gZdYK3ciu8bpMerIvc/xOz+swLJPXv3VR34vBm4V/OPhwqOFLV0Hxsdwja4DNZOVZdFGBw7sX8w== 的 https://api.nuget.org/v3/index.json 安裝 Microsoft.VisualStudio.Web.CodeGeneration 6.0.10。
info : 已從具有內容雜湊 lvqognkL8eolgfTCNYFmUKYbPT/WhY9GaTz3m0MzX4cOd1qgQqPuUsIp6YdjI11eWgb9AaCJcGEI6YweRIRK9g== 的 https://api.nuget.org/v3/index.json 安裝 Microsoft.VisualStudio.Web.CodeGeneration.Templating 6.0.10。
info : 已從具有內容雜湊 4X4woAKNixsFWJH7tBWpj7gsM9QlvAIpOSwP5QEOOnjYDrNphNkqk8NnEkMhPIAVLpv+S7j5ZkTSYUvB92FC6A== 的 https://api.nuget.org/v3/index.json 安裝 Microsoft.VisualStudio.Web.CodeGeneration.Design 6.0.10。
info : 已從具有內容雜湊 PZm9NdakQy5rtkkEWK+tJNYDD9KODH726a5wbb5k6fpKEk6zd7vCsUo/OaBrTE+zagNGDTii9TeAz7GvDV0bUg== 的 https://api.nuget.org/v3/index.json 安裝 Microsoft.DotNet.Scaffolding.Shared 6.0.10。
info : 已從具有內容雜湊 J5AlfS/XIhPIODuAgdh+/anL08M5aZG/wW5TXsNQW5MfRhgVHkCiN/9/MHAzA1BXccchlTjL/uVRL7DVH56LRw== 的 https://api.nuget.org/v3/index.json 安裝 NuGet.Frameworks 6.2.1。
info : 已從具有內容雜湊 RONktDA/HA641ds/2bfOqYSVew8o8EJMcQ1P4M1J77QGgbzWiWt3nBHvCAwlx0VfO6K9S8xq4b5OLD2CUnhtCg== 的 https://api.nuget.org/v3/index.json 安裝 MessagePack.Annotations 2.1.152。
info : 已從具有內容雜湊 uZ4lR9/x9X7uQ1uS8yak+oC803S/CzUzNvRAQ6A5FdBdvVxvTj95s0pYx9vCNVHNtXz/DHK1lbQvxVgYNlelQA== 的 https://api.nuget.org/v3/index.json 安裝 NuGet.Packaging 6.2.1。
info : 已從具有內容雜湊 8q7mAwHHP1/Ua1r3FQDg+kXcFvRgBmCCXQeqTkTVQoO5t3G/AwxzJVt7Jii0eNrM17Wzm975U0gnkNqlp+gdsw== 的 https://api.nuget.org/v3/index.json 安裝 NuGet.ProjectModel 5.11.0。
info : 已從具有內容雜湊 j/V5HVvxvBQ7uubYD0PptQW2KGsi1Pc2kZ9yfwLixv3ADdjL/4M78KyC5e+ymW612DY8ZE4PFoZmWpoNmN2mqg== 的 https://api.nuget.org/v3/index.json 安裝 System.Reflection.Emit.Lightweight 4.6.0。
info : 已從具有內容雜湊 +o507LXjsN1YVAgmpqKCQZ70cLsXDoVmR8H0Wgy0muiFnOhkXN2+a6PGFBAIuA7qJch/umTYu1hp7Dlh1Qcrgg== 的 https://api.nuget.org/v3/index.json 安裝 NuGet.Versioning 6.2.1。
info : 已從具有內容雜湊 tz0p+IlXydW+flKLSzB9me8fgCgOWrzgCx6zq/YHFzlTVFkcqi6RmZbk0qum1nk/HTzc9IjtEw+s//7/0pTkeg== 的 https://api.nuget.org/v3/index.json 安裝 NuGet.Configuration 6.2.1。
info : 已從具有內容雜湊 tHwtinZ+Zgbk8V7DopG/eerNm9WYrjuPBg7QnwDERbWcU5NSbvbQb6BIxwdPRlQZwSKRpWHBMMDh4fs8I72vbA== 的 https://api.nuget.org/v3/index.json 安裝 Microsoft.VisualStudio.Web.CodeGeneration.EntityFrameworkCore 6.0.10。
info : 已從具有內容雜湊 eS/sJLqMzPz6gonD1zaXIcpDME/1DuKqv0Hlag8RuJcboZJliA15qjfg7UvuQB8/ineOleaEvrTzMjpKE0FdbQ== 的 https://api.nuget.org/v3/index.json 安裝 NuGet.Protocol 5.11.0。
info : 已從具有內容雜湊 WOTeKJN0I4/AzylA+VuTtB7V7VvnM41GXqnyiiDRNa3QtKFAzJbQ7CwLG97pcme+oQLz708z+s4Nzd9g0irytw== 的 https://api.nuget.org/v3/index.json 安裝 Microsoft.CodeAnalysis.CSharp.Features 4.0.0。
info : 已從具有內容雜湊 0LYNKESZPK4AQmAXwn8l2e8UF/rYpT0pvceEhiTVjurjQ9Y7pGdUZ5E30r8knxYtT5/9ZESR7wKf/AU00r95Mw== 的 https://api.nuget.org/v3/index.json 安裝 Microsoft.CodeAnalysis.Workspaces.MSBuild 4.0.0。
info : 已從具有內容雜湊 qAo4jyXtC9i71iElngX7P2r+zLaiHzxKwf66sc3X91tL5Ks6fnQ1vxL04o7ZSm3sYfLExySL7GN8aTpNYpU1qw== 的 https://api.nuget.org/v3/index.json 安裝 System.Reflection.Emit 4.6.0。
info : 已從具有內容雜湊 ozmB/thXGX5MoP/oiV9w5ZVGS08mz7fK3lRXiRSHHBeuiXZW1ZCGARwG2YkhylzAl1LlEwSQmlgrr8Irlu+3qQ== 的 https://api.nuget.org/v3/index.json 安裝 Microsoft.CodeAnalysis.VisualBasic.Workspaces 4.0.0。
info : 已從具有內容雜湊 GEJsXFcMd7o+D6OYCLPui2ZvNsonTmdPSluGK0wC3EXVB+gnrro7Lr/sjtTSOwVeiXPlhXgprRuO7zJiMn1uzw== 的 https://api.nuget.org/v3/index.json 安裝 Microsoft.CodeAnalysis.VisualBasic.Features 4.0.0。
info : 已從具有內容雜湊 Z8Y8Ye2snCqVQLLx7K6FcEs0hcvdPi4nTG2RDWdPpOfMH8ed1yxTabt252qAd4TH0jpyruuCnBfW4s6DXliMYg== 的 https://api.nuget.org/v3/index.json 安裝 Microsoft.CodeAnalysis.CSharp.Scripting 4.0.0。
info : 已從具有內容雜湊 ci4pgjEgihb+fu2i1E12iOMGXU6GisYR3YrNd2aqt55ijjzLNqPV/+zt+cV3Qc0n08rJrIY2Bf6cTTMPY0bwJQ== 的 https://api.nuget.org/v3/index.json 安裝 Microsoft.CodeAnalysis.Features 4.0.0。
info : 已從具有內容雜湊 RQMc1+2cIRdOvY8vp6ygkzfBrvlYphnbmhhluKNh9+X+PpprQDKlbPrn9fLn6v9RlCsfa87joS3zJyGBEeWTXQ== 的 https://api.nuget.org/v3/index.json 安裝 Microsoft.CodeAnalysis.CSharp.Workspaces 4.0.0。
info : 已從具有內容雜湊 9TPLGjBCGKmNvG8pjwPeuYy0SMVmGZRwlTZvyPHDbYv/DRkoeumJdfumaaDNQzVGMEmbWtg07zUpSW9q70IlDQ== 的 https://api.nuget.org/v3/index.json 安裝 System.Security.Cryptography.Pkcs 5.0.0。
info : 已從具有內容雜湊 K0hfdWy+0p8DJXxzpNc4T5zHm4hf9QONAvyzvw3utKExmxRBShtV/+uHVYTblZWk+rIHNEHeglyXMmqfSshdFA== 的 https://api.nuget.org/v3/index.json 安裝 Microsoft.Build.Framework 16.5.0。
info : 已從具有內容雜湊 kkWhU0msuCRyiIJeoL95j6bXUQMc1mTk8wZ3mMxl+0VzOf39eXSObmxKuJ7eh+6zOMQyzd0TAXU5u5aQSxOVSg== 的 https://api.nuget.org/v3/index.json 安裝 NuGet.DependencyResolver.Core 5.11.0。
info : 已從具有內容雜湊 IPq/x/d5nAcnD3vIyM3AbPOaTgcqrh0AqPSx7U53UFu3M6k1TH1u/eXc9/h4jm/3mpP1WRUpevlPY4PACd7AWw== 的 https://api.nuget.org/v3/index.json 安裝 System.Text.Json 4.7.0。
info : 已從具有內容雜湊 br/qV/aHqLqVlqtcMKglCC8MHMMLey0yMkKSplnMl58F5gKjwnh7wjs8+g0j/vf4T6h4KK7JWrC0+oN70pbugg== 的 https://api.nuget.org/v3/index.json 安裝 Microsoft.VisualStudio.Debugger.Contracts 17.2.0。
info : 已從具有內容雜湊 qmC7zVUdYaz1lE4tw4dceTFnmVho36tut8R/gvxLIixtjGhIZDIvdo4wUUIDLXrDxublaQYMay1+QotTOUIj8g== 的 https://api.nuget.org/v3/index.json 安裝 NuGet.Common 6.2.1。
info : 已從具有內容雜湊 Iq0tbX3Rsl4837VlWy90fliA7T2+g2FPdz/s/lK6H9g/5RCta/7AZADV0l/A/f0HDCDlMxBN2ha1hsmgxe1sGQ== 的 https://api.nuget.org/v3/index.json 安裝 NuGet.LibraryModel 5.11.0。
info : 已從具有內容雜湊 rsYXB7+iUPP8AHgQ8JP2UZI2xK2KhjcdGr9E6zX3CsZaTLCaw8M35vaAJRo1rfxeaZEVMuXeaquLVCkZ7JcZ5Q== 的 https://api.nuget.org/v3/index.json 安裝 Humanizer.Core 2.2.0。
info : 已從具有內容雜湊 0iYBGyUXe+4eH9rb2yvrhKH8VuLz5otW8cpEZ4OZR+/TdlPxQ+3Ndb/Qg2MvI5WZmcmTnEoJzXd5tfpi+g8AMQ== 的 https://api.nuget.org/v3/index.json 安裝 Microsoft.VisualStudio.Web.CodeGeneration.Core 6.0.10。
info : 已從具有內容雜湊 jIMXsKn94T9JY7PvPq/tMfqa6GAaHpElRDpmG+SuL+D3+sTw2M8VhnibKnN8Tq+4JqbPJ/f+BwtLeDMEnzAvRg== 的 https://api.nuget.org/v3/index.json 安裝 System.Security.Cryptography.Cng 5.0.0。
info : 已從具有內容雜湊 MTvUIktmemNB+El0Fgw9egyqT9AYSIk6DTJeoDSpc3GIHxHCMo8COqkWT1mptX5tZ1SlQ6HJZ0OsSvMth1c12w== 的 https://api.nuget.org/v3/index.json 安裝 System.Formats.Asn1 5.0.0。
info : 已從具有內容雜湊 d02ybMhUJl1r/dI6SkJPHrTiTzXBYCZeJdOLMckV+jyoMU/GGkjqFX/sRbv1K0QmlpwwKuLTiYVQvfYC+8ox2g== 的 https://api.nuget.org/v3/index.json 安裝 Microsoft.CodeAnalysis.Common 4.0.0。
info : 已從具有內容雜湊 gyQ70pJ4T7hu/s0+QnEaXtYfeG/JrttGnxHJlrhpxsQjRIUGuRhVwNBtkHHYOrUAZ/l47L98/NiJX6QmTwAyrg== 的 https://api.nuget.org/v3/index.json 安裝 Microsoft.CodeAnalysis.AnalyzerUtilities 3.3.0。
info : 已從具有內容雜湊 uJhZlGMkXDaFYsH8V9S6o1EyvsUqB9mpU4DVBXNr0DXZVzZMhuLP1IkLj5xK3EKlaAcvkFkZv3eSvuz360wb3Q== 的 https://api.nuget.org/v3/index.json 安裝 MessagePackAnalyzer 2.1.152。
info : 已從具有內容雜湊 PlJ31qf42uGuJfwc61x/Pt4hJi01xh1rrBofj1MJSLzEot/2UAIRdSgxEHN/8qou5CV8OBeDM9HXKPi1Oj8rpQ== 的 https://api.nuget.org/v3/index.json 安裝 MessagePack 2.1.152。
info : 已從具有內容雜湊 /fn1Tfo7j7k/slViPlM8azJuxQmri7FZ8dQ+gTeLbI29leN/1VK0U/BFcRdJNctsRCUgyKJ2q+I0Tjq07Rc1/Q== 的 https://api.nuget.org/v3/index.json 安裝 Microsoft.DiaSymReader 1.3.0。
info : 已從具有內容雜湊 qEePWsaq9LoEEIqhbGe6D5J8c9IqQOUuTzzV6wn1POlfdLkJliZY3OlB0j0f17uMWlqZYjH7txj+2YbyrIA8Yg== 的 https://api.nuget.org/v3/index.json 安裝 System.IO.Pipelines 5.0.1。
info : 已從具有內容雜湊 jU/ncoHSFnXU/L2iju9AFlOwmsAYByIxhCCpeLPNTguXwosJp1o13mtrboJOfkDhi7ebvzQmvcZ++yBu8cF4Sw== 的 https://api.nuget.org/v3/index.json 安裝 Microsoft.CodeAnalysis.Scripting.Common 4.0.0。
info : 已從具有內容雜湊 FK+OGUMUh9O6/GCwyIy4c/sOrarF36/yEY07BbXVYMql1qCqHGWfyWXyCQKQ6m/KqReCqW6aO4cK7kK/AYBpyA== 的 https://api.nuget.org/v3/index.json 安裝 Microsoft.CodeAnalysis.VisualBasic 4.0.0。
info : 已從具有內容雜湊 bEfHzx8PLmEN6aogVYHWmViHCWfms8emI43w9nNX+C8MLgtynOmVL/OJ4hbuONVp+4OuDAy5BDj69n5MnXQX8g== 的 https://api.nuget.org/v3/index.json 安裝 Microsoft.CodeAnalysis.Workspaces.Common 4.0.0。
info : 已從具有內容雜湊 2UVTGtyQGgTCazvnT6t82f+7AV2L+kqJdyb61rT9GQed4yK+tVh5IkaKcsm70VqyZQhBbDqsfZFNHnY65xhrRw== 的 https://api.nuget.org/v3/index.json 安裝 Microsoft.CodeAnalysis.CSharp 4.0.0。
info : 已從具有內容雜湊 7xt6zTlIEizUgEsYAIgm37EbdkiMmr6fP6J9pDoKEpiGM4pi32BCPGr/IczmSJI9Zzp0a6HOzpr9OvpMP+2veA== 的 https://api.nuget.org/v3/index.json 安裝 Microsoft.CodeAnalysis.Analyzers 3.3.2。
info : 已從具有內容雜湊 7QdD1LXFftoQPuk77Isp/8BQR4PYebPaRle38NbUYjJlK9sHPoORiOID2WOPeqLC8EP5SabwN2XS468GuOPG7w== 的 https://api.nuget.org/v3/index.json 安裝 Microsoft.VisualStudio.Web.CodeGenerators.Mvc 6.0.10。
info : 套件 'Microsoft.VisualStudio.Web.CodeGeneration.Design' 與專案 'D:\22-Projects.Git\52-ASP.NET Core\MvcFriends\MvcFriends.csproj' 中的所有架構相容。
info : 已將套件 'Microsoft.VisualStudio.Web.CodeGeneration.Design' 版本 '6.0.10' 的 PackageReference 新增至檔案 'D:\22-Projects.Git\52-ASP.NET Core\MvcFriends\MvcFriends.csproj'。
info : 正在產生 MSBuild 檔案 D:\22-Projects.Git\52-ASP.NET Core\MvcFriends\obj\MvcFriends.csproj.nuget.g.props。
info : 正在將資產檔案寫入磁碟。路徑: D:\22-Projects.Git\52-ASP.NET Core\MvcFriends\obj\project.assets.json
log  : 已還原 D:\22-Projects.Git\52-ASP.NET Core\MvcFriends\MvcFriends.csproj (26.91 sec 內)。

# ------ (6) nuget Microsoft.EntityFrameworkCore.Design
# ------ Shared design-time components for Entity Framework Core tools.
PS D:\22-Projects.Git\52-ASP.NET Core\MvcFriends> dotnet add package Microsoft.EntityFrameworkCore.Design 
  正在判斷要還原的專案...
  Writing C:\Users\jasperlai\AppData\Local\Temp\tmp50F7.tmp
info : X.509 certificate chain validation will use the default trust store selected by .NET.
info : 正在將套件 'Microsoft.EntityFrameworkCore.Design' 的 PackageReference 新增至專案 'D:\22-Projects.Git\52-ASP.NET Core\MvcFriends\MvcFriends.csproj'。
info : ...
info : 正在還原 D:\22-Projects.Git\52-ASP.NET Core\MvcFriends\MvcFriends.csproj 的封裝...
info : ...
info : 已從具有內容雜湊 SVqDfUftgBoKCMPfTaWXiKBZPHMjbiBJLE5WE7MeD28nTk7CkmUNX8eXyNIeWxpDuk4r0zZ6XG9zyG7Ef3KS4A== 的 https://api.nuget.org/v3/index.json 安裝 Microsoft.EntityFrameworkCore.Design 6.0.10。
info : 套件 'Microsoft.EntityFrameworkCore.Design' 與專案 'D:\22-Projects.Git\52-ASP.NET Core\MvcFriends\MvcFriends.csproj' 中的所有架構相容。
info : 已將套件 'Microsoft.EntityFrameworkCore.Design' 版本 '6.0.10' 的 PackageReference 新增至檔案 'D:\22-Projects.Git\52-ASP.NET Core\MvcFriends\MvcFriends.csproj'。
info : 正在產生 MSBuild 檔案 D:\22-Projects.Git\52-ASP.NET Core\MvcFriends\obj\MvcFriends.csproj.nuget.g.props。
info : 正在將資產檔案寫入磁碟。路徑: D:\22-Projects.Git\52-ASP.NET Core\MvcFriends\obj\project.assets.json
log  : 已還原 D:\22-Projects.Git\52-ASP.NET Core\MvcFriends\MvcFriends.csproj (2 sec 內)。

# ------ (7) nuget Microsoft.EntityFrameworkCore.SqlServer
# ------ Microsoft SQL Server database provider for Entity Framework Core.
PS D:\22-Projects.Git\52-ASP.NET Core\MvcFriends> dotnet add package Microsoft.EntityFrameworkCore.SqlServer
  正在判斷要還原的專案...
  Writing C:\Users\jasperlai\AppData\Local\Temp\tmpBF57.tmp
info : X.509 certificate chain validation will use the default trust store selected by .NET.
info : 正在將套件 'Microsoft.EntityFrameworkCore.SqlServer' 的 PackageReference 新增至專案 'D:\22-Projects.Git\52-ASP.NET Core\MvcFriends\MvcFriends.csproj'。
info : ...
info : 正在還原 D:\22-Projects.Git\52-ASP.NET Core\MvcFriends\MvcFriends.csproj 的封裝...
info : ...
info : 已從具有內容雜湊 A5xZ2yO3zdYdZKlX90AjMruftIT73ApG2yW11T7sougUi1HyzpTh9/RF9LaLeMxZVzIAjuKvb7WkVzxduc2/Kg== 的 https://api.nuget.org/v3/index.json 安裝 Microsoft.EntityFrameworkCore.SqlServer 6.0.10。
info : 套件 'Microsoft.EntityFrameworkCore.SqlServer' 與專案 'D:\22-Projects.Git\52-ASP.NET Core\MvcFriends\MvcFriends.csproj' 中的所有架構相容。
info : 已將套件 'Microsoft.EntityFrameworkCore.SqlServer' 版本 '6.0.10' 的 PackageReference 新增至檔案 'D:\22-Projects.Git\52-ASP.NET Core\MvcFriends\MvcFriends.csproj'。
info : 正在將資產檔案寫入磁碟。路徑: D:\22-Projects.Git\52-ASP.NET Core\MvcFriends\obj\project.assets.json
log  : 已還原 D:\22-Projects.Git\52-ASP.NET Core\MvcFriends\MvcFriends.csproj (1.75 sec 內)。

# ------ (8) 檢視已安裝的全域工具
# ------ 參考連結: https://learn.microsoft.com/en-us/dotnet/core/tools/dotnet-tool-list
PS D:\22-Projects.Git\52-ASP.NET Core\MvcFriends> dotnet tool list --global
套件識別碼                            版本          命令
------------------------------------------------------------------------
dotnet-aspnet-codegenerator      6.0.10      dotnet-aspnet-codegenerator
dotnet-ef                        6.0.10      dotnet-ef

# ------ (9) 檢視已安裝的 nuget 套件
# ------ 參考連結: https://learn.microsoft.com/en-us/dotnet/core/tools/dotnet-list-package
PS D:\22-Projects.Git\52-ASP.NET Core\MvcFriends> dotnet list package
專案 'MvcFriends' 有以下套件參考
   [net6.0]:
   最上層套件                                                   已要求      已解析
   > Microsoft.EntityFrameworkCore.Design                  6.0.10   6.0.10
   > Microsoft.EntityFrameworkCore.SQLite                  6.0.10   6.0.10
   > Microsoft.EntityFrameworkCore.SqlServer               6.0.10   6.0.10
   > Microsoft.VisualStudio.Web.CodeGeneration.Design      6.0.10   6.0.10

PS D:\22-Projects.Git\52-ASP.NET Core\MvcFriends> dotnet list MvcFriends.csproj package
專案 'MvcFriends' 有以下套件參考
   [net6.0]:
   最上層套件                                                   已要求      已解析
   > Microsoft.EntityFrameworkCore.Design                  6.0.10   6.0.10
   > Microsoft.EntityFrameworkCore.SQLite                  6.0.10   6.0.10
   > Microsoft.EntityFrameworkCore.SqlServer               6.0.10   6.0.10
   > Microsoft.VisualStudio.Web.CodeGeneration.Design      6.0.10   6.0.10

# ------ (10) 檢視已加入的專案參考
# ------ 參考連結: https://learn.microsoft.com/en-us/dotnet/core/tools/dotnet-add-reference
PS D:\22-Projects.Git\52-ASP.NET Core\MvcFriends> dotnet list reference
專案 D:\22-Projects.Git\52-ASP.NET Core\MvcFriends\ 中沒有任何 專案對專案 參考。

PS D:\22-Projects.Git\52-ASP.NET Core\MvcFriends> dotnet list MvcFriends.csproj reference
專案 MvcFriends.csproj 中沒有任何 專案對專案 參考。


# ====== 7.. 新增 Data\DatabaseContext.cs ======
# ------ 參考連結: https://learn.microsoft.com/zh-tw/aspnet/core/data/ef-mvc/intro?view=aspnetcore-6.0

# ====== 8.. 在 Startup.cs 註冊 DatabaseContext 服務 ======
# ------ 重要: ASP.NET Core 6.0 已沒有 Startup.cs, 完全放在 Program.cs

# /* ==(B)========== [jasper] 註冊 DbContext Service =============== */
# /* 參考 Visual Studio 2022 產出的範例程式 */
# var connectionString = builder.Configuration.GetConnectionString("SampleConnection");
# builder.Services.AddDbContext<DatabaseContext>(options =>
#                 options.UseSqlServer(connectionString));
# /* ==(E)========== [jasper] 註冊 DbContext Service =============== */

# ====== 9.. 在 appsettings.json 新增 SampleConnection 資料庫連線 ======

# ====== 10.. 建立 Migration 及資料庫 ======

# ------ (1) 重建方案
PS D:\22-Projects.Git\52-ASP.NET Core\MvcFriends> dotnet build
MSBuild version 17.3.2+561848881 for .NET
  所有專案都在最新狀態，可進行還原。
  MvcFriends -> D:\22-Projects.Git\52-ASP.NET Core\MvcFriends\bin\Debug\net6.0\MvcFriends.dll
建置成功。
    0 個警告
    0 個錯誤
經過時間 00:00:01.71

# ------ (2) 建立 Migrations 資料夾及相關檔案
PS D:\22-Projects.Git\52-ASP.NET Core\MvcFriends> dotnet ef migrations add InitialCreate
Build started...
Build succeeded.
info: Microsoft.EntityFrameworkCore.Infrastructure[10403]
      Entity Framework Core 6.0.10 initialized 'DatabaseContext' using provider 'Microsoft.EntityFrameworkCore.SqlServer:6.0.10' with options: 
None
Done. To undo this action, use 'ef migrations remove'

# ------ (3) 查看 Migrations 資料夾下產生的檔案
PS D:\22-Projects.Git\52-ASP.NET Core\MvcFriends> ls Migrations
    Directory: D:\22-Projects.Git\52-ASP.NET Core\MvcFriends\Migrations
Mode                LastWriteTime         Length Name
----                -------------         ------ ----
-a----        2022/10/18 下午 03:15           1157 20221018071541_InitialCreate.cs
-a----        2022/10/18 下午 03:15           1755 20221018071541_InitialCreate.Designer.cs
-a----        2022/10/18 下午 03:15           1682 DatabaseContextModelSnapshot.cs

# ------ (4) 更新/產出資料庫
PS D:\22-Projects.Git\52-ASP.NET Core\MvcFriends> dotnet ef database update
Build started...
Build succeeded.
info: Microsoft.EntityFrameworkCore.Infrastructure[10403]
      Entity Framework Core 6.0.10 initialized 'DatabaseContext' using provider 'Microsoft.EntityFrameworkCore.SqlServer:6.0.10' with options: 
None
info: Microsoft.EntityFrameworkCore.Database.Command[20101]
      Executed DbCommand (181ms) [Parameters=[], CommandType='Text', CommandTimeout='60']
      CREATE DATABASE [MvcFriendDB];
info: Microsoft.EntityFrameworkCore.Database.Command[20101]
      Executed DbCommand (61ms) [Parameters=[], CommandType='Text', CommandTimeout='60']
      IF SERVERPROPERTY('EngineEdition') <> 5
      BEGIN
          ALTER DATABASE [MvcFriendDB] SET READ_COMMITTED_SNAPSHOT ON;
      END;
info: Microsoft.EntityFrameworkCore.Database.Command[20101]
      Executed DbCommand (8ms) [Parameters=[], CommandType='Text', CommandTimeout='30']
      SELECT 1
info: Microsoft.EntityFrameworkCore.Database.Command[20101]
      Executed DbCommand (17ms) [Parameters=[], CommandType='Text', CommandTimeout='30']
      CREATE TABLE [__EFMigrationsHistory] (
          [MigrationId] nvarchar(150) NOT NULL,
          [ProductVersion] nvarchar(32) NOT NULL,
          CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY ([MigrationId])
      );
info: Microsoft.EntityFrameworkCore.Database.Command[20101]
      Executed DbCommand (10ms) [Parameters=[], CommandType='Text', CommandTimeout='30']
      SELECT 1
info: Microsoft.EntityFrameworkCore.Database.Command[20101]
      Executed DbCommand (23ms) [Parameters=[], CommandType='Text', CommandTimeout='30']
      SELECT OBJECT_ID(N'[__EFMigrationsHistory]');
info: Microsoft.EntityFrameworkCore.Database.Command[20101]
      Executed DbCommand (9ms) [Parameters=[], CommandType='Text', CommandTimeout='30']
      SELECT [MigrationId], [ProductVersion]
      FROM [__EFMigrationsHistory]
      ORDER BY [MigrationId];
info: Microsoft.EntityFrameworkCore.Migrations[20402]
      Applying migration '20221018071541_InitialCreate'.
Applying migration '20221018071541_InitialCreate'.
info: Microsoft.EntityFrameworkCore.Database.Command[20101]
      Executed DbCommand (3ms) [Parameters=[], CommandType='Text', CommandTimeout='30']
      CREATE TABLE [Friends] (
          [Id] int NOT NULL IDENTITY,
          [Name] nvarchar(max) NOT NULL,
          [Email] nvarchar(max) NOT NULL,
          [Mobile] nvarchar(max) NULL,
          CONSTRAINT [PK_Friends] PRIMARY KEY ([Id])
      );
info: Microsoft.EntityFrameworkCore.Database.Command[20101]
      Executed DbCommand (4ms) [Parameters=[], CommandType='Text', CommandTimeout='30']
      INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
      VALUES (N'20221018071541_InitialCreate', N'6.0.10');
Done.

# ------ (5) 查看資料庫建立的狀況 (目前只知能用 SSMS 連接至 (localdb)\mssqllocaldb )
# ------ [圖片] 連線 by SSMS ------
# ------ [圖片] 連線 by VS 2022 ------
# ------ [圖片] 連線 by VS Code ------

# ====== 11.. 建立 Controller 及 View ======
# ------ 參考連結: https://learn.microsoft.com/en-us/aspnet/core/fundamentals/tools/dotnet-aspnet-codegenerator?view=aspnetcore-6.0

# ------ (1) 查看 dotnet aspnet-codegenerator controller 的 help
PS D:\22-Projects.Git\52-ASP.NET Core\MvcFriends> dotnet aspnet-codegenerator controller -h
Usage: aspnet-codegenerator [arguments] [options]
Arguments:
  generator  Name of the generator. Check available generators below.
Options:
  -p|--project             Path to .csproj file in the project.
  -n|--nuget-package-dir
  -c|--configuration       Configuration for the project (Possible values: Debug/ Release)
  -tfm|--target-framework  Target Framework to use. (Short folder name of the tfm. eg. net46)
  -b|--build-base-path
  --no-build

Selected Code Generator: controller
Generator Options:
  --controllerName|-name              : Name of the controller
  --useAsyncActions|-async            : Switch to indicate whether to generate async controller actions
  --noViews|-nv                       : Switch to indicate whether to generate CRUD views
  --restWithNoViews|-api              : Specify this switch to generate a Controller with REST style API, noViews is assumed and any view related options are ignored
  --readWriteActions|-actions         : Specify this switch to generate Controller with read/write actions when a Model class is not used
  --model|-m                          : Model class to use
  --dataContext|-dc                   : DbContext class to use
  --referenceScriptLibraries|-scripts : Switch to specify whether to reference script libraries in the generated views
  --layout|-l                         : Custom Layout page to use
  --useDefaultLayout|-udl             : Switch to specify that default layout should be used for the views
  --force|-f                          : Use this option to overwrite existing files
  --relativeFolderPath|-outDir        : Specify the relative output folder path from project where the file needs to be generated, if not specified, file will be generated in the project folder
  --controllerNamespace|-namespace    : Specify the name of the namespace to use for the generated controller
  --useSqlite|-sqlite                 : Flag to specify if DbContext should use SQLite instead of SQL Server.

# ------ (2) 產生 CRUD 的 controllers 及 Views
PS D:\22-Projects.Git\52-ASP.NET Core\MvcFriends> dotnet aspnet-codegenerator controller --controllerName FriendsController -outDir Controllers -async -namespace MvcFriends.Controllers -m Friend -dc DatabaseContext -udl
Building project ...
Finding the generator 'controller'...
Running the generator 'controller'...

Minimal hosting scenario!
Attempting to compile the application in memory.
Attempting to figure out the EntityFramework metadata for the model and DbContext: 'Friend'
info: Microsoft.EntityFrameworkCore.Infrastructure[10403]
      Entity Framework Core 6.0.10 initialized 'DatabaseContext' using provider 'Microsoft.EntityFrameworkCore.SqlServer:6.0.10' with options: None
Added Controller : '\Controllers\FriendsController.cs'.
Added View : \Views\Friends\Create.cshtml
Added View : \Views\Friends\Edit.cshtml
Added View : \Views\Friends\Details.cshtml
Added View : \Views\Friends\Delete.cshtml
Added View : \Views\Friends\Index.cshtml

# ------ [圖片] generated controller and views ------

# ====== 12.. 建立種子資料 DatabaseContext.OnModelCreating ======

# ====== 13.. 執行 Migrations 資料庫更新 ======

# ------ (1) 提交一個新的 migration
PS D:\22-Projects.Git\52-ASP.NET Core\MvcFriends> dotnet ef migrations add AddSeedData
Build started...
Build succeeded.
info: Microsoft.EntityFrameworkCore.Infrastructure[10403]
      Entity Framework Core 6.0.10 initialized 'DatabaseContext' using provider 'Microsoft.EntityFrameworkCore.SqlServer:6.0.10' with options: None
Done. To undo this action, use 'ef migrations remove'

# ------ (2) 更新產出資料庫
PS D:\22-Projects.Git\52-ASP.NET Core\MvcFriends> dotnet ef database update
Build started...
Build succeeded.
info: Microsoft.EntityFrameworkCore.Infrastructure[10403]
      Entity Framework Core 6.0.10 initialized 'DatabaseContext' using provider 'Microsoft.EntityFrameworkCore.SqlServer:6.0.10' with options: None
info: Microsoft.EntityFrameworkCore.Database.Command[20101]
      Executed DbCommand (15ms) [Parameters=[], CommandType='Text', CommandTimeout='30']
      SELECT 1
info: Microsoft.EntityFrameworkCore.Database.Command[20101]
      Executed DbCommand (20ms) [Parameters=[], CommandType='Text', CommandTimeout='30']
      SELECT OBJECT_ID(N'[__EFMigrationsHistory]');
info: Microsoft.EntityFrameworkCore.Database.Command[20101]
      Executed DbCommand (8ms) [Parameters=[], CommandType='Text', CommandTimeout='30']
      SELECT 1
info: Microsoft.EntityFrameworkCore.Database.Command[20101]
      Executed DbCommand (6ms) [Parameters=[], CommandType='Text', CommandTimeout='30']
      SELECT OBJECT_ID(N'[__EFMigrationsHistory]');
info: Microsoft.EntityFrameworkCore.Database.Command[20101]
      Executed DbCommand (12ms) [Parameters=[], CommandType='Text', CommandTimeout='30']
      SELECT [MigrationId], [ProductVersion]
      FROM [__EFMigrationsHistory]
      ORDER BY [MigrationId];
info: Microsoft.EntityFrameworkCore.Migrations[20402]
      Applying migration '20221018090548_AddSeedData'.
Applying migration '20221018090548_AddSeedData'.
info: Microsoft.EntityFrameworkCore.Database.Command[20101]
      Executed DbCommand (25ms) [Parameters=[], CommandType='Text', CommandTimeout='30']
      IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'Email', N'Mobile', N'Name') AND [object_id] = OBJECT_ID(N'[Friends]'))
          SET IDENTITY_INSERT [Friends] ON;
      INSERT INTO [Friends] ([Id], [Email], [Mobile], [Name])
      VALUES (1, N'mary@gmail.com', N'123456789', N'Mary');
      IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'Email', N'Mobile', N'Name') AND [object_id] = OBJECT_ID(N'[Friends]'))
          SET IDENTITY_INSERT [Friends] OFF;
info: Microsoft.EntityFrameworkCore.Database.Command[20101]
      Executed DbCommand (7ms) [Parameters=[], CommandType='Text', CommandTimeout='30']
      IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'Email', N'Mobile', N'Name') AND [object_id] = OBJECT_ID(N'[Friends]'))
          SET IDENTITY_INSERT [Friends] ON;
      INSERT INTO [Friends] ([Id], [Email], [Mobile], [Name])
      VALUES (2, N'john@gmail.com', N'987654321', N'John');
      IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'Email', N'Mobile', N'Name') AND [object_id] = OBJECT_ID(N'[Friends]'))
          SET IDENTITY_INSERT [Friends] OFF;
info: Microsoft.EntityFrameworkCore.Database.Command[20101]
      Executed DbCommand (8ms) [Parameters=[], CommandType='Text', CommandTimeout='30']
      IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'Email', N'Mobile', N'Name') AND [object_id] = OBJECT_ID(N'[Friends]'))
          SET IDENTITY_INSERT [Friends] ON;
      INSERT INTO [Friends] ([Id], [Email], [Mobile], [Name])
      VALUES (3, N'jasper@gmail.com', N'123456987', N'Jasper');
      IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'Email', N'Mobile', N'Name') AND [object_id] = OBJECT_ID(N'[Friends]'))
          SET IDENTITY_INSERT [Friends] OFF;
info: Microsoft.EntityFrameworkCore.Database.Command[20101]
      Executed DbCommand (2ms) [Parameters=[], CommandType='Text', CommandTimeout='30']
      INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
      VALUES (N'20221018090548_AddSeedData', N'6.0.10');
Done.

# ====== 14.. [Ctrl+F5] 查看結果 ======
# ------ https://localhost:7225/Friends




