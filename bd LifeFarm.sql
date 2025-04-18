USE [lifeFarm]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[заказы](
	[ID_заказа] [int] NOT NULL,
	[ID_покупателя] [int] NULL,
	[дата_заказа] [date] NULL,
	[ID_состава] [int] NULL,
	[итоговая_цена] [money] NULL,
	[ID_пункта] [int] NULL,
	[ID_сотрудника] [int] NULL,
 CONSTRAINT [PK_заказы] PRIMARY KEY CLUSTERED 
(
	[ID_заказа] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[покупатели](
	[ID_покупателя] [int] NOT NULL,
	[фамилия] [nvarchar](15) NULL,
	[имя] [nvarchar](15) NULL,
	[отчество] [nvarchar](15) NULL,
	[дата_рождения] [date] NULL,
	[город] [nvarchar](20) NULL,
	[индекс] [int] NULL,
	[login] [nvarchar](50) NULL,
	[password] [nvarchar](50) NULL,
 CONSTRAINT [PK_покупатели] PRIMARY KEY CLUSTERED 
(
	[ID_покупателя] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[пункты_выдачи](
	[ID_пункта] [int] NOT NULL,
	[город] [nvarchar](50) NULL,
	[улица] [nvarchar](50) NULL,
	[дом] [nvarchar](50) NULL,
	[индекс] [int] NULL,
 CONSTRAINT [PK_пункты_выдачи] PRIMARY KEY CLUSTERED 
(
	[ID_пункта] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[состав_заказа](
	[ID_состава] [int] NOT NULL,
	[ID_товара] [int] NULL,
	[количество] [int] NULL,
 CONSTRAINT [PK_состав_заказа] PRIMARY KEY CLUSTERED 
(
	[ID_состава] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[сотрудники](
	[ID_сотрудника] [int] NOT NULL,
	[фамилия] [nvarchar](50) NULL,
	[имя] [nvarchar](50) NULL,
	[отчество] [nvarchar](50) NULL,
	[дата_рождения] [date] NULL,
 CONSTRAINT [PK_сотрудники] PRIMARY KEY CLUSTERED 
(
	[ID_сотрудника] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[типы_товаров](
	[ID_типа] [int] NOT NULL,
	[наименование] [nvarchar](15) NULL,
 CONSTRAINT [PK_типы_товаров] PRIMARY KEY CLUSTERED 
(
	[ID_типа] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[товары](
	[ID_товара] [int] NOT NULL,
	[наименование] [nvarchar](15) NULL,
	[фото] [image] NULL,
	[описание] [nvarchar](50) NULL,
	[производитель] [nvarchar](20) NULL,
	[цена] [money] NULL,
	[ID_типа] [int] NULL,
 CONSTRAINT [PK_товары] PRIMARY KEY CLUSTERED 
(
	[ID_товара] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[покупатели] ([ID_покупателя], [фамилия], [имя], [отчество], [дата_рождения], [город], [индекс], [login], [password]) VALUES (1, N'Побиянский', N'Максим', N'Викторович', CAST(N'2005-05-16' AS Date), N'Алапаевск', 624600, N'user1', N'user1')
INSERT [dbo].[покупатели] ([ID_покупателя], [фамилия], [имя], [отчество], [дата_рождения], [город], [индекс], [login], [password]) VALUES (2, N'Стихин', N'Артём', N'Валерьевич', CAST(N'2005-07-23' AS Date), N'Алапаевск', 624600, N'user2', N'user2')
INSERT [dbo].[покупатели] ([ID_покупателя], [фамилия], [имя], [отчество], [дата_рождения], [город], [индекс], [login], [password]) VALUES (3, N'Комаров', N'Сергей', N'Генадьевич', CAST(N'2005-04-08' AS Date), N'Алапаевск', 624603, N'user3', N'user3')
GO
INSERT [dbo].[пункты_выдачи] ([ID_пункта], [город], [улица], [дом], [индекс]) VALUES (1, N'Алапаевск', N'Ленина', N'15', 624603)
INSERT [dbo].[пункты_выдачи] ([ID_пункта], [город], [улица], [дом], [индекс]) VALUES (2, N'Алапаевск', N'Бочкарёва', N'10', 624503)
INSERT [dbo].[пункты_выдачи] ([ID_пункта], [город], [улица], [дом], [индекс]) VALUES (3, N'Алапаевск', N'Московская', N'1А', 624600)
GO
INSERT [dbo].[сотрудники] ([ID_сотрудника], [фамилия], [имя], [отчество], [дата_рождения]) VALUES (1, N'Зуев', N'Никита', N'Сергеевич', CAST(N'2005-08-19' AS Date))
INSERT [dbo].[сотрудники] ([ID_сотрудника], [фамилия], [имя], [отчество], [дата_рождения]) VALUES (2, N'Артамонов', N'Андрей', N'Сергеевич', CAST(N'2005-03-15' AS Date))
INSERT [dbo].[сотрудники] ([ID_сотрудника], [фамилия], [имя], [отчество], [дата_рождения]) VALUES (3, N'Паршуков', N'Алексей', N'Чеевич', CAST(N'2005-08-25' AS Date))
GO
INSERT [dbo].[типы_товаров] ([ID_типа], [наименование]) VALUES (1, N'таблетки')
INSERT [dbo].[типы_товаров] ([ID_типа], [наименование]) VALUES (2, N'сироп')
INSERT [dbo].[типы_товаров] ([ID_типа], [наименование]) VALUES (3, N'мазь')
INSERT [dbo].[типы_товаров] ([ID_типа], [наименование]) VALUES (4, N'спрей')
GO
INSERT [dbo].[товары] ([ID_товара], [наименование], [фото], [описание], [производитель], [цена], [ID_типа]) VALUES (1, N'Ибупрофен', NULL, N'Противовоспалительное средство', N'Реневал Табс', 169.9900, 1)
INSERT [dbo].[товары] ([ID_товара], [наименование], [фото], [описание], [производитель], [цена], [ID_типа]) VALUES (2, N'Парацетамол', NULL, N'Жаропонижающее средство', N'Реневал Табс', 89.9900, 1)
INSERT [dbo].[товары] ([ID_товара], [наименование], [фото], [описание], [производитель], [цена], [ID_типа]) VALUES (3, N'Аквалор', NULL, N'Промывающее средство', N'AqualorFarm', 469.9900, 4)
INSERT [dbo].[товары] ([ID_товара], [наименование], [фото], [описание], [производитель], [цена], [ID_типа]) VALUES (4, N'Ацикловир', NULL, N'Противовирусное средство', N'Реневал Табс', 129.9900, 1)
INSERT [dbo].[товары] ([ID_товара], [наименование], [фото], [описание], [производитель], [цена], [ID_типа]) VALUES (5, N'Корень солодки', NULL, N'Средство от кашля', N'Алапаевск', 69.9900, 2)
GO
ALTER TABLE [dbo].[заказы]  WITH CHECK ADD  CONSTRAINT [FK_заказы_покупатели] FOREIGN KEY([ID_покупателя])
REFERENCES [dbo].[покупатели] ([ID_покупателя])
GO
ALTER TABLE [dbo].[заказы] CHECK CONSTRAINT [FK_заказы_покупатели]
GO
ALTER TABLE [dbo].[заказы]  WITH CHECK ADD  CONSTRAINT [FK_заказы_пункты_выдачи] FOREIGN KEY([ID_пункта])
REFERENCES [dbo].[пункты_выдачи] ([ID_пункта])
GO
ALTER TABLE [dbo].[заказы] CHECK CONSTRAINT [FK_заказы_пункты_выдачи]
GO
ALTER TABLE [dbo].[заказы]  WITH CHECK ADD  CONSTRAINT [FK_заказы_состав_заказа] FOREIGN KEY([ID_состава])
REFERENCES [dbo].[состав_заказа] ([ID_состава])
GO
ALTER TABLE [dbo].[заказы] CHECK CONSTRAINT [FK_заказы_состав_заказа]
GO
ALTER TABLE [dbo].[заказы]  WITH CHECK ADD  CONSTRAINT [FK_заказы_сотрудники] FOREIGN KEY([ID_сотрудника])
REFERENCES [dbo].[сотрудники] ([ID_сотрудника])
GO
ALTER TABLE [dbo].[заказы] CHECK CONSTRAINT [FK_заказы_сотрудники]
GO
ALTER TABLE [dbo].[состав_заказа]  WITH CHECK ADD  CONSTRAINT [FK_состав_заказа_товары] FOREIGN KEY([ID_товара])
REFERENCES [dbo].[товары] ([ID_товара])
GO
ALTER TABLE [dbo].[состав_заказа] CHECK CONSTRAINT [FK_состав_заказа_товары]
GO
ALTER TABLE [dbo].[товары]  WITH CHECK ADD  CONSTRAINT [FK_товары_типы_товаров] FOREIGN KEY([ID_типа])
REFERENCES [dbo].[типы_товаров] ([ID_типа])
GO
ALTER TABLE [dbo].[товары] CHECK CONSTRAINT [FK_товары_типы_товаров]
GO
