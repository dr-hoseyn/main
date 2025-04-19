<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="main.index" %>

    <!DOCTYPE html>
    <html xmlns="http://www.w3.org/1999/xhtml">

    <head runat="server">
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>
            <%= (Request.QueryString["lang"]=="fa" ) ? "بلاگ حاج حسین" : "Hoseyn Blog" %>
        </title>
        <link rel="alternate" type="application/rss+xml" href="/rss.xml" />
        <link rel="icon" type="image/x-icon" href="favicons/7645--favicon.ico" />
        <link rel="stylesheet" href="css_files/_astro-index.CvLV1VIh.css" />
    </head>

    <body class="bg-slate-900 text-gray-100">
        <!-- دکمه‌های تغییر زبان -->
        <div class="language-switch" style="text-align: center; margin-top: 20px;">
            <a href="?lang=en" class="lang-button" style="margin-right: 10px; color: #00BCD4;">English</a> |
            <a href="?lang=fa" class="lang-button" style="margin-left: 10px; color: #00BCD4;">فارسی</a>
        </div>

        <div class="mx-auto max-w-screen-lg px-3 py-6">
            <div class="flex flex-col gap-y-3 sm:flex-row sm:items-center sm:justify-between">
                <a href="index.html">
                    <div
                        class="flex items-center bg-gradient-to-br from-sky-500 to-cyan-400 bg-clip-text text-xl font-bold text-transparent">
                        <svg class="mr-1 h-10 w-10 stroke-cyan-600" xmlns="http://www.w3.org/2000/svg"
                            viewbox="0 0 24 24" fill="none" stroke-width="1.5" stroke-linecap="round"
                            stroke-linejoin="round">
                            <path d="M0 0h24v24H0z" stroke="none"></path>
                            <rect x="3" y="12" width="6" height="8" rx="1"></rect>
                            <rect x="9" y="8" width="6" height="12" rx="1"></rect>
                            <rect x="15" y="4" width="6" height="16" rx="1"></rect>
                            <path d="M4 20h14"></path>
                        </svg>
                        <%= (Request.QueryString["lang"]=="fa" ) ? "بلاگ حاج حسین" : "Haj'hoseyn Blog" %>
                    </div>
                </a>
                <nav>
                    <ul class="flex gap-x-3 font-medium text-gray-200">
                        <li class="hover:text-white"><a href="index.html" target="_self">
                                <%= (Request.QueryString["lang"]=="fa" ) ? "وبلاگ‌ها" : "Blogs" %>
                            </a></li>
                        <li class="hover:text-white"><a href="https://t.me/haj_hoseyn" target="_self">Telegram</a></li>
                        <li class="hover:text-white"><a href="" target="_self">Discord</a></li>
                    </ul>
                </nav>
            </div>
        </div>

        <div class="mx-auto max-w-screen-lg px-3 py-6">
            <div class="flex flex-col items-center md:flex-row md:justify-between md:gap-x-24">
                <div>
                    <h1 class="text-3xl font-bold">
                        <%= (Request.QueryString["lang"]=="fa" ) ? "سلام! من حسین هستم" : "Hi there, I'm hoseyn" %>
                            &#128075;
                    </h1>
                    <p class="mt-6 text-xl leading-9">
                        <%= (Request.QueryString["lang"]=="fa" )
                            ? "سلام! من حسین، توسعه‌دهنده وب هستم که به تکنولوژی علاقه‌مندم. من در ساخت وب‌سایت‌های مدرن با استفاده از ابزارهایی مانند React، Tailwind CSS و ASP.NET تخصص دارم."
                            : "Hi! I'm hoseyn, a web developer passionate about technology. I specialize in building modern websites using tools like React, Tailwind CSS, and ASP.NET."
                            %>
                    </p>

                    <p class="mt-6 text-xl leading-9">
                        <%= (Request.QueryString["lang"]=="fa" )
                            ? "در اوقات فراغت، علاقه‌مند به یادگیری تکنولوژی‌های جدید و اشتراک تجربیاتم در بلاگم هستم. می‌توانید پروژه‌هایم را در GitHub مشاهده کنید."
                            : "In my free time, I love learning new technologies and sharing my experiences through my blog. You can check out my projects on GitHub."
                            %>
                    </p>

                    <div class="mt-3 flex gap-1">
                        <a href="https://x.com"><img class="h-12 w-12 hover:translate-y-1"
                                src="images_files/images-twitter-icon.png" alt="Twitter icon" loading="lazy" /></a>
                        <a href="https://www.facebook.com/"><img class="h-12 w-12 hover:translate-y-1"
                                src="images_files/images-facebook-icon.png" alt="Facebook icon" loading="lazy" /></a>
                        <a href="https://www.linkedin.com/"><img class="h-12 w-12 hover:translate-y-1"
                                src="images_files/images-linkedin-icon.png" alt="Linkedin icon" loading="lazy" /></a>
                        <a href="https://youtube.com/"><img class="h-12 w-12 hover:translate-y-1"
                                src="images_files/images-youtube-icon.png" alt="Youtube icon" loading="lazy" /></a>
                    </div>
                </div>
                <div class="shrink-0"><img class="h-80 w-64" src="images_files/images-avatar.svg" alt="Avatar image"
                        loading="lazy" /></div>
            </div>
        </div>

        <div class="mx-auto max-w-screen-lg px-3 py-6">
            <div class="mb-6 text-2xl font-bold">
                <%= (Request.QueryString["lang"]=="fa" ) ? "پروژه‌های اخیر" : "Recent Projects" %>
            </div>
            <div class="flex flex-col gap-6">
                <!-- پروژه ۱ -->
                <div class="flex flex-col items-center gap-x-8 rounded-md bg-slate-800 p-3 md:flex-row">
                    <div class="shrink-0"><a href="projects/Calculator.aspx"><img class="h-36 w-36 hover:translate-y-1"
                                src="images_files/images-project-web-design.png" alt="Project Web Design"
                                loading="lazy"></a></div>
                    <div>
                        <div class="flex flex-col items-center gap-y-2 md:flex-row">
                            <a class="hover:text-cyan-400" href="projects/Calculator.aspx">
                                <div class="text-xl font-semibold">
                                    <%= (Request.QueryString["lang"]=="fa" ) ? "ماشین حساب" : "Calculator" %>
                                </div>
                            </a>
                        </div>
                        <p class="mt-3 text-gray-400">
                            <%= (Request.QueryString["lang"]=="fa" )
                                ? "این ماشین حساب مبتنی بر وب است که با HTML، CSS، جاوا اسکریپت و .NET ساخته شده است."
                                : "This web-based calculator, built with HTML, CSS, JavaScript, and .NET, performs basic arithmetic operations."
                                %>
                        </p>
                    </div>
                </div>

                <!-- پروژه ۲ -->
                <div class="flex flex-col items-center gap-x-8 rounded-md bg-slate-800 p-3 md:flex-row">
                    <div class="shrink-0"><a href="projects/bmi.aspx"><img class="h-36 w-36 hover:translate-y-1"
                                src="images_files/images-project-fire.png" alt="Project Fire" loading="lazy"></a></div>
                    <div>
                        <div class="flex flex-col items-center gap-y-2 md:flex-row">
                            <a class="hover:text-cyan-400" href="projects/bmi.aspx">
                                <div class="text-xl font-semibold">
                                    <%= (Request.QueryString["lang"]=="fa" ) ? "ماشین حساب BMI" : "BMI Calculator" %>
                                </div>
                            </a>
                        </div>
                        <p class="mt-3 text-gray-400">
                            <%= (Request.QueryString["lang"]=="fa" )
                                ? "این ماشین حساب BMI با HTML، CSS، جاوا اسکریپت و .NET ساخته شده است."
                                : "This BMI calculator, developed with HTML, CSS, JavaScript, and .NET, allows users to calculate their Body Mass Index."
                                %>
                        </p>
                    </div>
                </div>

                <!-- پروژه ۳ -->
                <div class="flex flex-col items-center gap-x-8 rounded-md bg-slate-800 p-3 md:flex-row">
                    <div class="shrink-0"><a href="web/index.html"><img class="h-36 w-36 hover:translate-y-1"
                                src="images_files/images-project-maps.png" alt="Project Maps" loading="lazy"></a></div>
                    <div>
                        <div class="flex flex-col items-center gap-y-2 md:flex-row"><a class="hover:text-cyan-400"
                                href="web/index.html">
                                <div class="text-xl font-semibold">Crypto Currency</div>
                            </a>
                            <div class="ml-3 flex flex-wrap gap-2">
                                <div class="rounded-md px-2 py-1 text-xs font-semibold bg-fuchsia-400 text-fuchsia-900">
                                    Astro.js</div>
                                <div class="rounded-md px-2 py-1 text-xs font-semibold bg-indigo-400 text-indigo-900">
                                    Bootstrap</div>
                                <div class="rounded-md px-2 py-1 text-xs font-semibold bg-rose-400 text-rose-900">
                                    TypeScript</div>
                            </div>
                        </div>
                        <p class="mt-3 text-gray-400">
                            <%= (Request.QueryString["lang"]=="fa" )
                                ? "نمونه‌کار شامل توسعه رابط کاربری واکنش‌گرا و امن برای پلتفرم‌های ارز دیجیتال، با تمرکز بر رابط‌های کاربرپسند و یکپارچگی بی‌نقص با بلاکچین."
                                : "Portfolio showcasing responsive, secure front-end development for cryptocurrency platforms, with a focus on user-friendly interfaces and seamless blockchain integration."
                                %>
                        </p>

                    </div>
                </div>

                <!-- پروژه ۴ -->
                <div class="flex flex-col items-center gap-x-8 rounded-md bg-slate-800 p-3 md:flex-row">
                    <div class="shrink-0"><a href="projects/Simple_authentication.aspx"><img
                                class="h-36 w-36 hover:translate-y-1" src="images_files/images-project-todo.png"
                                alt="Project Todo" loading="lazy"></a></div>
                    <div>
                        <div class="flex flex-col items-center gap-y-2 md:flex-row">
                            <a class="hover:text-cyan-400" href="projects/Simple_authentication.aspx">
                                <div class="text-xl font-semibold">
                                    <%= (Request.QueryString["lang"]=="fa" ) ? "سیستم احراز هویت ساده"
                                        : "Simple Authentication System" %>
                                </div>
                            </a>
                            <div class="ml-3 flex flex-wrap gap-2">
                                <div class="rounded-md px-2 py-1 text-xs font-semibold bg-blue-400 text-blue-900">
                                    ASP.NET
                                </div>
                                <div class="rounded-md px-2 py-1 text-xs font-semibold bg-green-400 text-green-900">
                                    C#</div>
                                <div class="rounded-md px-2 py-1 text-xs font-semibold bg-yellow-400 text-yellow-900">
                                    HTML/CSS</div>
                            </div>
                        </div>
                        <p class="mt-3 text-gray-400">
                            <%= (Request.QueryString["lang"]=="fa" )
                                ? "یک سیستم احراز هویت ساده که با ASP.NET و C# ساخته شده است. این سیستم شامل فرم ورود با اعتبارسنجی کاربر و نمایش پیام‌های مناسب می‌باشد."
                                : "A simple authentication system built with ASP.NET and C#. Features a login form with user validation and appropriate message display."
                                %>
                        </p>
                    </div>
                </div>

                <!-- پروژه ۵ -->
                <div class="flex flex-col items-center gap-x-8 rounded-md bg-slate-800 p-3 md:flex-row">
                    <div class="shrink-0"><a href="projects/Discount_calculation.aspx"><img
                                class="h-36 w-36 hover:translate-y-1" src="images_files/images-project-weather.png"
                                alt="Project Discount" loading="lazy"></a>
                    </div>
                    <div>
                        <div class="flex flex-col items-center gap-y-2 md:flex-row">
                            <a class="hover:text-cyan-400" href="projects/Discount_calculation.aspx">
                                <div class="text-xl font-semibold">
                                    <%= (Request.QueryString["lang"]=="fa" ) ? "محاسبه‌گر تخفیف" : "Discount Calculator"
                                        %>
                                </div>
                            </a>
                            <div class="ml-3 flex flex-wrap gap-2">
                                <div class="rounded-md px-2 py-1 text-xs font-semibold bg-blue-400 text-blue-900">
                                    ASP.NET</div>
                                <div class="rounded-md px-2 py-1 text-xs font-semibold bg-teal-400 text-teal-900">
                                    Tailwind</div>
                                <div class="rounded-md px-2 py-1 text-xs font-semibold bg-green-400 text-green-900">
                                    C#</div>
                            </div>
                        </div>
                        <p class="mt-3 text-gray-400">
                            <%= (Request.QueryString["lang"]=="fa" )
                                ? "یک برنامه کاربردی برای محاسبه تخفیف محصولات با قابلیت تنظیم درصد تخفیف دستی یا خودکار. این برنامه با ASP.NET و C# توسعه داده شده و دارای رابط کاربری زیبا و کاربرپسند است."
                                : "A practical application for calculating product discounts with manual or automatic discount percentage settings. Developed with ASP.NET and C#, featuring a beautiful and user-friendly interface."
                                %>
                        </p>
                    </div>
                </div>

                <!-- پروژه ۶ -->
                <div class="flex flex-col items-center gap-x-8 rounded-md bg-slate-800 p-3 md:flex-row">
                    <div class="shrink-0">
                        <a href="projects/Age_group.aspx">
                            <img class="h-36 w-36 hover:translate-y-1" src="images_files/6.png" alt="Project Age Group"
                                loading="lazy">
                        </a>
                    </div>
                    <div>
                        <div class="flex flex-col items-center gap-y-2 md:flex-row">
                            <a class="hover:text-cyan-400" href="projects/Age_group.aspx">
                                <div class="text-xl font-semibold">
                                    <%= (Request.QueryString["lang"]=="fa" ) ? "تعیین گروه سنی" : "Age Group Calculator"
                                        %>
                                </div>
                            </a>
                            <div class="ml-3 flex flex-wrap gap-2">
                                <div class="rounded-md px-2 py-1 text-xs font-semibold bg-purple-400 text-purple-900">
                                    Web Forms</div>
                                <div class="rounded-md px-2 py-1 text-xs font-semibold bg-orange-400 text-orange-900">
                                    JavaScript</div>
                                <div class="rounded-md px-2 py-1 text-xs font-semibold bg-teal-400 text-teal-900">
                                    Bootstrap</div>
                            </div>
                        </div>
                        <p class="mt-3 text-gray-400">
                            <%= (Request.QueryString["lang"]=="fa" )
                                ? "برنامه‌ای برای تعیین گروه سنی افراد (کودک، نوجوان، جوان، میانسال و سالمند) با ورودی سن. این برنامه شامل اعتبارسنجی ورودی و رابط کاربری ساده و کاربرپسند است."
                                : "An application for determining age groups (Child, Teen, Young, Middle-aged, and Elderly) based on age input. Features input validation and a simple, user-friendly interface."
                                %>
                        </p>
                    </div>
                </div>

                <!-- پروژه ۷ -->
                <div class="flex flex-col items-center gap-x-8 rounded-md bg-slate-800 p-3 md:flex-row">
                    <div class="shrink-0">
                        <a href="projects/Rank_calculation.aspx">
                            <img class="h-36 w-36 hover:translate-y-1" src="images_files/7.png"
                                alt="Project Rank Calculator" loading="lazy">
                        </a>
                    </div>
                    <div>
                        <div class="flex flex-col items-center gap-y-2 md:flex-row">
                            <a class="hover:text-cyan-400" href="projects/Rank_calculation.aspx">
                                <div class="text-xl font-semibold">
                                    <%= (Request.QueryString["lang"]=="fa" ) ? "محاسبه رتبه دانش‌آموز"
                                        : "Student Rank Calculator" %>
                                </div>
                            </a>
                            <div class="ml-3 flex flex-wrap gap-2">
                                <div class="rounded-md px-2 py-1 text-xs font-semibold bg-pink-400 text-pink-900">Entity
                                    Framework</div>
                                <div class="rounded-md px-2 py-1 text-xs font-semibold bg-cyan-400 text-cyan-900">LINQ
                                </div>
                                <div class="rounded-md px-2 py-1 text-xs font-semibold bg-amber-400 text-amber-900">SQL
                                    Server</div>
                            </div>
                        </div>
                        <p class="mt-3 text-gray-400">
                            <%= (Request.QueryString["lang"]=="fa" )
                                ? "برنامه‌ای برای محاسبه و تعیین رتبه دانش‌آموزان بر اساس نمره آنها. این برنامه شامل اعتبارسنجی ورودی و نمایش رتبه‌های عالی، خوب، متوسط و ضعیف است."
                                : "An application for calculating and determining student ranks based on their scores. Features input validation and displays ranks as Excellent, Good, Average, and Poor."
                                %>
                        </p>
                    </div>
                </div>

                <!-- پروژه ۸ -->
                <div class="flex flex-col items-center gap-x-8 rounded-md bg-slate-800 p-3 md:flex-row">
                    <div class="shrink-0">
                        <a href="projects/Password_Validation.aspx">
                            <img class="h-36 w-36 hover:translate-y-1" src="images_files/8.png"
                                alt="Project Password Validation" loading="lazy">
                        </a>
                    </div>
                    <div>
                        <div class="flex flex-col items-center gap-y-2 md:flex-row">
                            <a class="hover:text-cyan-400" href="projects/Password_Validation.aspx">
                                <div class="text-xl font-semibold">
                                    <%= (Request.QueryString["lang"]=="fa" ) ? "اعتبارسنجی رمز عبور"
                                        : "Password Validation" %>
                                </div>
                            </a>
                            <div class="ml-3 flex flex-wrap gap-2">
                                <div class="rounded-md px-2 py-1 text-xs font-semibold bg-red-400 text-red-900">Regular
                                    Expressions</div>
                                <div class="rounded-md px-2 py-1 text-xs font-semibold bg-emerald-400 text-emerald-900">
                                    jQuery</div>
                                <div class="rounded-md px-2 py-1 text-xs font-semibold bg-violet-400 text-violet-900">
                                    Ajax</div>
                            </div>
                        </div>
                        <p class="mt-3 text-gray-400">
                            <%= (Request.QueryString["lang"]=="fa" )
                                ? "سیستم اعتبارسنجی رمز عبور که قدرت رمز را بر اساس معیارهای امنیتی مانند طول، حروف بزرگ، اعداد و کاراکترهای خاص بررسی می‌کند."
                                : "Password validation system that checks password strength based on security criteria such as length, uppercase letters, numbers, and special characters."
                                %>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </body>

    </html>