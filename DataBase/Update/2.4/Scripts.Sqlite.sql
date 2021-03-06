
CREATE TABLE [Comments] (
  [ID] INTEGER NOT NULL
, [PagePath] nvarchar(300) NULL
, [UserId] nvarchar(100) NULL
, [Picture] nvarchar(300) NULL
, [UserName] nvarchar(100) NULL
, [CommentContent] nvarchar(500) NULL
, [Agrees] int NULL
, [Disagrees] int NULL
, [Title] nvarchar(50) NULL
, [Description] nvarchar(500) NULL
, [Status] int NULL
, [CreateBy] nvarchar(50) NULL
, [CreatebyName] nvarchar(100) NULL
, [CreateDate] datetime NULL
, [LastUpdateBy] nvarchar(50) NULL
, [LastUpdateByName] nvarchar(100) NULL
, [LastUpdateDate] datetime NULL
, CONSTRAINT [PK_Comments] PRIMARY KEY ([ID])
);

ALTER TABLE NavigationWidget ADD ShowBasket BIT;

INSERT INTO [CMS_WidgetTemplate]
           ([Title]
           ,[GroupName]
           ,[PartialView]
           ,[AssemblyName]
           ,[ServiceTypeName]
           ,[ViewModelTypeName]
           ,[Thumbnail]
           ,[Order]
           ,[Description]
           ,[Status])
     VALUES
           ('评论箱'
           ,'1.通用'
           ,'Widget.Comments'
           ,'ZKEACMS.Message'
           ,'ZKEACMS.Message.Service.CommentsWidgetService'
           ,'ZKEACMS.Message.Models.CommentsWidget'
           ,'~/Plugins/ZKEACMS.Message/Content/Image/Widget.Comments.png'
           ,13
           ,null
           ,1);

INSERT INTO [Language] ([LanKey], [CultureName], [LanValue], [Module], [LanType]) VALUES ('Comments@Agrees', 'zh-CN', '赞同数', 'Comments', 'EntityProperty');
INSERT INTO [Language] ([LanKey], [CultureName], [LanValue], [Module], [LanType]) VALUES ('Comments@CommentContent', 'zh-CN', '评论内容', 'Comments', 'EntityProperty');
INSERT INTO [Language] ([LanKey], [CultureName], [LanValue], [Module], [LanType]) VALUES ('Comments@Disagrees', 'zh-CN', '反对数', 'Comments', 'EntityProperty');
INSERT INTO [Language] ([LanKey], [CultureName], [LanValue], [Module], [LanType]) VALUES ('Comments@PagePath', 'zh-CN', '页面地址', 'Comments', 'EntityProperty');
INSERT INTO [Language] ([LanKey], [CultureName], [LanValue], [Module], [LanType]) VALUES ('Comments@UserId', 'zh-CN', '登录名', 'Comments', 'EntityProperty');
INSERT INTO [Language] ([LanKey], [CultureName], [LanValue], [Module], [LanType]) VALUES ('Comments@UserName', 'zh-CN', '用户名', 'Comments', 'EntityProperty');
INSERT INTO [Language] ([LanKey], [CultureName], [LanValue], [Module], [LanType]) VALUES ('NavigationWidget@ShowBasket', 'zh-CN', '显示购物车？', 'NavigationWidget', 'EntityProperty');
INSERT INTO [Permission] ([PermissionKey], [RoleId], [Title], [Description], [Module]) VALUES ('Comments_Manage', 1, '管理评论', NULL, '留言评论');
INSERT INTO [Permission] ([PermissionKey], [RoleId], [Title], [Description], [Module]) VALUES ('Comments_View', 1, '查看评论', NULL, '留言评论');
