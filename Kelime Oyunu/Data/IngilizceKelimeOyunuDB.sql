USE [master]
GO
/****** Object:  Database [IngilizceKelimeOyunuDB]    Script Date: 26.07.2024 21:52:51 ******/
CREATE DATABASE [IngilizceKelimeOyunuDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'IngilizceKelimeOyunuDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\IngilizceKelimeOyunuDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'IngilizceKelimeOyunuDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\IngilizceKelimeOyunuDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [IngilizceKelimeOyunuDB] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [IngilizceKelimeOyunuDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [IngilizceKelimeOyunuDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [IngilizceKelimeOyunuDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [IngilizceKelimeOyunuDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [IngilizceKelimeOyunuDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [IngilizceKelimeOyunuDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [IngilizceKelimeOyunuDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [IngilizceKelimeOyunuDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [IngilizceKelimeOyunuDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [IngilizceKelimeOyunuDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [IngilizceKelimeOyunuDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [IngilizceKelimeOyunuDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [IngilizceKelimeOyunuDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [IngilizceKelimeOyunuDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [IngilizceKelimeOyunuDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [IngilizceKelimeOyunuDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [IngilizceKelimeOyunuDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [IngilizceKelimeOyunuDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [IngilizceKelimeOyunuDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [IngilizceKelimeOyunuDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [IngilizceKelimeOyunuDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [IngilizceKelimeOyunuDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [IngilizceKelimeOyunuDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [IngilizceKelimeOyunuDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [IngilizceKelimeOyunuDB] SET  MULTI_USER 
GO
ALTER DATABASE [IngilizceKelimeOyunuDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [IngilizceKelimeOyunuDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [IngilizceKelimeOyunuDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [IngilizceKelimeOyunuDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [IngilizceKelimeOyunuDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [IngilizceKelimeOyunuDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [IngilizceKelimeOyunuDB] SET QUERY_STORE = ON
GO
ALTER DATABASE [IngilizceKelimeOyunuDB] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [IngilizceKelimeOyunuDB]
GO
/****** Object:  Table [dbo].[Kelime]    Script Date: 26.07.2024 21:52:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kelime](
	[kelimeID] [int] IDENTITY(1,1) NOT NULL,
	[kelime] [nvarchar](50) NULL,
	[anlami] [nvarchar](50) NULL,
	[resim] [nvarchar](200) NULL,
	[ornekCumle] [nvarchar](200) NULL,
	[ornekCumleAnlami] [nvarchar](200) NULL,
	[seviyeID] [int] NULL,
 CONSTRAINT [PK_Kelime] PRIMARY KEY CLUSTERED 
(
	[kelimeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kullanici]    Script Date: 26.07.2024 21:52:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kullanici](
	[kullaniciID] [int] IDENTITY(1,1) NOT NULL,
	[ad] [nvarchar](50) NULL,
	[soyad] [nvarchar](50) NULL,
	[eposta] [nvarchar](50) NULL,
	[sifre] [nvarchar](10) NULL,
	[yetkiID] [int] NULL,
 CONSTRAINT [PK_Kullanici] PRIMARY KEY CLUSTERED 
(
	[kullaniciID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KullaniciIlerleme]    Script Date: 26.07.2024 21:52:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KullaniciIlerleme](
	[kullaniciIlerlemeID] [int] IDENTITY(1,1) NOT NULL,
	[seviyeID] [int] NULL,
	[puan] [int] NULL,
 CONSTRAINT [PK_KullaniciIlerleme] PRIMARY KEY CLUSTERED 
(
	[kullaniciIlerlemeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Seviye]    Script Date: 26.07.2024 21:52:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Seviye](
	[seviyeID] [int] IDENTITY(1,1) NOT NULL,
	[seviye] [nvarchar](50) NULL,
 CONSTRAINT [PK_Seviye] PRIMARY KEY CLUSTERED 
(
	[seviyeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Yetki]    Script Date: 26.07.2024 21:52:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Yetki](
	[yetkiID] [int] IDENTITY(1,1) NOT NULL,
	[yetki] [nvarchar](50) NULL,
 CONSTRAINT [PK_Yetki] PRIMARY KEY CLUSTERED 
(
	[yetkiID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Kelime] ON 

INSERT [dbo].[Kelime] ([kelimeID], [kelime], [anlami], [resim], [ornekCumle], [ornekCumleAnlami], [seviyeID]) VALUES (1, N'Add', N'Eklemek', N'C:\Users\nesli\OneDrive\Masaüstü\3k_kelime_görsel\3k_kelime_görsel\add.png', N'Please add some sugar to my tea.', N'Lütfen çayıma biraz şeker eklermisin', 1)
INSERT [dbo].[Kelime] ([kelimeID], [kelime], [anlami], [resim], [ornekCumle], [ornekCumleAnlami], [seviyeID]) VALUES (2, N'Amazing', N'Muhteşem', N'C:\Users\nesli\OneDrive\Masaüstü\3k_kelime_görsel\3k_kelime_görsel\amazing.jpg', N'You soo amazing', N'Sen çok muhteşem', 1)
INSERT [dbo].[Kelime] ([kelimeID], [kelime], [anlami], [resim], [ornekCumle], [ornekCumleAnlami], [seviyeID]) VALUES (3, N'Ball', N'Top', N'C:\Users\nesli\OneDrive\Masaüstü\3k_kelime_görsel\3k_kelime_görsel\ball.jpg', N'She caught the ball with one hand.', N'Topu tek eliyle yakaladı.', 1)
INSERT [dbo].[Kelime] ([kelimeID], [kelime], [anlami], [resim], [ornekCumle], [ornekCumleAnlami], [seviyeID]) VALUES (4, N'Art', N'Sanat', N'C:\Users\nesli\OneDrive\Masaüstü\3k_kelime_görsel\3k_kelime_görsel\art.jpg', N'I like your art', N'Senin sanatını beğeniyorum', 1)
INSERT [dbo].[Kelime] ([kelimeID], [kelime], [anlami], [resim], [ornekCumle], [ornekCumleAnlami], [seviyeID]) VALUES (5, N'Cat', N'Kedi', N'C:\Users\nesli\OneDrive\Masaüstü\3k_kelime_görsel\3k_kelime_görsel\cat.jpg', N'Cats are very cute', N'Kediler çok sevimlidir', 1)
INSERT [dbo].[Kelime] ([kelimeID], [kelime], [anlami], [resim], [ornekCumle], [ornekCumleAnlami], [seviyeID]) VALUES (6, N'Address', N'Adres', N'C:\Users\nesli\OneDrive\Masaüstü\3k_kelime_görsel\3k_kelime_görsel\address.png', N'What is your home address?', N'Evinin adresi ne?', 1)
INSERT [dbo].[Kelime] ([kelimeID], [kelime], [anlami], [resim], [ornekCumle], [ornekCumleAnlami], [seviyeID]) VALUES (7, N'Air', N'Hava', N'C:\Users\nesli\OneDrive\Masaüstü\3k_kelime_görsel\3k_kelime_görsel\air.jpg', N'The air is very bad today', N'Bugün hava çok kötü', 1)
INSERT [dbo].[Kelime] ([kelimeID], [kelime], [anlami], [resim], [ornekCumle], [ornekCumleAnlami], [seviyeID]) VALUES (8, N'Breakfast', N'Kahvaltı', N'C:\Users\nesli\OneDrive\Masaüstü\3k_kelime_görsel\3k_kelime_görsel\breakfast.jpg', N'I like breakfast', N'Kahvaltıyı severim', 1)
INSERT [dbo].[Kelime] ([kelimeID], [kelime], [anlami], [resim], [ornekCumle], [ornekCumleAnlami], [seviyeID]) VALUES (9, N'After', N'Sonra', N'C:\Users\nesli\OneDrive\Masaüstü\3k_kelime_görsel\3k_kelime_görsel\after.jpg', N'We play after dinner', N'Akşam yemeğinden sonra oynarız', 1)
INSERT [dbo].[Kelime] ([kelimeID], [kelime], [anlami], [resim], [ornekCumle], [ornekCumleAnlami], [seviyeID]) VALUES (10, N'About', N'Hakkında', N'C:\Users\nesli\OneDrive\Masaüstü\3k_kelime_görsel\3k_kelime_görsel\abaout.png', N'I know a lot about', N'Hakkında çok şey billiyorum', 1)
INSERT [dbo].[Kelime] ([kelimeID], [kelime], [anlami], [resim], [ornekCumle], [ornekCumleAnlami], [seviyeID]) VALUES (11, N'Action', N'Aksiyon', N'C:\Users\nesli\OneDrive\Masaüstü\3k_kelime_görsel\3k_kelime_görsel\action.jpg', N'I love action movies', N'Aksiyon filmlerini seviyorum', 1)
INSERT [dbo].[Kelime] ([kelimeID], [kelime], [anlami], [resim], [ornekCumle], [ornekCumleAnlami], [seviyeID]) VALUES (12, N'Activity', N'Aktivite', N'C:\Users\nesli\OneDrive\Masaüstü\3k_kelime_görsel\3k_kelime_görsel\activity.png', N'Let''s do an activity together', N'Hadi birlikte aktivite yapalım', 1)
INSERT [dbo].[Kelime] ([kelimeID], [kelime], [anlami], [resim], [ornekCumle], [ornekCumleAnlami], [seviyeID]) VALUES (13, N'Above', N'Üstünde', N'C:\Users\nesli\OneDrive\Masaüstü\3k_kelime_görsel\3k_kelime_görsel\above.png', N'The stars were shining above us.', N'Yıldızlar üzerimizde parlıyordu.', 1)
INSERT [dbo].[Kelime] ([kelimeID], [kelime], [anlami], [resim], [ornekCumle], [ornekCumleAnlami], [seviyeID]) VALUES (14, N'Across', N'Karşısında', N'C:\Users\nesli\OneDrive\Masaüstü\3k_kelime_görsel\3k_kelime_görsel\across.jpg', N'The cat walked across the street.', N'Kedi sokağın karşısından geçti.', 1)
INSERT [dbo].[Kelime] ([kelimeID], [kelime], [anlami], [resim], [ornekCumle], [ornekCumleAnlami], [seviyeID]) VALUES (15, N'Actress', N'Kadın Oyuncu', N'C:\Users\nesli\OneDrive\Masaüstü\3k_kelime_görsel\3k_kelime_görsel\actress.jpg', N'She is a good actress', N'O iyi bir kadın oyuncu', 1)
INSERT [dbo].[Kelime] ([kelimeID], [kelime], [anlami], [resim], [ornekCumle], [ornekCumleAnlami], [seviyeID]) VALUES (16, N'Actor', N'Erkek Oyuncu', N'C:\Users\nesli\OneDrive\Masaüstü\3k_kelime_görsel\3k_kelime_görsel\actor.jpg', N'He is a bad actor', N'O kötü bir aktör', 1)
INSERT [dbo].[Kelime] ([kelimeID], [kelime], [anlami], [resim], [ornekCumle], [ornekCumleAnlami], [seviyeID]) VALUES (17, N'Adult', N'Yetiskin', N'C:\Users\nesli\OneDrive\Masaüstü\3k_kelime_görsel\3k_kelime_görsel\adult.jpg', N'She is an adult.', N'O bir yetişkin.', 1)
INSERT [dbo].[Kelime] ([kelimeID], [kelime], [anlami], [resim], [ornekCumle], [ornekCumleAnlami], [seviyeID]) VALUES (18, N'Advice', N'Tavsiye', N'C:\Users\nesli\OneDrive\Masaüstü\3k_kelime_görsel\3k_kelime_görsel\advice .jpg', N'Thank you for your advice. ', N'Tavsiyen için teşekkür ederim.', 1)
INSERT [dbo].[Kelime] ([kelimeID], [kelime], [anlami], [resim], [ornekCumle], [ornekCumleAnlami], [seviyeID]) VALUES (19, N'Afraid', N'Kormuş', N'C:\Users\nesli\OneDrive\Masaüstü\3k_kelime_görsel\3k_kelime_görsel\afraid.jpg', N'He is afraid of the dark.', N'O, karanlıktan korkuyor.', 1)
INSERT [dbo].[Kelime] ([kelimeID], [kelime], [anlami], [resim], [ornekCumle], [ornekCumleAnlami], [seviyeID]) VALUES (20, N'Afternoon', N'Öğleden Sonra', N'C:\Users\nesli\OneDrive\Masaüstü\3k_kelime_görsel\3k_kelime_görsel\afternoon.jpg', N'Good afternoon!', N'İyi öğlenler!', 1)
INSERT [dbo].[Kelime] ([kelimeID], [kelime], [anlami], [resim], [ornekCumle], [ornekCumleAnlami], [seviyeID]) VALUES (21, N'Again', N'Tekrar', N'C:\Users\nesli\OneDrive\Masaüstü\3k_kelime_görsel\3k_kelime_görsel\again.jpg', N'I want to watch the movie again.', N'Filmi tekrar izlemek istiyorum.', 1)
INSERT [dbo].[Kelime] ([kelimeID], [kelime], [anlami], [resim], [ornekCumle], [ornekCumleAnlami], [seviyeID]) VALUES (22, N'Age', N'Yaş', N'C:\Users\nesli\OneDrive\Masaüstü\3k_kelime_görsel\3k_kelime_görsel\age.png', N'She is five years old.', N'O beş yaşında.', 1)
INSERT [dbo].[Kelime] ([kelimeID], [kelime], [anlami], [resim], [ornekCumle], [ornekCumleAnlami], [seviyeID]) VALUES (23, N'Airport', N'Havaalanı', N'C:\Users\nesli\OneDrive\Masaüstü\3k_kelime_görsel\3k_kelime_görsel\airport.jpg', N'We arrived at the airport early.', N'Havaalanına erken vardık.', 1)
INSERT [dbo].[Kelime] ([kelimeID], [kelime], [anlami], [resim], [ornekCumle], [ornekCumleAnlami], [seviyeID]) VALUES (24, N'All', N'Tümü', N'C:\Users\nesli\OneDrive\Masaüstü\3k_kelime_görsel\3k_kelime_görsel\all.jpg', N'He spent all his money.', N'O, tüm parasını harcadı.', 1)
INSERT [dbo].[Kelime] ([kelimeID], [kelime], [anlami], [resim], [ornekCumle], [ornekCumleAnlami], [seviyeID]) VALUES (25, N'Also', N'Ayrıca', N'C:\Users\nesli\OneDrive\Masaüstü\3k_kelime_görsel\3k_kelime_görsel\also.png', N'I like pizza, and I also like pasta.', N'Pizza severim, ayrıca makarnayı da severim.', 1)
INSERT [dbo].[Kelime] ([kelimeID], [kelime], [anlami], [resim], [ornekCumle], [ornekCumleAnlami], [seviyeID]) VALUES (26, N'Always', N'Her Zaman', N'C:\Users\nesli\OneDrive\Masaüstü\3k_kelime_görsel\3k_kelime_görsel\always.jpg', N'She always wakes up early.', N'O her zaman erken kalkar.', 1)
INSERT [dbo].[Kelime] ([kelimeID], [kelime], [anlami], [resim], [ornekCumle], [ornekCumleAnlami], [seviyeID]) VALUES (27, N'And', N'Ve', N'C:\Users\nesli\OneDrive\Masaüstü\3k_kelime_görsel\3k_kelime_görsel\and.png', N'I have a cat and a dog.', N'Bir kedi ve bir köpeğim var.', 1)
INSERT [dbo].[Kelime] ([kelimeID], [kelime], [anlami], [resim], [ornekCumle], [ornekCumleAnlami], [seviyeID]) VALUES (28, N'Angry', N'Sinirli', N'C:\Users\nesli\OneDrive\Masaüstü\3k_kelime_görsel\3k_kelime_görsel\angry.jpg', N'She is angry with her brother.', N'Kardeşiyle kızgın.', 1)
INSERT [dbo].[Kelime] ([kelimeID], [kelime], [anlami], [resim], [ornekCumle], [ornekCumleAnlami], [seviyeID]) VALUES (29, N'Animal', N'Hayvan', N'C:\Users\nesli\OneDrive\Masaüstü\3k_kelime_görsel\3k_kelime_görsel\animal.jpg', N'I love animals, especially cats and dogs.', N'Hayvanları çok severim, özellikle kedileri ve köpekleri.', 1)
INSERT [dbo].[Kelime] ([kelimeID], [kelime], [anlami], [resim], [ornekCumle], [ornekCumleAnlami], [seviyeID]) VALUES (30, N'Another', N'Başka', N'C:\Users\nesli\OneDrive\Masaüstü\3k_kelime_görsel\3k_kelime_görsel\another.jpg', N'She bought another dress.', N'Başka bir elbise daha satın aldı.', 1)
INSERT [dbo].[Kelime] ([kelimeID], [kelime], [anlami], [resim], [ornekCumle], [ornekCumleAnlami], [seviyeID]) VALUES (31, N'Answer', N'Cevap', N'C:\Users\nesli\OneDrive\Masaüstü\3k_kelime_görsel\3k_kelime_görsel\answer.jpg', N'I don''t know the answer.', N'Cevabı bilmiyorum.', 1)
INSERT [dbo].[Kelime] ([kelimeID], [kelime], [anlami], [resim], [ornekCumle], [ornekCumleAnlami], [seviyeID]) VALUES (32, N'Any', N'Hiç', N'C:\Users\nesli\OneDrive\Masaüstü\3k_kelime_görsel\3k_kelime_görsel\any.png', N'She doesn''t have any money.', N'Onun hiç parası yok.', 1)
INSERT [dbo].[Kelime] ([kelimeID], [kelime], [anlami], [resim], [ornekCumle], [ornekCumleAnlami], [seviyeID]) VALUES (33, N'Anyone', N'Herhangi Biri', N'C:\Users\nesli\OneDrive\Masaüstü\3k_kelime_görsel\3k_kelime_görsel\anyone.png', N'Is anyone home?', N'Evde kimse var mı?', 1)
INSERT [dbo].[Kelime] ([kelimeID], [kelime], [anlami], [resim], [ornekCumle], [ornekCumleAnlami], [seviyeID]) VALUES (34, N'Anything', N'Hiçbir Şey', N'C:\Users\nesli\OneDrive\Masaüstü\3k_kelime_görsel\3k_kelime_görsel\anything.jpg', N'I don''t want anything to eat.', N'Yemek için bir şey istemiyorum.', 1)
INSERT [dbo].[Kelime] ([kelimeID], [kelime], [anlami], [resim], [ornekCumle], [ornekCumleAnlami], [seviyeID]) VALUES (35, N'Apartment', N'Apartman', N'C:\Users\nesli\OneDrive\Masaüstü\3k_kelime_görsel\3k_kelime_görsel\apartment.jpg', N'My friend has a nice apartment.', N'Arkadaşımın güzel bir apartman dairesi var.', 1)
INSERT [dbo].[Kelime] ([kelimeID], [kelime], [anlami], [resim], [ornekCumle], [ornekCumleAnlami], [seviyeID]) VALUES (36, N'Apple', N'Elma', N'C:\Users\nesli\OneDrive\Masaüstü\3k_kelime_görsel\3k_kelime_görsel\apple.jpg', N'She is eating an apple.', N'O, bir elma yiyor.', 1)
INSERT [dbo].[Kelime] ([kelimeID], [kelime], [anlami], [resim], [ornekCumle], [ornekCumleAnlami], [seviyeID]) VALUES (37, N'April', N'Nisan', N'C:\Users\nesli\OneDrive\Masaüstü\3k_kelime_görsel\3k_kelime_görsel\April.jpg', N'My birthday is in April.', N'Doğum günüm Nisan ayında.', 1)
INSERT [dbo].[Kelime] ([kelimeID], [kelime], [anlami], [resim], [ornekCumle], [ornekCumleAnlami], [seviyeID]) VALUES (38, N'Area', N'Alan', N'C:\Users\nesli\OneDrive\Masaüstü\3k_kelime_görsel\3k_kelime_görsel\area.png', N'There is a playground in the area. ', N'Bölgede bir oyun alanı var.', 1)
INSERT [dbo].[Kelime] ([kelimeID], [kelime], [anlami], [resim], [ornekCumle], [ornekCumleAnlami], [seviyeID]) VALUES (39, N'Arm', N'Kol', N'C:\Users\nesli\OneDrive\Masaüstü\3k_kelime_görsel\3k_kelime_görsel\arm.jpg', N'He has a tattoo on his arm.', N'Kolunda bir dövme var.', 1)
INSERT [dbo].[Kelime] ([kelimeID], [kelime], [anlami], [resim], [ornekCumle], [ornekCumleAnlami], [seviyeID]) VALUES (40, N'Around', N'Etrafında', N'C:\Users\nesli\OneDrive\Masaüstü\3k_kelime_görsel\3k_kelime_görsel\around.jpg', N'We walked around the park.', N'Parkın etrafında yürüdük.', 1)
INSERT [dbo].[Kelime] ([kelimeID], [kelime], [anlami], [resim], [ornekCumle], [ornekCumleAnlami], [seviyeID]) VALUES (41, N'Arrive', N'Varmak', N'C:\Users\nesli\OneDrive\Masaüstü\3k_kelime_görsel\3k_kelime_görsel\arrive .jpg', N'They arrived at the airport early.', N'Havaalanına erken geldiler.', 1)
INSERT [dbo].[Kelime] ([kelimeID], [kelime], [anlami], [resim], [ornekCumle], [ornekCumleAnlami], [seviyeID]) VALUES (42, N'Artist', N'Sanatçı', N'C:\Users\nesli\OneDrive\Masaüstü\3k_kelime_görsel\3k_kelime_görsel\artist.jpg', N'She is a talented artist. ', N'O, yetenekli bir sanatçıdır.', 1)
INSERT [dbo].[Kelime] ([kelimeID], [kelime], [anlami], [resim], [ornekCumle], [ornekCumleAnlami], [seviyeID]) VALUES (43, N'As', N'Gibi', N'C:\Users\nesli\OneDrive\Masaüstü\3k_kelime_görsel\3k_kelime_görsel\as .png', N'He is tall, as his father.', N'O, babası gibi uzun.', 1)
INSERT [dbo].[Kelime] ([kelimeID], [kelime], [anlami], [resim], [ornekCumle], [ornekCumleAnlami], [seviyeID]) VALUES (44, N'Ask', N'Sormak', N'C:\Users\nesli\OneDrive\Masaüstü\3k_kelime_görsel\3k_kelime_görsel\ask.jpg', N'Can I ask you a question?', N'Sana bir soru sorabilir miyim?', 1)
INSERT [dbo].[Kelime] ([kelimeID], [kelime], [anlami], [resim], [ornekCumle], [ornekCumleAnlami], [seviyeID]) VALUES (45, N'August', N'Ağustos', N'C:\Users\nesli\OneDrive\Masaüstü\3k_kelime_görsel\3k_kelime_görsel\August.jpg', N'It is usually hot in August.', N'Ağustos ayında genellikle sıcaktır.', 1)
INSERT [dbo].[Kelime] ([kelimeID], [kelime], [anlami], [resim], [ornekCumle], [ornekCumleAnlami], [seviyeID]) VALUES (46, N'Aunt', N'Teyze', N'C:\Users\nesli\OneDrive\Masaüstü\3k_kelime_görsel\3k_kelime_görsel\aunt.jpg', N'My aunt lives in New York.', N'Teyzem New York''ta yaşıyor.', 1)
INSERT [dbo].[Kelime] ([kelimeID], [kelime], [anlami], [resim], [ornekCumle], [ornekCumleAnlami], [seviyeID]) VALUES (47, N'Autumn', N'Sonbahar', N'C:\Users\nesli\OneDrive\Masaüstü\3k_kelime_görsel\3k_kelime_görsel\autumn .png', N'Autumn is my favorite season.', N'Sonbahar benim favori mevsimimdir.', 1)
INSERT [dbo].[Kelime] ([kelimeID], [kelime], [anlami], [resim], [ornekCumle], [ornekCumleAnlami], [seviyeID]) VALUES (48, N'Away', N'Uzak', N'C:\Users\nesli\OneDrive\Masaüstü\3k_kelime_görsel\3k_kelime_görsel\away.jpg', N'She lives far away from the city.', N'Şehirden uzakta yaşıyor.', 1)
INSERT [dbo].[Kelime] ([kelimeID], [kelime], [anlami], [resim], [ornekCumle], [ornekCumleAnlami], [seviyeID]) VALUES (49, N'Baby', N'Bebek', N'C:\Users\nesli\OneDrive\Masaüstü\3k_kelime_görsel\3k_kelime_görsel\baby.jpg', N'The baby is sleeping.', N'Bebek uyuyor.', 1)
INSERT [dbo].[Kelime] ([kelimeID], [kelime], [anlami], [resim], [ornekCumle], [ornekCumleAnlami], [seviyeID]) VALUES (50, N'Back', N'Arka', N'C:\Users\nesli\OneDrive\Masaüstü\3k_kelime_görsel\3k_kelime_görsel\back.jpg', N'He is sitting in the back of the car. ', N'Arabanın arkasında oturuyor.', 1)
INSERT [dbo].[Kelime] ([kelimeID], [kelime], [anlami], [resim], [ornekCumle], [ornekCumleAnlami], [seviyeID]) VALUES (51, N'Bad', N'Kötü', N'C:\Users\nesli\OneDrive\Masaüstü\3k_kelime_görsel\3k_kelime_görsel\bad .jpg', N'The weather is bad today.', N'Bugün hava kötü.', 1)
INSERT [dbo].[Kelime] ([kelimeID], [kelime], [anlami], [resim], [ornekCumle], [ornekCumleAnlami], [seviyeID]) VALUES (52, N'Bag', N'Çanta', N'C:\Users\nesli\OneDrive\Masaüstü\3k_kelime_görsel\3k_kelime_görsel\bag .jpg', N'He forgot his bag at home.', N'Evinde çantasını unuttu.', 1)
INSERT [dbo].[Kelime] ([kelimeID], [kelime], [anlami], [resim], [ornekCumle], [ornekCumleAnlami], [seviyeID]) VALUES (53, N'Banana', N'Muz', N'C:\Users\nesli\OneDrive\Masaüstü\3k_kelime_görsel\3k_kelime_görsel\banana.jpg', N'She is eating a banana.', N'O, bir muz yiyor.', 1)
INSERT [dbo].[Kelime] ([kelimeID], [kelime], [anlami], [resim], [ornekCumle], [ornekCumleAnlami], [seviyeID]) VALUES (54, N'Band', N'Grup', N'C:\Users\nesli\OneDrive\Masaüstü\3k_kelime_görsel\3k_kelime_görsel\band.jpg', N'He plays guitar in a rock band.', N'O, bir rock grubunda gitar çalıyor.', 1)
INSERT [dbo].[Kelime] ([kelimeID], [kelime], [anlami], [resim], [ornekCumle], [ornekCumleAnlami], [seviyeID]) VALUES (55, N'Bank', N'Banka', N'C:\Users\nesli\OneDrive\Masaüstü\3k_kelime_görsel\3k_kelime_görsel\bank.jpg', N'She works at the bank. ', N'O, bankada çalışıyor.', 1)
INSERT [dbo].[Kelime] ([kelimeID], [kelime], [anlami], [resim], [ornekCumle], [ornekCumleAnlami], [seviyeID]) VALUES (56, N'Bath', N'Küvet', N'C:\Users\nesli\OneDrive\Masaüstü\3k_kelime_görsel\3k_kelime_görsel\bath.jpg', N'Their apartment has a bath and a shower.', N'Dairelerinde hem küvet hem de duş var.', 1)
INSERT [dbo].[Kelime] ([kelimeID], [kelime], [anlami], [resim], [ornekCumle], [ornekCumleAnlami], [seviyeID]) VALUES (57, N'Bathroom', N'Banyo', N'C:\Users\nesli\OneDrive\Masaüstü\3k_kelime_görsel\3k_kelime_görsel\bathroom.jpg', N'She is taking a shower in the bathroom.', N'Banyoda duş alıyor.', 1)
INSERT [dbo].[Kelime] ([kelimeID], [kelime], [anlami], [resim], [ornekCumle], [ornekCumleAnlami], [seviyeID]) VALUES (58, N'Beach', N'Sahil', N'C:\Users\nesli\OneDrive\Masaüstü\3k_kelime_görsel\3k_kelime_görsel\beach.jpg', N'We had a picnic on the beach.', N'Plajda piknik yaptık.', 1)
INSERT [dbo].[Kelime] ([kelimeID], [kelime], [anlami], [resim], [ornekCumle], [ornekCumleAnlami], [seviyeID]) VALUES (59, N'Beautiful', N'Güzel', N'C:\Users\nesli\OneDrive\Masaüstü\3k_kelime_görsel\3k_kelime_görsel\beautiful.jpg', N'Türkan is very beautiful', N'Türkan çok güzel', 1)
INSERT [dbo].[Kelime] ([kelimeID], [kelime], [anlami], [resim], [ornekCumle], [ornekCumleAnlami], [seviyeID]) VALUES (60, N'Because', N'Çünkü', N'C:\Users\nesli\OneDrive\Masaüstü\3k_kelime_görsel\3k_kelime_görsel\because.png', N'Because, Türkan is very beautiful', N'Çünkü, Türkan çok güzel', 1)
INSERT [dbo].[Kelime] ([kelimeID], [kelime], [anlami], [resim], [ornekCumle], [ornekCumleAnlami], [seviyeID]) VALUES (61, N'Become', N'Olmak', N'C:\Users\nesli\OneDrive\Masaüstü\3k_kelime_görsel\3k_kelime_görsel\become.png', N'When will you become a teacher?', N'Ne zaman öğretmen olacaksın?', 1)
INSERT [dbo].[Kelime] ([kelimeID], [kelime], [anlami], [resim], [ornekCumle], [ornekCumleAnlami], [seviyeID]) VALUES (62, N'Bed', N'Yatak', N'C:\Users\nesli\OneDrive\Masaüstü\3k_kelime_görsel\3k_kelime_görsel\bed.jpg', N'He likes to jump on the bed.', N'Yatağa zıplamayı sever.', 1)
INSERT [dbo].[Kelime] ([kelimeID], [kelime], [anlami], [resim], [ornekCumle], [ornekCumleAnlami], [seviyeID]) VALUES (63, N'Bedroom', N'Yatak Odası', N'C:\Users\nesli\OneDrive\Masaüstü\3k_kelime_görsel\3k_kelime_görsel\bedroom.jpg', N'There is a big bed in the bedroom.', N'Yatak odasında büyük bir yatak var.', 1)
INSERT [dbo].[Kelime] ([kelimeID], [kelime], [anlami], [resim], [ornekCumle], [ornekCumleAnlami], [seviyeID]) VALUES (64, N'Beer', N'Bira', N'C:\Users\nesli\OneDrive\Masaüstü\3k_kelime_görsel\3k_kelime_görsel\beer.png', N'She doesn''t like beer.', N'Bira sevmez.', 1)
INSERT [dbo].[Kelime] ([kelimeID], [kelime], [anlami], [resim], [ornekCumle], [ornekCumleAnlami], [seviyeID]) VALUES (65, N'Before', N'Önce', N'C:\Users\nesli\OneDrive\Masaüstü\3k_kelime_görsel\3k_kelime_görsel\before.png', N'I had never met him before.', N'Onunla daha önce hiç tanışmamıştım.', 1)
INSERT [dbo].[Kelime] ([kelimeID], [kelime], [anlami], [resim], [ornekCumle], [ornekCumleAnlami], [seviyeID]) VALUES (66, N'Begin', N'Başlamak', N'C:\Users\nesli\OneDrive\Masaüstü\3k_kelime_görsel\3k_kelime_görsel\begin.png', N'He begins his day with a cup of coffee.', N'Günü bir fincan kahve ile başlar.', 1)
INSERT [dbo].[Kelime] ([kelimeID], [kelime], [anlami], [resim], [ornekCumle], [ornekCumleAnlami], [seviyeID]) VALUES (67, N'Begining', N'Başlangıç', N'C:\Users\nesli\OneDrive\Masaüstü\3k_kelime_görsel\3k_kelime_görsel\beginning.jpg', N'This is the beginning of the book.', N'Bu kitabın başlangıcı.', 1)
INSERT [dbo].[Kelime] ([kelimeID], [kelime], [anlami], [resim], [ornekCumle], [ornekCumleAnlami], [seviyeID]) VALUES (68, N'Behind', N'Arka', N'C:\Users\nesli\OneDrive\Masaüstü\3k_kelime_görsel\3k_kelime_görsel\behind.jpg', N'The cat is hiding behind the sofa.', N'Kedi koltuğun arkasına saklanmış.', 1)
INSERT [dbo].[Kelime] ([kelimeID], [kelime], [anlami], [resim], [ornekCumle], [ornekCumleAnlami], [seviyeID]) VALUES (69, N'Believe', N'İnan', N'C:\Users\nesli\OneDrive\Masaüstü\3k_kelime_görsel\3k_kelime_görsel\believe.jpg', N'I believe you.', N'Sana inanıyorum.', 1)
INSERT [dbo].[Kelime] ([kelimeID], [kelime], [anlami], [resim], [ornekCumle], [ornekCumleAnlami], [seviyeID]) VALUES (70, N'Best', N'En iyi', N'C:\Users\nesli\OneDrive\Masaüstü\3k_kelime_görsel\3k_kelime_görsel\best.png', N'She is my best friend.', N'O, benim en iyi arkadaşım.', 1)
INSERT [dbo].[Kelime] ([kelimeID], [kelime], [anlami], [resim], [ornekCumle], [ornekCumleAnlami], [seviyeID]) VALUES (71, N'Better', N'Daha iyi', N'C:\Users\nesli\OneDrive\Masaüstü\3k_kelime_görsel\3k_kelime_görsel\better.jpg', N'I feel better today.', N'Bugün kendimi daha iyi hissediyorum.', 1)
INSERT [dbo].[Kelime] ([kelimeID], [kelime], [anlami], [resim], [ornekCumle], [ornekCumleAnlami], [seviyeID]) VALUES (72, N'Between', N'Arasında', N'C:\Users\nesli\OneDrive\Masaüstü\3k_kelime_görsel\3k_kelime_görsel\between.png', N'The cat is sitting between the two chairs.', N'Kedi iki sandalyenin arasında oturuyor.', 1)
INSERT [dbo].[Kelime] ([kelimeID], [kelime], [anlami], [resim], [ornekCumle], [ornekCumleAnlami], [seviyeID]) VALUES (73, N'Bicycle', N'Bisiklet', N'C:\Users\nesli\OneDrive\Masaüstü\3k_kelime_görsel\3k_kelime_görsel\bicycle.jpg', N'Can you ride a bicycle?', N'Bisiklet sürmeyi biliyor musun?', 1)
INSERT [dbo].[Kelime] ([kelimeID], [kelime], [anlami], [resim], [ornekCumle], [ornekCumleAnlami], [seviyeID]) VALUES (74, N'Bigg', N'Büyük', N'C:\Users\nesli\OneDrive\Masaüstü\3k_kelime_görsel\3k_kelime_görsel\big.jpg', N'She has a big house.', N'Onun büyük bir evi var.', 1)
INSERT [dbo].[Kelime] ([kelimeID], [kelime], [anlami], [resim], [ornekCumle], [ornekCumleAnlami], [seviyeID]) VALUES (75, N'Motorcycle', N'Motorsiklet', N'C:\Users\nesli\OneDrive\Masaüstü\3k_kelime_görsel\3k_kelime_görsel\bike.jpg', N'Can you ride a motorcycle?', N'Motosiklet sürmeyi biliyor musun?', 1)
INSERT [dbo].[Kelime] ([kelimeID], [kelime], [anlami], [resim], [ornekCumle], [ornekCumleAnlami], [seviyeID]) VALUES (77, N'Bill', N'Fatura', N'C:\Users\nesli\OneDrive\Masaüstü\3k_kelime_görsel\3k_kelime_görsel\bill.png', N'He paid the restaurant bill.', N'Restoranın hesabını ödedi.', 1)
INSERT [dbo].[Kelime] ([kelimeID], [kelime], [anlami], [resim], [ornekCumle], [ornekCumleAnlami], [seviyeID]) VALUES (78, N'Bird', N'Kuş', N'C:\Users\nesli\OneDrive\Masaüstü\3k_kelime_görsel\3k_kelime_görsel\bird.jpg', N'I saw a beautiful bird in the park. ', N'Parkta güzel bir kuş gördüm.', 1)
INSERT [dbo].[Kelime] ([kelimeID], [kelime], [anlami], [resim], [ornekCumle], [ornekCumleAnlami], [seviyeID]) VALUES (79, N'Birthday', N'Doğum günü', N'C:\Users\nesli\OneDrive\Masaüstü\3k_kelime_görsel\3k_kelime_görsel\birthday.png', N'dgko merve', N'merve iyi ki doğdun', 1)
INSERT [dbo].[Kelime] ([kelimeID], [kelime], [anlami], [resim], [ornekCumle], [ornekCumleAnlami], [seviyeID]) VALUES (80, N'Black', N'Siyah', N'C:\Users\nesli\OneDrive\Masaüstü\3k_kelime_görsel\3k_kelime_görsel\black.png', N'She is wearing a black dress.', N'Siyah bir elbise giyiyor.', 1)
INSERT [dbo].[Kelime] ([kelimeID], [kelime], [anlami], [resim], [ornekCumle], [ornekCumleAnlami], [seviyeID]) VALUES (82, N'Blog', N'Blog', N'C:\Users\nesli\OneDrive\Masaüstü\3k_kelime_görsel\3k_kelime_görsel\blog.png', N'She writes a blog about cooking.', N'Yemek pişirme üzerine bir blog yazıyor.', 1)
INSERT [dbo].[Kelime] ([kelimeID], [kelime], [anlami], [resim], [ornekCumle], [ornekCumleAnlami], [seviyeID]) VALUES (83, N'Blonde', N'Sarışın', N'C:\Users\nesli\OneDrive\Masaüstü\3k_kelime_görsel\3k_kelime_görsel\blonde.jpg', N'She has long blonde hair. ', N'Uzun sarı saçları var.', 1)
INSERT [dbo].[Kelime] ([kelimeID], [kelime], [anlami], [resim], [ornekCumle], [ornekCumleAnlami], [seviyeID]) VALUES (84, N'Blue', N'Mavi', N'C:\Users\nesli\OneDrive\Masaüstü\3k_kelime_görsel\3k_kelime_görsel\blue.png', N'She is wearing a blue dress. ', N'Mavi bir elbise giyiyor.', 1)
INSERT [dbo].[Kelime] ([kelimeID], [kelime], [anlami], [resim], [ornekCumle], [ornekCumleAnlami], [seviyeID]) VALUES (85, N'Boat', N'Bot', N'C:\Users\nesli\OneDrive\Masaüstü\3k_kelime_görsel\3k_kelime_görsel\boat.png', N'They went fishing in a small boat.', N'Küçük bir teknede balık tutmaya gittiler.', 1)
INSERT [dbo].[Kelime] ([kelimeID], [kelime], [anlami], [resim], [ornekCumle], [ornekCumleAnlami], [seviyeID]) VALUES (86, N'Body', N'Vücut', N'C:\Users\nesli\OneDrive\Masaüstü\3k_kelime_görsel\3k_kelime_görsel\body.jpg', N'She has a beautiful body. ', N'Güzel bir vücudu var.', 1)
INSERT [dbo].[Kelime] ([kelimeID], [kelime], [anlami], [resim], [ornekCumle], [ornekCumleAnlami], [seviyeID]) VALUES (87, N'Book', N'Kitap', N'C:\Users\nesli\OneDrive\Masaüstü\3k_kelime_görsel\3k_kelime_görsel\book.jpg', N'She is reading a book.', N'O, bir kitap okuyor.', 1)
INSERT [dbo].[Kelime] ([kelimeID], [kelime], [anlami], [resim], [ornekCumle], [ornekCumleAnlami], [seviyeID]) VALUES (88, N'Boot', N'Bot', N'C:\Users\nesli\OneDrive\Masaüstü\3k_kelime_görsel\3k_kelime_görsel\boot.jpg', N'She is wearing black boots.', N'Siyah botlar giyiyor.', 1)
INSERT [dbo].[Kelime] ([kelimeID], [kelime], [anlami], [resim], [ornekCumle], [ornekCumleAnlami], [seviyeID]) VALUES (89, N'Boring', N'Sıkılmak', N'C:\Users\nesli\OneDrive\Masaüstü\3k_kelime_görsel\3k_kelime_görsel\Boring1.png', N'I boring.', N'Sıkıldım.', 1)
INSERT [dbo].[Kelime] ([kelimeID], [kelime], [anlami], [resim], [ornekCumle], [ornekCumleAnlami], [seviyeID]) VALUES (90, N'Born', N'Doğmak', N'C:\Users\nesli\OneDrive\Masaüstü\3k_kelime_görsel\3k_kelime_görsel\born.webp', N'She was born in Paris.', N'O, Paris''te doğdu.', 1)
INSERT [dbo].[Kelime] ([kelimeID], [kelime], [anlami], [resim], [ornekCumle], [ornekCumleAnlami], [seviyeID]) VALUES (91, N'Both', N'İkisi birden', N'C:\Users\nesli\OneDrive\Masaüstü\3k_kelime_görsel\3k_kelime_görsel\both.png', N'They both like ice cream.', N'İkisi de dondurmayı sever.', 1)
INSERT [dbo].[Kelime] ([kelimeID], [kelime], [anlami], [resim], [ornekCumle], [ornekCumleAnlami], [seviyeID]) VALUES (92, N'Banana', N'Muz', N'C:\Users\nesli\OneDrive\Masaüstü\3k_kelime_görsel\3k_kelime_görsel\banana.jpg', N'i like banana.', N'muzu seviyorum', 1)
INSERT [dbo].[Kelime] ([kelimeID], [kelime], [anlami], [resim], [ornekCumle], [ornekCumleAnlami], [seviyeID]) VALUES (93, N'Bread', N'Ekmek', N'C:\Users\nesli\OneDrive\Masaüstü\3k_kelime_görsel\3k_kelime_görsel\bread.png', N'I eat bread for breakfast.', N'Kahvaltıda ekmek yerim.', 1)
INSERT [dbo].[Kelime] ([kelimeID], [kelime], [anlami], [resim], [ornekCumle], [ornekCumleAnlami], [seviyeID]) VALUES (94, N'Engine', N'Motor', N'C:\Users\nesli\source\repos\Ingilizce_Kelime_Oyunu\image\a2\engine.jpg', N'The boat has a new engine. ', N'Teknenin yeni bir motoru var.', 2)
INSERT [dbo].[Kelime] ([kelimeID], [kelime], [anlami], [resim], [ornekCumle], [ornekCumleAnlami], [seviyeID]) VALUES (95, N'Adventure', N'Macera', N'C:\Users\nesli\source\repos\Ingilizce_Kelime_Oyunu\image\a2\adventure.jpg', N'She loves reading adventure books. ', N'Macera kitapları okumayı sever.', 2)
INSERT [dbo].[Kelime] ([kelimeID], [kelime], [anlami], [resim], [ornekCumle], [ornekCumleAnlami], [seviyeID]) VALUES (96, N'Billion', N'Milyar', N'C:\Users\nesli\source\repos\Ingilizce_Kelime_Oyunu\image\a2\billion.jpg', N'He won a billion dollars in the lottery.', N'Piyangodan bir milyar dolar kazandı.', 2)
INSERT [dbo].[Kelime] ([kelimeID], [kelime], [anlami], [resim], [ornekCumle], [ornekCumleAnlami], [seviyeID]) VALUES (97, N'Celebrate', N'Kutlama', N'C:\Users\nesli\source\repos\Ingilizce_Kelime_Oyunu\image\a2\celebrate.jpg', N'We celebrate Christmas every year.', N'Her yıl Noel''i kutlarız.', 2)
INSERT [dbo].[Kelime] ([kelimeID], [kelime], [anlami], [resim], [ornekCumle], [ornekCumleAnlami], [seviyeID]) VALUES (98, N'Board', N'Tahta', N'C:\Users\nesli\source\repos\Ingilizce_Kelime_Oyunu\image\a2\board.png', N'She wrote her name on the board.', N'Adını tahtaya yazdı.', 2)
INSERT [dbo].[Kelime] ([kelimeID], [kelime], [anlami], [resim], [ornekCumle], [ornekCumleAnlami], [seviyeID]) VALUES (99, N'Choice', N'Seçim', N'C:\Users\nesli\source\repos\Ingilizce_Kelime_Oyunu\image\a2\choice.jpg', N'She made the right choice. ', N'Doğru seçimi yaptı.', 2)
INSERT [dbo].[Kelime] ([kelimeID], [kelime], [anlami], [resim], [ornekCumle], [ornekCumleAnlami], [seviyeID]) VALUES (100, N'Camp', N'Kamp', N'C:\Users\nesli\source\repos\Ingilizce_Kelime_Oyunu\image\a2\camp.jpg', N'We are going to camp in the forest.', N'Ormanda kamp yapacağız.', 2)
INSERT [dbo].[Kelime] ([kelimeID], [kelime], [anlami], [resim], [ornekCumle], [ornekCumleAnlami], [seviyeID]) VALUES (102, N'Brave', N'Cesur', N'C:\Users\nesli\source\repos\Ingilizce_Kelime_Oyunu\image\b1\brave.jpg', N'The firefighter is very brave. ', N'İtfaiyeci çok cesur.', 3)
GO
INSERT [dbo].[Kelime] ([kelimeID], [kelime], [anlami], [resim], [ornekCumle], [ornekCumleAnlami], [seviyeID]) VALUES (103, N'Laboratory', N'Laboratuvar', N'C:\Users\nesli\source\repos\Ingilizce_Kelime_Oyunu\image\b1\laboratory.jpg', N'The scientists are in the laboratory.', N'Bilim insanları laboratuvarda.', 3)
INSERT [dbo].[Kelime] ([kelimeID], [kelime], [anlami], [resim], [ornekCumle], [ornekCumleAnlami], [seviyeID]) VALUES (104, N'Cut', N'Kesmek', N'C:\Users\nesli\source\repos\Ingilizce_Kelime_Oyunu\image\b1\cut.png', N'She cut the paper with scissors.', N'Makasla kağıdı kesti.', 3)
INSERT [dbo].[Kelime] ([kelimeID], [kelime], [anlami], [resim], [ornekCumle], [ornekCumleAnlami], [seviyeID]) VALUES (105, N'Emotion', N'Duygu', N'C:\Users\nesli\source\repos\Ingilizce_Kelime_Oyunu\image\b1\emotion.jpg', N'He wrote a poem about his emotions.', N'Duyguları hakkında bir şiir yazdı.', 3)
INSERT [dbo].[Kelime] ([kelimeID], [kelime], [anlami], [resim], [ornekCumle], [ornekCumleAnlami], [seviyeID]) VALUES (106, N'Layer', N'Katman', N'C:\Users\nesli\source\repos\Ingilizce_Kelime_Oyunu\image\b1\layer.jpg', N'He painted the picture in layers.', N'Resmi katmanlar halinde boyadı.', 3)
INSERT [dbo].[Kelime] ([kelimeID], [kelime], [anlami], [resim], [ornekCumle], [ornekCumleAnlami], [seviyeID]) VALUES (107, N'Account', N'Hesap', N'C:\Users\nesli\source\repos\Ingilizce_Kelime_Oyunu\image\b1\account.jpg', N'My account', N'Benim hesabım', 3)
INSERT [dbo].[Kelime] ([kelimeID], [kelime], [anlami], [resim], [ornekCumle], [ornekCumleAnlami], [seviyeID]) VALUES (108, N'Admire', N'Beğenmek', N'C:\Users\nesli\source\repos\Ingilizce_Kelime_Oyunu\image\b1\admire.png', N'I am admire you', N'Hayranım sana', 3)
INSERT [dbo].[Kelime] ([kelimeID], [kelime], [anlami], [resim], [ornekCumle], [ornekCumleAnlami], [seviyeID]) VALUES (109, N'Admit', N'İtiraf etmek', N'C:\Users\nesli\source\repos\Ingilizce_Kelime_Oyunu\image\b1\admit.jpg', N'I admit you', N'İtiraf ediyorum', 3)
INSERT [dbo].[Kelime] ([kelimeID], [kelime], [anlami], [resim], [ornekCumle], [ornekCumleAnlami], [seviyeID]) VALUES (110, N'Battery', N'Pil', N'C:\Users\nesli\source\repos\Ingilizce_Kelime_Oyunu\image\b1\battery.png', N'Battery low', N'Düşük pil', 3)
INSERT [dbo].[Kelime] ([kelimeID], [kelime], [anlami], [resim], [ornekCumle], [ornekCumleAnlami], [seviyeID]) VALUES (111, N'Alcohol', N'Alkol', N'C:\Users\nesli\source\repos\Ingilizce_Kelime_Oyunu\image\b1\alcohol.png', N'I can''t drink alcohol', N'Alkol Kullanmam', 3)
INSERT [dbo].[Kelime] ([kelimeID], [kelime], [anlami], [resim], [ornekCumle], [ornekCumleAnlami], [seviyeID]) VALUES (112, N'Agent', N'Ajan', N'C:\Users\nesli\source\repos\Ingilizce_Kelime_Oyunu\image\b1\agent.jpg', N'Türkan is a FBI agent', N'Türkan FBI ajanı', 3)
INSERT [dbo].[Kelime] ([kelimeID], [kelime], [anlami], [resim], [ornekCumle], [ornekCumleAnlami], [seviyeID]) VALUES (113, N'Aim', N'Hedef', N'C:\Users\nesli\source\repos\Ingilizce_Kelime_Oyunu\image\b1\aim.jpg', N'You are very good at aiming', N'Hedef almada çok iyisin', 3)
INSERT [dbo].[Kelime] ([kelimeID], [kelime], [anlami], [resim], [ornekCumle], [ornekCumleAnlami], [seviyeID]) VALUES (114, N'Advanced', N'Gelişmiş', N'C:\Users\nesli\source\repos\Ingilizce_Kelime_Oyunu\image\b1\advanced.png', N'Advanced technology', N'Gelişimiş teknoloji', 3)
INSERT [dbo].[Kelime] ([kelimeID], [kelime], [anlami], [resim], [ornekCumle], [ornekCumleAnlami], [seviyeID]) VALUES (115, N'Ability', N'Yetenek', N'C:\Users\nesli\source\repos\Ingilizce_Kelime_Oyunu\image\a2\ability.jpg', N'You are a very ability person', N'Çok yetenekli bir insansın', 2)
INSERT [dbo].[Kelime] ([kelimeID], [kelime], [anlami], [resim], [ornekCumle], [ornekCumleAnlami], [seviyeID]) VALUES (116, N'Accept', N'Kabul etmek', N'C:\Users\nesli\source\repos\Ingilizce_Kelime_Oyunu\image\a2\accept.jpg', N'I accept you', N'Seni kabul ediyorum', 2)
INSERT [dbo].[Kelime] ([kelimeID], [kelime], [anlami], [resim], [ornekCumle], [ornekCumleAnlami], [seviyeID]) VALUES (117, N'Along', N'Birlikte', N'C:\Users\nesli\source\repos\Ingilizce_Kelime_Oyunu\image\a2\along.jpg', N'I love walking along', N'Birlikte yürümeyi seviyorum', 2)
INSERT [dbo].[Kelime] ([kelimeID], [kelime], [anlami], [resim], [ornekCumle], [ornekCumleAnlami], [seviyeID]) VALUES (118, N'Cigarette', N'Sigara', N'C:\Users\nesli\source\repos\Ingilizce_Kelime_Oyunu\image\a2\cigarette.jpg', N'I can''t smoke', N'Sigara kullanmıyorum', 2)
INSERT [dbo].[Kelime] ([kelimeID], [kelime], [anlami], [resim], [ornekCumle], [ornekCumleAnlami], [seviyeID]) VALUES (119, N'Knife', N'Bıçak', N'C:\Users\nesli\source\repos\Ingilizce_Kelime_Oyunu\image\a2\knife.png', N'I got ninja knives', N'Ninja bıçaklarım var', 2)
INSERT [dbo].[Kelime] ([kelimeID], [kelime], [anlami], [resim], [ornekCumle], [ornekCumleAnlami], [seviyeID]) VALUES (120, N'Nervous', N'Gergin', N'C:\Users\nesli\source\repos\Ingilizce_Kelime_Oyunu\image\a2\nervous.png', N'ı am a nervous girl', N'Gergin bir kızım', 2)
INSERT [dbo].[Kelime] ([kelimeID], [kelime], [anlami], [resim], [ornekCumle], [ornekCumleAnlami], [seviyeID]) VALUES (121, N'Gun', N'Silah', N'C:\Users\nesli\source\repos\Ingilizce_Kelime_Oyunu\image\a2\gun.jpg', N'I love guns', N'', 2)
SET IDENTITY_INSERT [dbo].[Kelime] OFF
GO
SET IDENTITY_INSERT [dbo].[Kullanici] ON 

INSERT [dbo].[Kullanici] ([kullaniciID], [ad], [soyad], [eposta], [sifre], [yetkiID]) VALUES (1, N'Neslihan', N'Bozak', N'neslihan@gmail.com', N'1356', 1)
INSERT [dbo].[Kullanici] ([kullaniciID], [ad], [soyad], [eposta], [sifre], [yetkiID]) VALUES (2, N'Taha Mert', N'Güler', N'taha@gamil.com', N'1903', 1)
INSERT [dbo].[Kullanici] ([kullaniciID], [ad], [soyad], [eposta], [sifre], [yetkiID]) VALUES (3, N'Türkan', N'Ergün', N'turkan@gmail.com', N'6161', 2)
SET IDENTITY_INSERT [dbo].[Kullanici] OFF
GO
SET IDENTITY_INSERT [dbo].[Seviye] ON 

INSERT [dbo].[Seviye] ([seviyeID], [seviye]) VALUES (1, N'A1')
INSERT [dbo].[Seviye] ([seviyeID], [seviye]) VALUES (2, N'A2')
INSERT [dbo].[Seviye] ([seviyeID], [seviye]) VALUES (3, N'B1')
SET IDENTITY_INSERT [dbo].[Seviye] OFF
GO
SET IDENTITY_INSERT [dbo].[Yetki] ON 

INSERT [dbo].[Yetki] ([yetkiID], [yetki]) VALUES (1, N'Admin')
INSERT [dbo].[Yetki] ([yetkiID], [yetki]) VALUES (2, N'Kullanici')
SET IDENTITY_INSERT [dbo].[Yetki] OFF
GO
ALTER TABLE [dbo].[Kelime]  WITH CHECK ADD  CONSTRAINT [FK_Kelime_Seviye] FOREIGN KEY([seviyeID])
REFERENCES [dbo].[Seviye] ([seviyeID])
GO
ALTER TABLE [dbo].[Kelime] CHECK CONSTRAINT [FK_Kelime_Seviye]
GO
ALTER TABLE [dbo].[Kullanici]  WITH CHECK ADD  CONSTRAINT [FK_Kullanici_Yetki] FOREIGN KEY([yetkiID])
REFERENCES [dbo].[Yetki] ([yetkiID])
GO
ALTER TABLE [dbo].[Kullanici] CHECK CONSTRAINT [FK_Kullanici_Yetki]
GO
ALTER TABLE [dbo].[KullaniciIlerleme]  WITH CHECK ADD  CONSTRAINT [FK_KullaniciIlerleme_Kullanici1] FOREIGN KEY([kullaniciIlerlemeID])
REFERENCES [dbo].[Kullanici] ([kullaniciID])
GO
ALTER TABLE [dbo].[KullaniciIlerleme] CHECK CONSTRAINT [FK_KullaniciIlerleme_Kullanici1]
GO
ALTER TABLE [dbo].[KullaniciIlerleme]  WITH CHECK ADD  CONSTRAINT [FK_KullaniciIlerleme_Seviye] FOREIGN KEY([seviyeID])
REFERENCES [dbo].[Seviye] ([seviyeID])
GO
ALTER TABLE [dbo].[KullaniciIlerleme] CHECK CONSTRAINT [FK_KullaniciIlerleme_Seviye]
GO
USE [master]
GO
ALTER DATABASE [IngilizceKelimeOyunuDB] SET  READ_WRITE 
GO
