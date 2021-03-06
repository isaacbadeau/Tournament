USE [master]
GO

/****** Object:  Database [Tournaments]    Script Date: 4/8/2019 9:23:02 AM ******/
DROP DATABASE [Tournaments]
GO

/****** Object:  Database [Tournaments]    Script Date: 4/8/2019 9:23:02 AM ******/
CREATE DATABASE [Tournaments]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Tournaments', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Tournaments.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Tournaments_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Tournaments_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO

ALTER DATABASE [Tournaments] SET COMPATIBILITY_LEVEL = 140
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Tournaments].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [Tournaments] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [Tournaments] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [Tournaments] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [Tournaments] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [Tournaments] SET ARITHABORT OFF 
GO

ALTER DATABASE [Tournaments] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [Tournaments] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [Tournaments] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [Tournaments] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [Tournaments] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [Tournaments] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [Tournaments] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [Tournaments] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [Tournaments] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [Tournaments] SET  ENABLE_BROKER 
GO

ALTER DATABASE [Tournaments] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [Tournaments] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [Tournaments] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [Tournaments] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [Tournaments] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [Tournaments] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [Tournaments] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [Tournaments] SET RECOVERY FULL 
GO

ALTER DATABASE [Tournaments] SET  MULTI_USER 
GO

ALTER DATABASE [Tournaments] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [Tournaments] SET DB_CHAINING OFF 
GO

ALTER DATABASE [Tournaments] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [Tournaments] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [Tournaments] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [Tournaments] SET QUERY_STORE = OFF
GO

ALTER DATABASE [Tournaments] SET  READ_WRITE 
GO

USE [Tournaments]
GO
/****** Object:  Table [dbo].[MatchupEntries]    Script Date: 4/4/2019 2:34:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MatchupEntries](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[MatchupID] [int] NOT NULL,
	[ParentMatchupID] [int] NOT NULL,
	[TeamCompetingID] [int] NOT NULL,
	[Score] [int] NOT NULL,
 CONSTRAINT [PK_MatchupEntries] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Matchups]    Script Date: 4/4/2019 2:34:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Matchups](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[WinnerID] [int] NOT NULL,
	[MatchupRound] [int] NOT NULL,
 CONSTRAINT [PK_Matchups] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[People]    Script Date: 4/4/2019 2:34:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[People](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](100) NOT NULL,
	[LastName] [nvarchar](100) NOT NULL,
	[EmailAddress] [nvarchar](200) NOT NULL,
	[CellphoneNumber] [varchar](20) NULL,
 CONSTRAINT [PK_People] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Prizes]    Script Date: 4/4/2019 2:34:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Prizes](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[PlaceNumber] [int] NOT NULL,
	[PlaceName] [nvarchar](200) NOT NULL,
	[PrizeAmount] [money] NULL,
	[PrizePercentage] [float] NULL,
 CONSTRAINT [PK_Prizes] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TeamMembers]    Script Date: 4/4/2019 2:34:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TeamMembers](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[TeamId] [int] NOT NULL,
	[PersonId] [int] NOT NULL,
 CONSTRAINT [PK_TeamMembers] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teams]    Script Date: 4/4/2019 2:34:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teams](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[TeamName] [nvarchar](1000) NOT NULL,
 CONSTRAINT [PK_Teams] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TournamentEntries]    Script Date: 4/4/2019 2:34:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TournamentEntries](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[TournamentId] [int] NOT NULL,
	[TeamId] [int] NOT NULL,
 CONSTRAINT [PK_TournamentEntries] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TournamentPrizes]    Script Date: 4/4/2019 2:34:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TournamentPrizes](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[TournamentID] [int] NOT NULL,
	[PrizeID] [int] NOT NULL,
 CONSTRAINT [PK_TournamentPrizes] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tournaments]    Script Date: 4/4/2019 2:34:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tournaments](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[TournamentName] [nvarchar](2000) NOT NULL,
	[EntreeFee] [money] NOT NULL,
 CONSTRAINT [PK_Tournaments] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

USE [Tournaments]
GO
SET IDENTITY_INSERT [dbo].[MatchupEntries] ON 
GO
INSERT [dbo].[MatchupEntries] ([id], [MatchupID], [ParentMatchupID], [TeamCompetingID], [Score]) VALUES (2017, 1, 2, 3, 20)
GO
INSERT [dbo].[MatchupEntries] ([id], [MatchupID], [ParentMatchupID], [TeamCompetingID], [Score]) VALUES (2018, 2, 3, 4, 30)
GO
SET IDENTITY_INSERT [dbo].[MatchupEntries] OFF
GO
SET IDENTITY_INSERT [dbo].[Matchups] ON 
GO
INSERT [dbo].[Matchups] ([id], [WinnerID], [MatchupRound]) VALUES (1, 1, 2)
GO
INSERT [dbo].[Matchups] ([id], [WinnerID], [MatchupRound]) VALUES (2, 2, 3)
GO
SET IDENTITY_INSERT [dbo].[Matchups] OFF
GO
SET IDENTITY_INSERT [dbo].[People] ON 
GO
INSERT [dbo].[People] ([id], [FirstName], [LastName], [EmailAddress], [CellphoneNumber]) VALUES (1, N'Isaac', N'Badeau', N'isaac@isaac.com', N'1234567891')
GO
INSERT [dbo].[People] ([id], [FirstName], [LastName], [EmailAddress], [CellphoneNumber]) VALUES (2, N'Jame', N'Jackson', N'jack@jackson.com', N'324567654')
GO
SET IDENTITY_INSERT [dbo].[People] OFF
GO
SET IDENTITY_INSERT [dbo].[Prizes] ON 
GO
INSERT [dbo].[Prizes] ([id], [PlaceNumber], [PlaceName], [PrizeAmount], [PrizePercentage]) VALUES (1, 1, N'first', 100.0000, NULL)
GO
INSERT [dbo].[Prizes] ([id], [PlaceNumber], [PlaceName], [PrizeAmount], [PrizePercentage]) VALUES (3, 2, N'second', 50.0000, NULL)
GO
SET IDENTITY_INSERT [dbo].[Prizes] OFF
GO
SET IDENTITY_INSERT [dbo].[TeamMembers] ON 
GO
INSERT [dbo].[TeamMembers] ([id], [TeamId], [PersonId]) VALUES (1, 2, 3)
GO
INSERT [dbo].[TeamMembers] ([id], [TeamId], [PersonId]) VALUES (2, 3, 4)
GO
SET IDENTITY_INSERT [dbo].[TeamMembers] OFF
GO
SET IDENTITY_INSERT [dbo].[Teams] ON 
GO
INSERT [dbo].[Teams] ([id], [TeamName]) VALUES (1, N'BigGuys')
GO
INSERT [dbo].[Teams] ([id], [TeamName]) VALUES (2, N'LittleGuys')
GO
SET IDENTITY_INSERT [dbo].[Teams] OFF
GO
SET IDENTITY_INSERT [dbo].[TournamentEntries] ON 
GO
INSERT [dbo].[TournamentEntries] ([id], [TournamentId], [TeamId]) VALUES (1, 1, 2)
GO
INSERT [dbo].[TournamentEntries] ([id], [TournamentId], [TeamId]) VALUES (2, 2, 3)
GO
SET IDENTITY_INSERT [dbo].[TournamentEntries] OFF
GO
SET IDENTITY_INSERT [dbo].[TournamentPrizes] ON 
GO
INSERT [dbo].[TournamentPrizes] ([id], [TournamentID], [PrizeID]) VALUES (1, 1, 1)
GO
INSERT [dbo].[TournamentPrizes] ([id], [TournamentID], [PrizeID]) VALUES (2, 2, 2)
GO
SET IDENTITY_INSERT [dbo].[TournamentPrizes] OFF
GO
SET IDENTITY_INSERT [dbo].[Tournaments] ON 
GO
INSERT [dbo].[Tournaments] ([id], [TournamentName], [EntreeFee]) VALUES (1, N'Street Fighter', 20.0000)
GO
INSERT [dbo].[Tournaments] ([id], [TournamentName], [EntreeFee]) VALUES (2, N'Smash Bros', 20.0000)
GO
SET IDENTITY_INSERT [dbo].[Tournaments] OFF
GO
