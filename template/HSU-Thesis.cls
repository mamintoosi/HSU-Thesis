% !TEX TS-program = XeLaTeX
% !TeX root=main.tex
%%
%%  This is file `HSU-Thesis.cls',
%%	by: Mahmood Amintoosi, m.amintoosi@gmail.com
%%  		http://profs.hsu.ac.ir/mamintoosi
%%  		http://www.parsilatex.com
%%	Ver 1.6, Jan 2022
%%   ____________________________________________________________________

%        تغییرات:
% نسخه ۱.۶: انتقال لوگوی دانشگاه در صفحه چکیده لاتین به سمت چپ
% نسخه ۱.۵: اضافه کردن امکان ثبت پایان‌نامه بدون گرایش
% نسخه ۱.۴: اضافه کردن بسم الله الرحمن الرحیم به صفحه اول، پایینتر بردن محتویات صفحه آخر به خاطر همترازی با صفحه اول، اصلاح مشکل عدم درج فهرست الگوریتم ها، جابجایی صفحات فهرست جداول و فهرست تصاویر
% نسخه ۱.۲۳: اجرای نمایه
% نسخه ۱.۲۲: انتقال دستورات تنظیم جهت پانویس مانند setRTLparagraphfootnotes از فایلها به فایل main. اضافه کردن بخش فهرست فیلدهای قابل پر شدن به عنوان مشخصات پایان نامه
% نسخه ۱.۲۱: رفع خطای ایجاد شده در تک‌لایو ۲۰۱۵
% نسخه ۱.۲: اصلاح دستور نمایه، رفع خطای حالت نداشتن مشاور در صفحه صورتجلسه، حذف سطرهای مرتبط با مشاور از چکیده فارسی و انگلیسی در صورت نداشتن مشاور، این نسخه با تک‌لایو ۲۰۱۵ مشکل دارد.
%		نسخه ۱.۱: اصلاح تنظیمات درج کد به منظور نمایش کلمه «برنامه» در عنوان برنامه‌ها، انتقال عنوان به بالای کد، درنظرگرفتن حالت پیش‌نویس برای درج کد، ادغام پیوست‌ها، حذف برخی تصاویر و کاهش تعداد کل فایلها به ۲۵ عدد
%        نسخه ۱: تمیزکاری کدها، اضافه کردن متن راهنما، رفع اشکل شماره ردیف راهنمای دوم. تایید آقای دولت‌آبادی
% نسخه ۰.۹۹: تغییر عنوان مراجع به فهرست منابع، عدم نمایش بخشهای پیوست‌ها در فهرست مطالب، ادغام صفحات تقدیم و قدردانی، اضافه کردن فایلهای pgfornament برای تزیینات صفحه تقدیم و قدردانی 
% نسخه ۰.۹۸: اضافه کردن todonotes، تغییر اساتید به استادان
% نسخه ۰.۹۷: اضافه کردن حالت نسخه پیش‌نویس، تغییر قلم به IRLotusICEE، اصلاح بیشتر نیم‌فاصله‌ها، خودکارسازی درج مشخصات جدول صورتجلسه دفاع، اضافه کردن داور، نماینده تحصیلات تکمیلی، اصلاح عنوان مقطع در دوره،  کارشناسی، اصلاحاتی در صفحات چکیده فارسی و انگلیسی، تغییرات بسیار در استیل و فایل مشخصات
% نسخه ۰.۹۵: تغییرات متعدد برای هم‌خوانی با قوانین کتابخانه منجمله صفحه صورتجلسه، سوگندنامه، جابجایی صفحه چکیده و ...
% نسخه ۰.۹۴: افقی کردن زیرنویسها، صفحه چکیده، صفحه یک فرضی
% نسخه ۰.۹۳: شروع شمارنده زیرنویسها در هر صفحه از یک
%	نسخه ۰.۹۲: تغییرات مختلف: شماره‌گذاری ابجد، آرم انگلیسی، صفحه چکیده انگلیسی، مراجع به ترتیب وقوع،‌ ...
%	نسخه ۰.۹۱: اضافه کردن پیشگفتار،  مشکل رنگ کد برنامه
%	   نسخه ۰.۹:رفع اشکالات متعدد، شماره صفحات ابجد، شماره صفحات عددی، بسم الله الرحمن الرحیم، رفع مشکل تورفتگی شماره بخشها و عناوین آنها در فهرست و ...
%	   نسخه ۰.۸۲: اضافه کردن صفحه چکیده مطابق فرم تحصیلات تکمیلی
%	   نسخه ۰.۸۱: دوستونه کردن زیرنویسها،  استفاده از قلمهای IR
%	   نسخه ۰.۸: تغییرات مختصر و استفاده از قلمهای سری HM
%	   نسخه ۰.۷:  اضافه کردن listings برای درج کد
%        نسخه ۰.۶۲: اصلاح chapter1 در main
%        نسخه ۰.۶۱: درج کد لازم برای تبدیل آ به الف در commands
%        نسخه ۰.۶۰: اصلاح مشکل با بسته subfig 
%%   ____________________________________________________________________

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{HSU-Thesis}
              [2016/08/07 v1.5
 Persian thesis document class in XeLaTeX for projects/theses/dissertations of Hakim Sabzevari University]
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ProcessOptions
\LoadClass[dvipsnames,a4paper,12pt]{book}
% جهت برطرف شدن خطای مندرج در  http://qa.parsilatex.com/7732
\RequirePackage{etex}
\reserveinserts{30}

\def\university#1{\gdef\@university{#1}}
%\def\department#1{\gdef\@department{#1}}
\def\degree#1{\gdef\@degree{#1}}
\def\thesisdate#1{\gdef\@thesisdate{#1}}
\newcommand{\firstsupervisor}[1]{\def\@firstsupervisor{#1}}
\newcommand{\secondsupervisor}[1]{\def\@secondsupervisor{#1}}
\newcommand{\firstadvisor}[1]{\def\@firstadvisor{#1}}
\newcommand{\secondadvisor}[1]{\def\@secondadvisor{#1}}
\newcommand{\firstReviewer}[1]{\def\@firstReviewer{#1}}
\newcommand{\secondReviewer}[1]{\def\@secondReviewer{#1}}
\newcommand{\thirdReviewer}[1]{\def\@thirdReviewer{#1}}
\newcommand{\representative}[1]{\def\@representative{#1}}
\newcommand{\departmentHead}[1]{\def\@departmentHead{#1}}
\def\name#1{\gdef\@name{#1}}
\def\surname#1{\gdef\@surname{#1}}
\def\keywords#1{\gdef\@keywords{#1}}
\def\faAbstract#1{\gdef\@faAbstract{#1}}
\def\faAcknowledgement#1{\gdef\@faAcknowledgement{#1}}
\def\faDedication#1{\gdef\@faDedication{#1}}
\def\faculty#1{\gdef\@faculty{#1}}
\def\subject#1{\gdef\@subject{#1}}
\def\field#1{\gdef\@field{#1}}
%\def\department#1{\gdef\@department{#1}}
\def\projectLabel#1{\gdef\@projectLabel{#1}}
\def\studentID#1{\gdef\@studentID{#1}}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\def\latintitle#1{\gdef\@latintitle{#1}}
\def\latinauthor#1{\gdef\@latinauthor{#1}}
\def\latindegree#1{\gdef\@latindegree{#1}}
\def\latinfaculty#1{\gdef\@latinfaculty{#1}}
\def\latinthesisdate#1{\gdef\@latinthesisdate{#1}}
\def\latinsubject#1{\gdef\@latinsubject{#1}}
\def\latinfield#1{\gdef\@latinfield{#1}}
\def\firstlatinsupervisor#1{\gdef\@firstlatinsupervisor{#1}}
\def\secondlatinsupervisor#1{\gdef\@secondlatinsupervisor{#1}}
\def\firstlatinadvisor#1{\gdef\@firstlatinadvisor{#1}}
\def\secondlatinadvisor#1{\gdef\@secondlatinadvisor{#1}}
\def\latinname#1{\gdef\@latinname{#1}}
\def\latinsurname#1{\gdef\@latinsurname{#1}}
\def\en-abstract#1{\gdef\@en-abstract{#1}}
\def\latinkeywords#1{\gdef\@latinkeywords{#1}}
\def\latinuniversity#1{\gdef\@latinuniversity{#1}}
%\def\And{&\xspace}
%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newif\if@bscthesis
\@bscthesisfalse
\DeclareOption{bsc}{\@bscthesistrue}
\newif\if@mscthesis
\@mscthesisfalse
\DeclareOption{msc}{\@mscthesistrue}
\ProcessOptions

\ifx\@projectLabel\undefined%
{
    \if@mscthesis
        {\projectLabel{پایان‌نامه}}
    \else
         \if@bscthesis
            {\projectLabel{پروژه }}
	 \else
	    {\projectLabel{رساله}}
	\fi
    \fi
}
\fi

\ifx\@degree\undefined%
{
    \if@mscthesis
        \degree{کارشناسی ارشد}
    \else
        \if@bscthesis
             \degree{کارشناسی}
        \else
             \degree{دکتری}
        \fi
    \fi
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\firstPage}
{
\pagestyle{empty}

\begin{titlepage}
\newpage
\vspace{-10mm}
\begin{center}
بسم الله الرحمن الرحیم
\end{center}
\centerline{{\includegraphics[width=3cm]{logo}}}
\par
\vspace{-5mm}
{\large\bfseries\@faculty}

\vskip 5mm
\if@bscthesis 
	{\large\bfseries{پروژه کارشناسی \@subject}
	\ifx\@field\undefined%
		\relax
	\else
		گرایش \@field
	\fi
	}
\else
	{\large\bfseries \@projectLabel\ \ \writtenfor
	\@degree{} 
	}
	{\large\bfseries{در رشته \@subject}}
	\ifx\@field\undefined%
		\relax
	\else
	{
		\vskip .2cm
		\centerline{\large \bfseries%
		گرایش \@field}
	}	
	\fi

\fi	
\vskip 15mm
\par
{\huge\titlefont \@title}\par
\vskip 15mm
\large
{
\ifx\@firstsupervisor\undefined%
	\ifx\@secondsupervisor\undefined%
	\else
	\fi
\else
  \ifx\@secondsupervisor\undefined%
استاد راهنما
    {\Large\bfseries\par
    \@firstsupervisor}
  \else
    \large
استادان راهنما
    \par
    {\Large\bfseries \@firstsupervisor{} و \@secondsupervisor}
  \fi
\fi
}
\par\large
{
\ifx\@firstadvisor\undefined%
    \ifx\@secondadvisor\undefined%
    \else
    \fi
\else
    \ifx\@secondadvisor\undefined%
استاد مشاور
        {\Large\bfseries\par
        \@firstadvisor}
    \else
        \large
استادان مشاور
        \par
        {\Large\bfseries\@firstadvisor{} و \@secondadvisor}
    \fi
\fi
}

\vskip 1cm
پژوهشگر:
\par
{\Large\bfseries{\large\bfseries   \@name\ \ \@surname}}

\par
\vskip 6mm
%\vfill
{\large \@thesisdate}
%\vfill
\end{titlepage}%
} % end of firstPage

\newcommand{\sogandPage}
{
\newpage
\begin{center}
\vspace{5mm}
\centerline{{\includegraphics[width=15mm]{logo}}}
{ \titlefont
سوگند نامه دانش آموختگان دانشگاه حکیم سبزواری
}
\vspace{5mm}

\begin{tabular}{lcr}
به نام خداوند جان و خرد          & &            کزین برتر اندیشه بر نگذرد
\end{tabular}
\end{center}

\vspace{5mm}
{\it
اینک که به خواست آفریدگار پاک، کوشش خویش و بهره گیری از دانش استادان و سرمایه‌های مادی و معنوی این مرز و بوم، توشه‌ای از دانش و خرد گردآورده‌ام، در پیشگاه خداوند بزرگ سوگند یاد می‌کنم که در به کارگیری دانش خویش، همواره بر راه راست ودرست گام بردارم. خداوند بزرگ، شما شاهدان، دانشجویان و دیگر حاضران را به عنوان داورانی امین گواه می گیرم که ازهمه دانش و توان خود برای گسترش مرزهای دانش بهره گیرم و از هیچ کوششی برای تبدیل جهان به جایی بهتر برای زیستن، دریغ نورزم. پیمان می‌بندم که همواره کرامت انسانی را در نظر داشته باشم و همنوعان خود را در هر زمان و مکان تا سر حد امکان یاری دهم. سوگند می خورم که در به کارگیری دانش خویش به کاری که با راه و رسم انسانی، آیین پرهیزگاری، شرافت و اصول اخلاقی برخاسته از ادیان بزرگ الهی، به ویژه دین مبین اسلام، مباینت دارد دست نیازم. همچنین در سایه اصول جهان شمول انسانی و اسلامی، پیمان می‌بندم از هیچ کوششی برای آبادانی و سرافرازی میهن و هم میهنانم فروگذاری نکنم و خداوند بزرگ را به یاری طلبم تا همواره در پیشگاه او و در برابر وجدان بیدار خویش و ملت سرافراز، بر این پیمان تا ابد استوار بمانم. 
}
\vspace{.5cm}
\begin{flushleft}
\begin{tabular}{lr}
نام و نام خانوادگی:   & 	\@name{} \@surname \\
 تاریخ و امضا: & \\
%تاریخ: & \@thesisdate \\
%امضا: & \\
\end{tabular}
\end{flushleft}
}% end of sogandPage

%% تاییدیه هیات داوران
\newcommand{\davaranPage}
{
\newpage
\small
%\singlespacing 
\onehalfspacing 
%\setcounter{page}{1}
%\thispagestyle{empty}
\begin{center}
\begin{tabular}{p{.2\textwidth}  c p{.2\textwidth}}
%\vspace{-20mm}
\pbox{16mm}{\includegraphics[width=15mm]{logo}}
&
\begin{tabular}[x]{@{}c@{}}{%\large
باسمه تعالی}\\
{%\large
فرم ارزشیابی و صورتجلسه دفاع از
 \@projectLabel{} \@degree
 }
\end{tabular}
&
\hfill فرم ۱۱۳-ت 
\end{tabular}
\end{center}

%\vspace{.5cm}
\noindent
 جلسه دفاع از 
\@projectLabel{}
   آقای /خانم                                  \textbf{\@name{} \@surname{}}
دانشجوی رشته   \@subject{}
	\ifx\@field\undefined%
		\relax
	\else
   	  گرایش  \@field{}
   	\fi
 به شماره دانشجویی   \@studentID{}
با عنوان:
\begin{center}
\textbf{\@title{}}
\end{center}
\noindent 
در مورخه   
\dots\dots\dots\dots\dots {}
                در 
\@faculty{}
تشکیل و توسط هیات داوران مورد ارزشیابی قرار گرفت و نمره  
 \dots\dots\dots {}
  برابر درجه  
   \dots\dots\dots {}
برای آن تعیین گردید .

\noindent 
به‌این ترتیب از این تاریخ آقای/ خانم
\@name{} \@surname{}                               به عنوان 
{\if@mscthesis
{کارشناس ارشد}
\else
   \if@bscthesis
{کارشناس}
   \else
{دکتر}
   \fi
\fi
}
 در رشته مذکور شناخته می‌شود .
 
\vspace{5mm} 
\includegraphics[width=1\linewidth]{jadvalForm113t.pdf}

\newcounter{radif}
\doublespacing 
\begin{center}
مشخصات هیات دوران 

\scalebox{0.75}{
\input{davaranJadval.tex}
}

\begin{tabular}{ p{.2\textwidth} p{.2\textwidth} p{.2\textwidth} p{.2\textwidth}}
امضا & & & امضا \\
مدیر گروه &  & & رئیس دانشکده
\end{tabular}
\end{center}

} % end of davaranPage

% تأییدیه‌ی صحت و اصالت نتایج
\newcommand{\esalatPage}
{
\newpage
%\thispagestyle{empty}
\begin{center}
{\large \titlefont
تأییدیه‌ی صحت و اصالت نتایج \\
}
\vspace{.5cm}
باسمه تعالی 
\vspace{.5cm}
\end{center}
\doublespacing 
{\iranicfamily
اینجانب 
\textbf{\@name \ \@surname} \ 
به شماره دانشجویی 
\@studentID {}
دانشجوی رشته 
\@subject {}
مقطع تحصیلی 
\@degree {}
تأیید می‌نمایم که کلیه‌ی نتایج این \@projectLabel{} حاصل کار اینجانب و بدون هرگونه دخل و تصرف است و موارد نسخه برداری شده از آثار دیگران را با ذکر کامل مشخصات منبع ذکر کرده‌ام. درصورت اثبات خلاف مندرجات فوق، به تشخیص دانشگاه مطابق با ضوابط و مقررات حاکم ( قانون حمایت از حقوق مؤلفان و مصنفان و قانون ترجمه و تکثیر کتب و نشریات و آثار صوتی، ضوابط و مقررات آموزشی، پژوهشی و انضباطی ... ) با اینجانب رفتار خواهد شد و حق هرگونه اعتراض درخصوص احقاق حقوق مکتسب و تشخیص و تعیین تخلف و مجازات را از خویش سلب می‌نمایم. در ضمن، مسؤولیت هرگونه پاسخگویی به اشخاص اعم از حقیقی و حقوقی و مراجع ذی صلاح (اعم از اداری و قضایی) به عهده ی اینجانب خواهد بود و دانشگاه هیچ گونه مسؤولیتی در این خصوص نخواهد داشت.
}
\vspace{.5cm}
\begin{flushleft}
\begin{tabular}{lr}
نام و نام خانوادگی:   & 	\@name{} \@surname \\
 تاریخ و امضا: & \\
\end{tabular}
\end{flushleft}
} % end of esalatPage

% مجوز بهره برداری از پایان‌نامه
\newcommand{\mojavezPage}
{
\newpage
%\thispagestyle{empty}
\begin{center}
{\large \titlefont
مجوز بهره برداری از پایان‌نامه \\
 }
\vspace{.5cm}
\end{center}
\doublespacing 

بهره برداری از این پایان‌نامه در چهارچوب مقررات کتابخانه و با توجه به محدودیتی که توسط استاد راهنما به شرح زیر تعیین می‌شود، بلامانع است:

\noindent$\Box$ بهره برداری از این پایان‌نامه برای همگان بلامانع است.\\
$\Box$ بهره برداری از این پایان‌نامه با اخذ مجوز از استاد راهنما، بلامانع است.\\
$\Box$ بهره برداری از این پایان‌نامه تا تاریخ .................................... ممنوع است.\\

\vspace{.5cm}
\begin{flushleft}
\begin{tabular}{l p{.25\textwidth}}
% چون & در ماکروی داخل جدول مشکل ایجاد می کرد مجبور شدم دو تیکه بنویسم
\ifx\@firstsupervisor\undefined%
	\relax
\else
	\ifx\@secondsupervisor\undefined%
		استاد راهنما:
	\else
		استادان راهنما: 
	\fi
\fi
&
\ifx\@firstsupervisor\undefined%
	\relax
\else
	\ifx\@secondsupervisor\undefined%
		\@firstsupervisor
	\else
		\@firstsupervisor{} \newline \@secondsupervisor
	\fi
\fi \\
  تاریخ و امضا: & \\
\end{tabular}
\end{flushleft}
} % end of mojavezPage


% بخش تقدیم
\newcommand{\taghdimPage}
{
\ifx\@faDedication\undefined%
    \relax
\else
    \newpage
    \thispagestyle{empty}
    \pgfornament[width=5cm]{61}
    \vspace{-40mm}
    \@faDedication
\fi
}

% بخش سپاس‌گزاری
\newcommand{\ghadrdaniPage}
{
\ifx\@faAcknowledgement\undefined%
	\relax
\else
   \ifx\@faDedication\undefined%
      \newpage
      \thispagestyle{empty}
      \pgfornament[width=5cm]{61}
      \vspace{-20mm}
      \begin{center}\Large \bfseries سپاس‌گزاری \end{center}
   \else
        \vspace{5mm}
	\begin{center}\pgfornament[width=5cm]{84} \end{center}
   \fi
  \vspace{5mm}
  \@faAcknowledgement
% با استفاده از دستور زیر، امضای شما، به طور خودکار، درج می‌شود.
  \signature 
\fi
}

\newcommand{\sepasPage}
{
\taghdimPage
\ghadrdaniPage
}

\newcommand{\abstractPage}{
\addcontentsline{toc}{chapter}{چکیده}
\begin{center}
\begin{tabularx}{1.05\textwidth}{||X|X|X||}
\hhline{|t:==t:=:t|}
\multicolumn{2}{||c}{
\begin{tabular}[x]{@{}c@{}}\large فرم چکیده ی پایان‌نامه ی دوره ی تحصیلات تکمیلی \\
مدیریت تحصیلات تکمیلی\end{tabular}
}&
\multicolumn{1}{l||}{\pbox{20mm}{\vspace{2mm}\includegraphics[width=.15\textwidth]{logo}}}
   \\
\hhline{|:==|=:|}
نام خانوادگی دانشجو:\@surname  &
  نام:\@name  & 
    ش. دانشجویی:\@studentID \\ 
\hhline{||--|-||}
\multicolumn{3}{||r||}
{
\ifx\@firstsupervisor\undefined%
    \ifx\@secondsupervisor\undefined%
    \else
    \fi
\else
    \ifx\@secondsupervisor\undefined%
{استاد راهنما: \@firstsupervisor}
    \else
{استادان راهنما: \@firstsupervisor{} و \@secondsupervisor}
    \fi
\fi}
\\
\ifx\@firstadvisor\undefined%
    \ifx\@secondadvisor\undefined%
    \else
    \fi
\else
   \hhline{||--|-||}  
   \multicolumn{3}{||r||}
   {
    \ifx\@secondadvisor\undefined%
{استاد مشاور: \@firstadvisor}
    \else
{استادان مشاور: \@firstadvisor{} و \@secondadvisor}
    \fi
   }
    \\
\fi
\hhline{||--|-||}
\@faculty & 
	   	  رشته:
	   	{\small \@subject } &
	\ifx\@field\undefined%
		\relax
	\else
	{ 
	   گرایش:
	   {\small \@field }
	}		
	\fi
	\\
%	\ifx\@field\undefined%
%	{% خطا از اینجاست.
%	   \multicolumn{2}{|r||}
%	   {
%	   	  رشته: \@subject 
%	   }
%	}
%	\else
%	{
%	  رشته: \@subject
%	  & % به خاطر این  &
%	   گرایش:\@field 
%	}		
%	\fi
%	\\
\hhline{||--|-||}
مقطع:
\if@bscthesis
	کارشناسی
\else
	\if@mscthesis
		کارشناسی ارشد
	\else
		دکتری
	\fi
\fi 
&
 تاریخ دفاع:\@thesisdate & 
تعداد صفحات:
 \pageref{LastPage}
\\
\hhline{||--|-||}    
\multicolumn{3}{||r||}{\pbox{\textwidth}{عنوان پایان‌نامه: \@title }}  \\
\hhline{||--|-||}
\multicolumn{3}{||r||}{\pbox{\textwidth}{کلید واژه‌ها:\@keywords}}  \\
\hhline{||--|-||}
\multicolumn{3}{||r||}{\pbox{\textwidth}{\vspace{3mm} چکیده: \@faAbstract} }  \\
\multicolumn{3}{||l||}{}  \\
\hhline{|b:==b:=:b|}
\end{tabularx}
\end{center}
}



\def\titlepage{\newpage\centering
\thispagestyle{empty}
\parindent 0pt \parskip 10pt plus 1fil minus 1fil
\def\baselinestretch{1}\@normalsize\vbox to \vsize\bgroup\vbox to 9in\bgroup}
\def\endtitlepage{\par\kern 0pt\egroup\vss\egroup\newpage}

\def\signature{\vspace{1cm}
\begin{flushleft}
{\@name\ \@surname \\
\@thesisdate}
\end{flushleft}}

% \def\abstract{
% \newpage
% \subsection*{چکیده}\small
% \@normalsize
% \@faAbstract
% }
% \def\endabstract{\par}

%\pagenumbering{harfi}
%\let\ol@chapter\@chapter
%\def\@chapter{%
%  \ifnum\c@chapter=0 \pagenumbering{arabic}\setcounter{page}{1}\fi
%  \ol@chapter}



%\font\latintitlefont=cmssbx10 scaled 2300 %cmssbx10 scaled 2300
\font\supervisorfont=cmbxti10

\newcommand{\enAbstractPage}{
\thispagestyle{empty}
\begin{latin}
\begin{center}
\begin{tabularx}{1.05\textwidth}{||X|X|X||}
\hhline{|t:==t:=:t|}
\multicolumn{1}{||l}{\pbox{10cm}{\vspace{2mm}\includegraphics[width=.15\textwidth]{logo}}\hfill}
&
\multicolumn{2}{c||}{
\begin{tabular}[x]{@{}c@{}}\large Hakim Sabzevari University \\
An Outline of 
\if@bscthesis
	Bachelor of Science Project
\else
	\if@mscthesis
		MSc.
	\else
		Ph.D.
	\fi
	 Thesis
\fi 
\end{tabular}
}
   \\
\hhline{|:==|=:|}
Surname:\@latinsurname &
Name:\@latinname  & 
Student No.:\@studentID \\ 
\hhline{||--|-||}
\multicolumn{3}{||l||}
{
\ifx\@firstlatinsupervisor\undefined%
	\ifx\@secondlatinsupervisor\undefined%
	\else
	\fi
\else
	\ifx\@secondlatinsupervisor\undefined%
		{Supervisor: \@firstlatinsupervisor}
	\else
		{Supervisors: \@firstlatinsupervisor{} and \@secondlatinsupervisor}
	\fi
\fi
}
\\
 \ifx\@firstlatinadvisor\undefined%
	\ifx\@secondlatinadvisor\undefined%
	\else\fi
\else
	\hhline{||--|-||}  
	\multicolumn{3}{||l||}
	 {
	\ifx\@secondlatinadvisor\undefined%
		{Advisor: \@firstlatinadvisor}
	\else
		{Advisors: \@firstlatinadvisor{} and \@secondlatinadvisor}
	\fi
	}
	\\
\fi
\hhline{||--|-||}
%\vspace{-1mm} 
%\@latinfaculty & \pbox{.3\textwidth}{%\vspace{2mm} 
%\@latinsubject} & 
%\pbox{.3\textwidth}
%{%\vspace{2mm} Field of study:\\
%\ifx\@latinfield\undefined
%\relax
%\else
%\@latinfield
%\fi
%} \\
\multicolumn{3}{||l||}{\@latinfaculty}\\
\hhline{||--|-||}
\multicolumn{3}{||l||}{Program: \small\@latinsubject
	\ifx\@latinfield\undefined%
		\relax
	\else%
	    \quad 
	    Field:\@latinfield %
	\fi
}\\
\hhline{||--|-||}
%\ifx\@latinfield\undefined%
%	\relax%
%\else	
%	\multicolumn{3}{||l||}{Field of study :\@latinfield}
%\\
%	\hhline{||--|-||}
%\fi	
% \if@mscthesis
%Master of Science
%\else
%Doctor of Philosophy
%\fi
%&
% تاریخ دفاع:\@thesisdate & 
%تعداد صفحات: \pageref{LastPage}
%\\
%\hhline{||--|-||}    
\multicolumn{3}{||l||}{\pbox{\textwidth}{Title of thesis: \@latintitle }}  \\
\hhline{||--|-||}
\multicolumn{3}{||l||}{\pbox{\textwidth}{Keywords:\@latinkeywords}}  \\
\hhline{||--|-||}
\multicolumn{3}{||l||}{\pbox{\textwidth}{\vspace{3mm} Abstract: \@en-abstract}}  \\
\multicolumn{3}{||l||}{}  \\
\hhline{|b:==b:=:b|}
\end{tabularx}
\end{center}
\end{latin}
}


\newcommand{\latinfirstPage}{%
\ifdraft{}{
\enAbstractPage
}
\begin{titlepage}
\vspace{10mm}
\centerline{\includegraphics[width=3cm]{logo}}
\centerline{\large\bf \@latinuniversity} 
\large\bfseries
\@latinfaculty\space 
\vskip 1cm
{
\large
\if@bscthesis 
    Bachelor of Science Project
	in  \@latinsubject 
\else
	A Thesis Submitted in Partial Fulfilment of the Requirement for the Degree of 
	 \if@mscthesis
	Master of Science
	\else
	 Doctor of Philosophy
	\fi
	in  \@latinsubject 
	%\baselineskip=.750cm
	%\addtolength{\baselineskip}{-5mm}
\fi
}
\vskip 15mm
{%\latintitlefont 
\Huge
\@latintitle}
%\baselineskip=.750cm \par
\vskip 15mm

\large
{
\ifx\@firstlatinsupervisor\undefined%
	\ifx\@secondlatinsupervisor\undefined%
	\else\fi
\else
	\ifx\@secondlatinsupervisor\undefined%
		Supervisor:
		{\Large\bfseries\par
		\@firstlatinsupervisor}
	\else
		\large
		Supervisors:
		\par
		{\Large\bfseries \@firstlatinsupervisor{} and \@secondlatinsupervisor}
		\fi
\fi
}
\par
\large
{
\ifx\@firstlatinadvisor\undefined%
	\ifx\@secondlatinadvisor\undefined%
	\else\fi
\else
	\vskip 5mm
	\ifx\@secondlatinadvisor\undefined%
		Advisor:
		{\Large\bfseries\par
		\@firstlatinadvisor}
	\else
		\large
		Advisors:
		\par
		{\Large\bfseries\@firstlatinadvisor{} and \@secondlatinadvisor}
	\fi
\fi
}
\vskip 15mm

{\bfseries\latinby}\par
{\large %\supervisorfont
\rm\@latinname \; \@latinsurname}\par
\par
\vskip 1cm
{\@latinthesisdate}
\par
\vskip 1cm
\par
\vfill
%
\end{titlepage}
\fi}

\def\onvan{عنوان}
\def\writtenfor{برای دریافت درجه }
\def\by{پژوهشگر}
\def\latinby{By:}
\def\cleardoublepage{\clearpage\if@twoside \ifodd\c@page\else
\hbox{}
\thispagestyle{empty}
\newpage
\if@twocolumn\hbox{}\newpage\fi\fi\fi}

%% 
%% Copyright © 2014-2016      by M.Amintoosi
%% 
%% Distributable under the LaTeX Project Public License,
%% version 1.3c or higher (your choice). The latest version of
%% this license is at: http://www.latex-project.org/lppl.txt
%% 
%% This work is "maintained" (as per LPPL maintenance status)
%%  by M.Amintoosi
%% 
%%  It is a based on Tabriz_thesis of Vahid Damanafshan,
%%    which was based on xepersian-thesis.cls by Vafa Khalighi
%%   ____________________________________________________________________
%% Special thanks to Vafa Khalighi for the XePersian Package.
%% This work is supported by Hakim Sabzevari University.
%% End of file `HSU-Thesis.cls'.
