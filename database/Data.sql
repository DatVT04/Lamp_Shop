USE [lamp_shop]
GO
SET IDENTITY_INSERT [dbo].[users] ON 
GO
INSERT [dbo].[users] ([id], [username], [email], [password_hash], [full_name], [gender], [mobile], [avatar], [role], [status], [created_at], [updated_at]) VALUES (1, N'admin123', N'tphong610198@gmail.com', N'$2a$12$CuXL88lRV.caI3o.5ZB/wOM3mUPxEeVp7PnUYC9Tu6iefOfhTlfxO', N'Admin', N'male', N'0123456789', N'uploads/avatars/bb5cb37c-fb96-4a04-a5d6-7bd5732bf5b0.jpg', N'admin', N'active', CAST(N'2025-02-09T16:58:16.1666667' AS DateTime2), CAST(N'2025-02-09T17:12:48.3000000' AS DateTime2))
GO
INSERT [dbo].[users] ([id], [username], [email], [password_hash], [full_name], [gender], [mobile], [avatar], [role], [status], [created_at], [updated_at]) VALUES (2, N'phongthhe186443', N'phongthhe186443@fpt.edu.vn', N'$2a$10$mqTbeXOjwWftYcp3HvgbF.vynnSvUqQfBUY6wj7m7m/tiEnv/YYA6', N'Tran Hoai Phong (K18 HL)', N'other', NULL, N'https://lh3.googleusercontent.com/a/ACg8ocLrSqjCMqEhVL5SMILJ6OOpPyI5S64iKP29HhPEV9aIOgF0i-g=s96-c', N'customer', N'active', CAST(N'2025-02-09T17:02:23.6133333' AS DateTime2), CAST(N'2025-02-09T17:02:23.6133333' AS DateTime2))
GO
INSERT [dbo].[users] ([id], [username], [email], [password_hash], [full_name], [gender], [mobile], [avatar], [role], [status], [created_at], [updated_at]) VALUES (3, N'marketing123', N'huy412004@gmail.com', N'$2a$10$sYcqeKA5lzaWHHEHojLoxe378EtZni5873xBA8YfljCthxCADhmoy', N'Marketing', N'male', N'0987654321', N'https://img.freepik.com/premium-photo/customer-service-representative-digital-avatar-generative-ai_934475-9273.jpg?w=360', N'marketing', N'active', CAST(N'2025-02-10T03:04:56.3300000' AS DateTime2), CAST(N'2025-02-10T03:04:56.3300000' AS DateTime2))
GO
INSERT [dbo].[users] ([id], [username], [email], [password_hash], [full_name], [gender], [mobile], [avatar], [role], [status], [created_at], [updated_at]) VALUES (4, N'user123', N'user123@gmail.com', N'$2a$10$XFl8Zk5zSXQo/PjN4df.k.twXuumSIvYM7jLRqVcvx2heTFVyW0Ca', N'Khách 1', N'male', N'0912345678', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEONEP1EegBp0dESaBFaDbw8G9fJY_k7oY5A&s', N'customer', N'active', CAST(N'2025-02-10T03:04:56.3300000' AS DateTime2), CAST(N'2025-02-10T03:04:56.3300000' AS DateTime2))
GO
INSERT [dbo].[users] ([id], [username], [email], [password_hash], [full_name], [gender], [mobile], [avatar], [role], [status], [created_at], [updated_at]) VALUES (5, N'sale123', N'sale123@gmail.com', N'$2a$10$ojVPuuE5ZVLPE/wWOSRFIeNKLkBZh/CZeHE57ij4F.cfKYsdmIxAO', N'Sale', N'male', N'0978123456', N'https://img.freepik.com/premium-photo/customer-service-representative-digital-avatar-generative-ai_934475-9075.jpg', N'sale', N'active', CAST(N'2025-02-10T03:04:56.3300000' AS DateTime2), CAST(N'2025-02-10T03:04:56.3300000' AS DateTime2))
GO
INSERT [dbo].[users] ([id], [username], [email], [password_hash], [full_name], [gender], [mobile], [avatar], [role], [status], [created_at], [updated_at]) VALUES (6, N'user321', N'user321@gmail.com', N'$2a$10$7d0sV4kA8mSbQoJhGmROJumQnBeqtpzzMxz7yslGGf5Z1lhx85M7O', N'Khách 2', N'male', N'0934567890', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRl5nDZUl0qC61tJ7SVbzLmlO_jKALvNrV0iw&s', N'customer', N'active', CAST(N'2025-02-10T03:04:56.3300000' AS DateTime2), CAST(N'2025-02-10T03:04:56.3300000' AS DateTime2))
GO
INSERT [dbo].[users] ([id], [username], [email], [password_hash], [full_name], [gender], [mobile], [avatar], [role], [status], [created_at], [updated_at]) VALUES (7, N'user1234', N'XiaoDing@gmail.com', N'$2a$10$Yw.YHLgW3IAdZAvicADymOZ4CqopkkbD90.DW7m.0Nz3PxuF/pvsK', N'Khách 3', N'male', N'0956781234', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTd8RTFkScmVoIQoLsbDscznUGlMz4BMT7oGWYqr8-TJ2FuN55cES6KfCmAxSe1aBM6qYs&usqp=CAU', N'customer', N'active', CAST(N'2025-02-10T03:04:56.3300000' AS DateTime2), CAST(N'2025-03-29T17:43:12.3400000' AS DateTime2))
GO
INSERT [dbo].[users] ([id], [username], [email], [password_hash], [full_name], [gender], [mobile], [avatar], [role], [status], [created_at], [updated_at]) VALUES (8, N'user12345', N'Medusa@gmail.com', N'$2a$10$7Wjzn5r0OX2pcdowGvA39OBnpNP9.b4MvoaXH4terFmIpSN/htzqa', N'Khách 4', N'female', N'0923456789', N'https://png.pngtree.com/png-vector/20231019/ourlarge/pngtree-avatar-of-a-brunette-man-png-image_10214156.png', N'customer', N'active', CAST(N'2025-02-10T03:04:56.3300000' AS DateTime2), CAST(N'2025-02-10T03:04:56.3300000' AS DateTime2))
GO
INSERT [dbo].[users] ([id], [username], [email], [password_hash], [full_name], [gender], [mobile], [avatar], [role], [status], [created_at], [updated_at]) VALUES (9, N'user12346', N'CaiLin@gmail.com', N'$2a$10$de4mBMbt0qfpuKCs0jF1I.wHr5/dfWMYQikSJ8aJqbHyZ8qH2IxXu', N'Khách 5', N'female', N'0965432109', N'https://png.pngtree.com/png-clipart/20231020/original/pngtree-avatar-of-a-brunette-man-png-image_13379740.png', N'customer', N'pending', CAST(N'2025-02-10T03:04:56.3300000' AS DateTime2), CAST(N'2025-02-10T03:04:56.3300000' AS DateTime2))
GO
INSERT [dbo].[users] ([id], [username], [email], [password_hash], [full_name], [gender], [mobile], [avatar], [role], [status], [created_at], [updated_at]) VALUES (10, N'user123467', N'HaiBoDong@gmail.com', N'$2a$10$5l/p6PdL8crcmH0qAcniEuQGjrlNc1GYrSWKcYVeloYoxtqhczhOe', N'Khách 6', N'male', N'0998765432', N'https://static.vecteezy.com/ti/vetor-gratis/t2/14176992-jovem-homem-barbudo-gratis-vetor.jpg', N'customer', N'inactive', CAST(N'2025-02-10T03:04:56.3300000' AS DateTime2), CAST(N'2025-03-29T17:43:25.1266667' AS DateTime2))
GO
INSERT [dbo].[users] ([id], [username], [email], [password_hash], [full_name], [gender], [mobile], [avatar], [role], [status], [created_at], [updated_at]) VALUES (11, N'user3210', N'NalanYanran@gmail.com', N'$2a$10$.Aa9sv.fZvHA4HIS6vcfNuSGM.zlr3ldxMuo8FccCVDGIgjaYP8pq', N'Khách 7', N'female', N'0943216789', N'https://thumbs.dreamstime.com/b/retrato-de-um-homem-novo-com-barba-e-penteado-avatar-masculino-vetor-105082137.jpg', N'customer', N'inactive', CAST(N'2025-02-10T03:04:56.3300000' AS DateTime2), CAST(N'2025-02-10T03:04:56.3300000' AS DateTime2))
GO
INSERT [dbo].[users] ([id], [username], [email], [password_hash], [full_name], [gender], [mobile], [avatar], [role], [status], [created_at], [updated_at]) VALUES (12, N'user4321', N'GuYuan@gmail.com', N'$2a$10$JaWF8M.AaFAxaCcq7e2zK.TLravMOCQvxG3NXAAoKlDMVnL/PVzq6', N'Khách 8', N'male', N'0981234567', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSMELTwIC8sNsdL8iJDfpcvyZ0M08ktRXe9nd4dy2E2_KBfwlNiTCUyrTe5I-Dsz4s19b4&usqp=CAU', N'customer', N'active', CAST(N'2025-02-10T03:04:56.3300000' AS DateTime2), CAST(N'2025-02-10T03:04:56.3300000' AS DateTime2))
GO
INSERT [dbo].[users] ([id], [username], [email], [password_hash], [full_name], [gender], [mobile], [avatar], [role], [status], [created_at], [updated_at]) VALUES (13, N'user54321', N'GuXun@gmail.com', N'$2a$10$s.runNoG/32WCxknTJrbs.6oqxowlmPDAqgFdvEgs7xcOOYyrEbQW', N'Khách 9', N'male', N'0976543210', N'https://png.pngtree.com/png-clipart/20230930/original/pngtree-man-avatar-isolated-png-image_13022161.png', N'customer', N'active', CAST(N'2025-02-10T03:04:56.3300000' AS DateTime2), CAST(N'2025-02-10T03:04:56.3300000' AS DateTime2))
GO
INSERT [dbo].[users] ([id], [username], [email], [password_hash], [full_name], [gender], [mobile], [avatar], [role], [status], [created_at], [updated_at]) VALUES (14, N'user654321', N'YunShan@gmail.com', N'$2a$10$tdQRtCI1.aPdt.qbe2ee.eOrC2Tq2XQymcNE9z9.6GChMVWVRHGYy', N'Khách 10', N'male', N'0919876543', N'https://thuvienanime.net/wp-content/uploads/2023/07/van-son-van-lam-tong-thuvienanime-1.jpg', N'customer', N'inactive', CAST(N'2025-02-10T03:04:56.3300000' AS DateTime2), CAST(N'2025-02-10T03:04:56.3300000' AS DateTime2))
GO
INSERT [dbo].[users] ([id], [username], [email], [password_hash], [full_name], [gender], [mobile], [avatar], [role], [status], [created_at], [updated_at]) VALUES (15, N'user7654321', N'FaMa@gmail.com', N'$2a$10$T7bONEjEQCimeWWQGFDPzuhsN10hiSSbQFFugWa.MUOA93XyLYWTu', N'Khách 11', N'male', N'0921987654', N'https://i.pinimg.com/1200x/97/79/fc/9779fc310f1bf2f3ff9e17f14b5143e8.jpg', N'customer', N'pending', CAST(N'2025-02-10T03:04:56.3300000' AS DateTime2), CAST(N'2025-02-10T03:04:56.3300000' AS DateTime2))
GO
INSERT [dbo].[users] ([id], [username], [email], [password_hash], [full_name], [gender], [mobile], [avatar], [role], [status], [created_at], [updated_at]) VALUES (16, N'ur123', N'HuJia@gmail.com', N'$2a$10$3iPVuYw6ScoAZULHkjrkyOcMSbMzVWMiQH35Pnw.de1rnGNjxN2ku', N'Khách 12', N'female', N'0932198765', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1-CatM7FqGbzGe3AT3aq-D1l30ymqbT4TCw&s', N'customer', N'active', CAST(N'2025-02-10T03:04:56.3300000' AS DateTime2), CAST(N'2025-02-10T03:04:56.3300000' AS DateTime2))
GO
INSERT [dbo].[users] ([id], [username], [email], [password_hash], [full_name], [gender], [mobile], [avatar], [role], [status], [created_at], [updated_at]) VALUES (17, N'ur1234', N'LingYing@gmail.com', N'$2a$10$/wuejts3V40G0e/NGB/pOuM5ciGBGTL.fPPNoMDOvb.NVdQmgIjU.', N'Khách 13', N'male', N'0954321987', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ2JlHW6h7apfGjoJtk5PyJ7lyEn9hhSPCWKD4zMyakPR285cDGKLszvZGiGDz3bWx3IRI&usqp=CAU', N'customer', N'active', CAST(N'2025-02-10T03:04:56.3300000' AS DateTime2), CAST(N'2025-02-10T03:04:56.3300000' AS DateTime2))
GO
INSERT [dbo].[users] ([id], [username], [email], [password_hash], [full_name], [gender], [mobile], [avatar], [role], [status], [created_at], [updated_at]) VALUES (18, N'ur1235', N'YanXiao@gmail.com', N'$2a$10$7QRPlkWt96Ah6r.5Frgiku3/QCZpAwMDPyLuvurl61Uqij.fqJbTC', N'Khách 14', N'male', N'0965432198', N'https://i.pinimg.com/736x/97/43/df/9743df24110f180466d0247ba76e5415.jpg', N'customer', N'active', CAST(N'2025-02-10T03:04:56.3300000' AS DateTime2), CAST(N'2025-02-10T03:04:56.3300000' AS DateTime2))
GO
INSERT [dbo].[users] ([id], [username], [email], [password_hash], [full_name], [gender], [mobile], [avatar], [role], [status], [created_at], [updated_at]) VALUES (19, N'ur1236', N'QingLin@gmail.com', N'$2a$10$5UThIZ.2xCuTFxaq3Xtd4OQUDPPQLhsWWlbrWXJydo574exxXviKO', N'Khách 15', N'female', N'0976543219', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRP6wBKSzroOocvJhUH4Beh3q5bK02NU-zIJQ&s', N'customer', N'inactive', CAST(N'2025-02-10T03:04:56.3300000' AS DateTime2), CAST(N'2025-02-10T03:04:56.3300000' AS DateTime2))
GO
INSERT [dbo].[users] ([id], [username], [email], [password_hash], [full_name], [gender], [mobile], [avatar], [role], [status], [created_at], [updated_at]) VALUES (20, N'ur1237', N'XiaoLei@gmail.com', N'$2a$10$WIhlpSF/rOFJ06PxhnhQ7OLriyxm2rkxRKyq2ThvpkRtKQTlzDPcS', N'Khách 16', N'male', N'0987654329', N'https://img.tripi.vn/cdn-cgi/image/width=700,height=700/https://gcs.tripi.vn/public-tripi/tripi-feed/img/483123vwz/anh-mo-ta.png', N'customer', N'active', CAST(N'2025-02-10T03:04:56.3300000' AS DateTime2), CAST(N'2025-02-10T03:04:56.3300000' AS DateTime2))
GO
INSERT [dbo].[users] ([id], [username], [email], [password_hash], [full_name], [gender], [mobile], [avatar], [role], [status], [created_at], [updated_at]) VALUES (21, N'ur321', N'FengLei@gmail.com', N'$2a$10$f68ZbQbQru4.i8erDSO4quX27/d/Czq0jRBJXCbOmsHH/zE80tD8.', N'Khách 17', N'male', N'0998765431', N'https://cafebiz.cafebizcdn.vn/162123310254002176/2022/12/29/avatar-2-versus-thanos-cgi-1-1671044444279520813159-1672281093701-16722810940541552675226.jpg', N'customer', N'pending', CAST(N'2025-02-10T03:04:56.3300000' AS DateTime2), CAST(N'2025-02-10T03:04:56.3300000' AS DateTime2))
GO
INSERT [dbo].[users] ([id], [username], [email], [password_hash], [full_name], [gender], [mobile], [avatar], [role], [status], [created_at], [updated_at]) VALUES (22, N'ur4321', N'ZiYan@gmail.com', N'$2a$10$ky5Lacc8ObH4QwmJ8LGeauTWFq5CT2/cxQhM98ug/lSH4xGYU.J7i', N'Khách 18', N'female', N'0909876543', N'https://media.ngoisao.vn/news/2012/12/31/nghiengdau_3112.jpg', N'customer', N'active', CAST(N'2025-02-10T03:04:56.3300000' AS DateTime2), CAST(N'2025-02-10T03:04:56.3300000' AS DateTime2))
GO
INSERT [dbo].[users] ([id], [username], [email], [password_hash], [full_name], [gender], [mobile], [avatar], [role], [status], [created_at], [updated_at]) VALUES (23, N'datvthe186351', N'datvthe186351@fpt.edu.vn', N'accGoogle$2a$10$h44bRXTsQJQCici5AoAukOA5Ce2fTeBpM6lg/cZ.Nwv.rlR7Jrsi.', N'Vu Tien Dat (K18 HL)', N'other', NULL, N'https://lh3.googleusercontent.com/a/ACg8ocLQS4GRdIkgNSZsWOVpDwwFWXGhLH-yQipv1mlpgBm2-tQ_Af4=s96-c', N'customer', N'active', CAST(N'2025-03-29T03:29:25.0933333' AS DateTime2), CAST(N'2025-03-29T03:29:25.0933333' AS DateTime2))
GO
SET IDENTITY_INSERT [dbo].[users] OFF
GO
SET IDENTITY_INSERT [dbo].[cart] ON 
GO
INSERT [dbo].[cart] ([id], [user_id], [created_at]) VALUES (1, 1, CAST(N'2025-02-21T18:35:43.8400000' AS DateTime2))
GO
INSERT [dbo].[cart] ([id], [user_id], [created_at]) VALUES (2, 2, CAST(N'2025-02-21T18:35:43.8400000' AS DateTime2))
GO
INSERT [dbo].[cart] ([id], [user_id], [created_at]) VALUES (3, 3, CAST(N'2025-02-21T18:35:43.8400000' AS DateTime2))
GO
INSERT [dbo].[cart] ([id], [user_id], [created_at]) VALUES (4, 23, CAST(N'2025-03-29T03:29:25.1166667' AS DateTime2))
GO
INSERT [dbo].[cart] ([id], [user_id], [created_at]) VALUES (5, 4, CAST(N'2025-03-29T03:31:52.8700000' AS DateTime2))
GO
INSERT [dbo].[cart] ([id], [user_id], [created_at]) VALUES (6, 5, CAST(N'2025-03-29T16:42:37.0000000' AS DateTime2))
GO
INSERT [dbo].[cart] ([id], [user_id], [created_at]) VALUES (7, 6, CAST(N'2025-03-29T16:54:37.9000000' AS DateTime2))
GO
INSERT [dbo].[cart] ([id], [user_id], [created_at]) VALUES (8, 7, CAST(N'2025-03-29T16:54:46.2900000' AS DateTime2))
GO
INSERT [dbo].[cart] ([id], [user_id], [created_at]) VALUES (9, 8, CAST(N'2025-03-29T17:02:48.7966667' AS DateTime2))
GO
INSERT [dbo].[cart] ([id], [user_id], [created_at]) VALUES (10, 9, CAST(N'2025-03-29T17:02:56.4966667' AS DateTime2))
GO
INSERT [dbo].[cart] ([id], [user_id], [created_at]) VALUES (11, 12, CAST(N'2025-03-29T17:07:14.2566667' AS DateTime2))
GO
INSERT [dbo].[cart] ([id], [user_id], [created_at]) VALUES (12, 11, CAST(N'2025-03-29T17:07:22.4433333' AS DateTime2))
GO
SET IDENTITY_INSERT [dbo].[cart] OFF
GO
SET IDENTITY_INSERT [dbo].[categories] ON;
GO

-- Cấp 1: Danh mục chính
INSERT INTO categories (id, name, description, parent_id, level, status) VALUES
(1, N'Sản phẩm tranh vẽ', N'Đèn trang trí với họa tiết tranh vẽ truyền thống', NULL, 1, 'active'),
(2, N'Sản phẩm vải', N'Đèn làm từ vải cao cấp', NULL, 1, 'active'),
(3, N'Sản phẩm giấy dó', N'Đèn thủ công từ giấy dó truyền thống', NULL, 1, 'active');

-- Cấp 2: Danh mục chi tiết
-- Tranh vẽ
INSERT INTO categories (id, name, description, parent_id, level, status) VALUES
(4, N'Đèn ba chân', N'Đèn ba chân họa tiết tranh vẽ', 1, 2, 'active'),
(5, N'Đèn Tết', N'Đèn trang trí Tết với họa tiết truyền thống', 1, 2, 'active'),
(6, N'Đèn Đông Hồ', N'Đèn tranh Đông Hồ nghệ thuật', 1, 2, 'active');

-- Vải
INSERT INTO categories (id, name, description, parent_id, level, status) VALUES
(7, N'Đèn vải Linen tự nhiên', N'Đèn làm từ vải Linen cao cấp', 2, 2, 'active');

-- Giấy dó
INSERT INTO categories (id, name, description, parent_id, level, status) VALUES
(8, N'Đèn phô mai', N'Đèn giấy dó hình phô mai độc đáo', 3, 2, 'active'),
(9, N'Đèn bí', N'Đèn giấy dó hình quả bí', 3, 2, 'active'),
(10, N'Đèn bí dẹt', N'Đèn giấy dó hình bí dẹt', 3, 2, 'active'),
(11, N'Đèn chuông', N'Đèn giấy dó hình chuông treo', 3, 2, 'active'),
(12, N'Đèn mai dó', N'Đèn giấy dó họa tiết hoa mai', 3, 2, 'active'),
(13, N'Đèn đa giác', N'Đèn giấy dó thiết kế đa giác', 3, 2, 'active'),
(14, N'Đèn phao', N'Đèn giấy dó hình phao tròn', 3, 2, 'active');

SET IDENTITY_INSERT [dbo].[categories] OFF;
GO

SET IDENTITY_INSERT [dbo].[products] ON;
GO

-- Sản phẩm Tranh vẽ
INSERT INTO products (id, title, category_id, description, original_price, sale_price, thumbnail, status, is_combo, combo_group_id, created_at, updated_at) VALUES
(1, N'Đèn ba chân rồng', 4, N'<p><strong>Đèn Ba Chân – Hội Tụ Tinh Hoa Văn Hóa Việt</strong></p><p>Đèn ba chân với họa tiết rồng mang đậm bản sắc dân tộc, tạo điểm nhấn độc đáo cho không gian sống. Chất liệu khung gỗ bền chắc kết hợp vải canvas in sắc nét, ánh sáng vàng ấm dịu nhẹ. Phù hợp cho phòng khách, phòng làm việc hoặc quán cafe phong cách cổ điển.</p>', 350000, 450000, 'https://i.postimg.cc/K8KPdhCS/denbachan.jpg', 'active', 0, NULL, GETDATE(), GETDATE()),

(2, N'Đèn Tết vàng', 5, N'<p><strong>Đèn Tết – Rực Rỡ Sắc Xuân</strong></p><p>Đèn Tết truyền thống với họa tiết chữ Phúc, Lộc, Thọ mang ý nghĩa tốt đẹp. Chất liệu giấy cao cấp kết hợp khung tre, dễ dàng treo hoặc đặt bàn. Tạo không khí ấm áp cho dịp Tết Nguyên Đán.</p>', 150000, 200000, 'https://i.postimg.cc/Fzpt5LdQ/dentet.jpg', 'active', 0, NULL, GETDATE(), GETDATE()),

(3, N'Đèn Đông Hồ rự rỡ', 6, N'<p><strong>Đèn Đông Hồ – Nghệ Thuật Dân Gian</strong></p><p>Họa tiết tranh Đông Hồ truyền thống với hình gà trống báo hiệu bình minh mới. Đèn tròn, màu sắc rực rỡ, mang đến sự vui tươi và năng lượng tích cực cho không gian sống.</p>', 280000, 350000, 'https://i.postimg.cc/RFGGvQRX/dendongho.jpg', 'active', 0, NULL, GETDATE(), GETDATE());

-- Sản phẩm Vải
INSERT INTO products (id, title, category_id, description, original_price, sale_price, thumbnail, status, is_combo, combo_group_id, created_at, updated_at) VALUES

(4, N'Đèn vải Linen', 7, N'<p><strong>Đèn Linen tự nhiên</strong></p><p>Màu xám xanh nhẹ nhàng, mang hơi thở Nordic thanh lịch. Chất liệu vải Linen cao cấp, bền màu theo thời gian. Thiết kế đơn giản nhưng tinh tế, dễ dàng kết hợp với nhiều không gian.</p>', 480000, 580000, 'https://i.postimg.cc/bNhgZ93d/denvalinen.jpg', 'active', 0, NULL, GETDATE(), GETDATE());

-- Sản phẩm Giấy dó
INSERT INTO products (id, title, category_id, description, original_price, sale_price, thumbnail, status, is_combo, combo_group_id, created_at, updated_at) VALUES
(5, N'Đèn phô mai', 8, N'<p><strong>Đèn Phô Mai Giấy Dó – Độc Đáo & Thú Vị</strong></p><p>Hình dáng khối phô mai độc đáo, thu hút mọi ánh nhìn. Giấy dó thủ công truyền thống, màu vàng ấm áp. Phù hợp làm quà tặng hoặc trang trí quán cafe, nhà hàng.</p>', 320000, 400000, 'https://i.postimg.cc/pVqrj2BZ/denphomai.jpg', 'active', 0, NULL, GETDATE(), GETDATE()),

(6, N'Đèn bí', 9, N'<p><strong>Đèn Bí Giấy Dó – Ấm Áp Mùa Thu</strong></p><p>Hình quả bí với màu cam rực rỡ, mang hơi hướng mùa thu Tây Âu. Giấy dó mềm mại, ánh sáng vàng ấm dịu dàng. Có thể dùng trang trí Halloween hoặc thường xuyên.</p>', 250000, 320000, 'https://i.postimg.cc/MTzZc4fq/denbi.jpg', 'active', 0, NULL, GETDATE(), GETDATE()),

(7, N'Đèn bí dẹt', 10, N'<p><strong>Đèn Bí Dẹt – Phong Cách Nhật Bản</strong></p><p>Thiết kế bí dẹt thanh mảnh, mang phong cách Á Đông. Màu xanh nhạt dịu mắt, tạo không gian thư giãn. Giấy dó chất lượng cao, bền đẹp.</p>', 280000, 350000, 'https://i.postimg.cc/XYFns398/denbidet.jpg', 'active', 0, NULL, GETDATE(), GETDATE()),

(8, N'Đèn chuông', 11, N'<p><strong>Đèn Chuông Giấy Dó – Treo Trang Trí</strong></p><p>Hình chuông treo duyên dáng, màu trắng tinh khôi. Giấy dó mịn màng, ánh sáng nhẹ nhàng tạo bầu không khí lãng mạn. Thích hợp treo hành lang, ban công.</p>', 200000, 280000, 'https://i.postimg.cc/v8NMMDhw/denchuong.jpg', 'active', 0, NULL, GETDATE(), GETDATE()),

(9, N'Đèn mai dó', 12, N'<p><strong>Đèn Mai Dó – Sắc Xuân Rạng Rỡ</strong></p><p>Họa tiết hoa đào nở rộ trên nền giấy dó vàng. Mang không khí xuân về nhà, thích hợp trang trí Tết Nguyên Đán. Ánh sáng vàng ấm cúng.</p>', 260000, 330000, 'https://i.postimg.cc/dtCMY6DD/denmaido.jpg', 'active', 0, NULL, GETDATE(), GETDATE()),

(10, N'Đèn đa giác', 13, N'<p><strong>Đèn Đa Giác – Hiện Đại & Cá Tính</strong></p><p>Thiết kế đa giác độc đáo, mang phong cách công nghiệp. Giấy dó màu đen mạnh mẽ, tạo điểm nhấn nổi bật. Phù hợp không gian trẻ trung, năng động.</p>', 380000, 480000, 'https://i.postimg.cc/Bt9VbWtQ/dendagiac.jpg', 'active', 0, NULL, GETDATE(), GETDATE()),

(11, N'Đèn phao', 14, N'<p><strong>Đèn Phao Đỏ – Rực Rỡ & Nổi Bật</strong></p><p>Màu đỏ tươi sáng, tạo điểm nhấn ấn tượng. Giấy dó bền đẹp, ánh sáng vàng ấm. Thích hợp trang trí tiệc tùng hoặc không gian vui tươi.</p>', 230000, 300000, 'https://i.postimg.cc/PfwhXTRf/denphao.jpg', 'active', 0, NULL, GETDATE(), GETDATE());

SET IDENTITY_INSERT [dbo].[products] OFF;
GO

SET IDENTITY_INSERT [dbo].[product_sizes] ON;
GO

-- Sizes chung cho đèn
INSERT INTO product_sizes (id, product_id, size) VALUES
-- Đèn ba chân
(1, 1, N'30cm'), (2, 1, N'40cm'), (3, 1, N'50cm'),
(4, 2, N'30cm'), (5, 2, N'40cm'), (6, 2, N'50cm'),

-- Đèn Tết
(7, 3, N'20cm'), (8, 3, N'30cm'),
(9, 4, N'25cm'), (10, 4, N'35cm'),

-- Đèn Đông Hồ
(11, 5, N'40cm'), (12, 5, N'50cm'),

-- Đèn vải Linen
(13, 6, N'35cm'), (14, 6, N'45cm'),
(15, 7, N'35cm'), (16, 7, N'45cm'),

-- Đèn giấy dó
(17, 8, N'25cm'), (18, 8, N'35cm'),
(19, 9, N'30cm'), (20, 9, N'40cm'),
(21, 10, N'30cm'), (22, 10, N'40cm'),
(23, 11, N'25cm'), (24, 11, N'35cm');

SET IDENTITY_INSERT [dbo].[product_sizes] OFF;
GO

SET IDENTITY_INSERT [dbo].[product_colors] ON;
GO

-- Colors
INSERT INTO product_colors (id, product_id, color) VALUES
-- Đèn ba chân
(1, 1, N'Vàng đồng'), (2, 1, N'Nâu cổ điển'),
(3, 2, N'Trắng kem'), (4, 2, N'Xanh nhạt'),

-- Đèn Tết
(5, 3, N'Đỏ truyền thống'),
(6, 4, N'Đỏ cam'),

-- Đèn Đông Hồ
(7, 5, N'Đa sắc'),

-- Đèn vải
(8, 6, N'Trắng'), (9, 6, N'Kem'),
(10, 7, N'Xám xanh'), (11, 7, N'Xám nhạt'),

-- Đèn giấy dó
(12, 8, N'Vàng kem'),
(13, 9, N'Cam'), (14, 9, N'Vàng'),
(15, 10, N'Xanh mint'), (16, 10, N'Xanh ngọc'),
(17, 11, N'Trắng');

SET IDENTITY_INSERT [dbo].[product_colors] OFF;
GO

SET IDENTITY_INSERT [dbo].[product_variants] ON;
GO

INSERT INTO product_variants (id, product_id, size_id, color_id, stock_quantity, last_restock_date) VALUES
-- Đèn ba chân tranh Trống Đồng
(1, 1, 1, 1, 20, GETDATE()), (2, 1, 2, 1, 25, GETDATE()), (3, 1, 3, 1, 15, GETDATE()),
(4, 1, 1, 2, 18, GETDATE()), (5, 1, 2, 2, 22, GETDATE()), (6, 1, 3, 2, 12, GETDATE()),

-- Đèn ba chân sen
(7, 2, 4, 3, 25, GETDATE()), (8, 2, 5, 3, 30, GETDATE()), (9, 2, 6, 3, 20, GETDATE()),
(10, 2, 4, 4, 20, GETDATE()), (11, 2, 5, 4, 28, GETDATE()), (12, 2, 6, 4, 18, GETDATE()),

-- Đèn Tết lồng đỏ
(13, 3, 7, 5, 50, GETDATE()), (14, 3, 8, 5, 45, GETDATE()),

-- Đèn Tết cá chép
(15, 4, 9, 6, 40, GETDATE()), (16, 4, 10, 6, 35, GETDATE()),

-- Đèn Đông Hồ gà
(17, 5, 11, 7, 15, GETDATE()), (18, 5, 12, 7, 12, GETDATE()),

-- Đèn vải Linen trắng
(19, 6, 13, 8, 30, GETDATE()), (20, 6, 14, 8, 25, GETDATE()),
(21, 6, 13, 9, 28, GETDATE()), (22, 6, 14, 9, 22, GETDATE()),

-- Đèn vải Linen xám xanh
(23, 7, 15, 10, 25, GETDATE()), (24, 7, 16, 10, 20, GETDATE()),
(25, 7, 15, 11, 22, GETDATE()), (26, 7, 16, 11, 18, GETDATE()),

-- Đèn phô mai
(27, 8, 17, 12, 35, GETDATE()), (28, 8, 18, 12, 30, GETDATE()),

-- Đèn bí cam
(29, 9, 19, 13, 40, GETDATE()), (30, 9, 20, 13, 35, GETDATE()),
(31, 9, 19, 14, 38, GETDATE()), (32, 9, 20, 14, 32, GETDATE()),

-- Đèn bí dẹt xanh
(33, 10, 21, 15, 30, GETDATE()), (34, 10, 22, 15, 25, GETDATE()),
(35, 10, 21, 16, 28, GETDATE()), (36, 10, 22, 16, 22, GETDATE()),

-- Đèn chuông
(37, 11, 23, 17, 45, GETDATE()), (38, 11, 24, 17, 40, GETDATE());

SET IDENTITY_INSERT [dbo].[product_variants] OFF;
GO

SET IDENTITY_INSERT [dbo].[cart_items] ON 
GO
INSERT [dbo].[cart_items] ([id], [cart_id], [product_id], [variant_id], [quantity]) VALUES (1, 1, 1, 1, 2)
GO
INSERT [dbo].[cart_items] ([id], [cart_id], [product_id], [variant_id], [quantity]) VALUES (2, 2, 2, 2, 1)
GO
INSERT [dbo].[cart_items] ([id], [cart_id], [product_id], [variant_id], [quantity]) VALUES (3, 3, 3, 3, 1)
GO
INSERT [dbo].[cart_items] ([id], [cart_id], [product_id], [variant_id], [quantity]) VALUES (6, 5, 11, 37, 1)
GO
SET IDENTITY_INSERT [dbo].[cart_items] OFF
GO
SET IDENTITY_INSERT [dbo].[orders] ON 
GO
INSERT [dbo].[orders] ([id], [user_id], [status], [total_amount], [recipient_name], [recipient_email], [recipient_phone], [recipient_address], [shipping_code], [shiping_name], [notes], [created_at], [updated_at]) VALUES (1, 4, N'pending', CAST(1050000.00 AS Decimal(10, 2)), N'Nguyễn Văn A', N'user123@gmail.com', N'0866046581', N'thôn 1, Xã Ngọc Hồi, Huyện Thanh Trì, Thành phố Hà Nội', NULL, NULL, N'ORD1743241428405538', CAST(N'2025-03-29T16:43:48.4100000' AS DateTime2), CAST(N'2025-03-29T16:43:48.4100000' AS DateTime2))
GO
INSERT [dbo].[orders] ([id], [user_id], [status], [total_amount], [recipient_name], [recipient_email], [recipient_phone], [recipient_address], [shipping_code], [shiping_name], [notes], [created_at], [updated_at]) VALUES (2, 4, N'shipping', CAST(711000.00 AS Decimal(10, 2)), N'Nguyễn Văn A', N'user123@gmail.com', N'0866046581', N'thôn 1, Xã Ngọc Hồi, Huyện Thanh Trì, Thành phố Hà Nội', NULL, NULL, N'ORD1743241470259289', CAST(N'2025-03-29T16:44:30.2566667' AS DateTime2), CAST(N'2025-03-29T16:44:48.7100000' AS DateTime2))
GO
INSERT [dbo].[orders] ([id], [user_id], [status], [total_amount], [recipient_name], [recipient_email], [recipient_phone], [recipient_address], [shipping_code], [shiping_name], [notes], [created_at], [updated_at]) VALUES (3, 4, N'processing', CAST(530000.00 AS Decimal(10, 2)), N'Nguyễn Văn A', N'user123@gmail.com', N'0866046581', N'thôn 1, Xã Ngọc Hồi, Huyện Thanh Trì, Thành phố Hà Nội', NULL, NULL, N'ORD1743241514599980', CAST(N'2025-03-29T16:45:14.6000000' AS DateTime2), CAST(N'2025-03-29T16:45:23.3066667' AS DateTime2))
GO
INSERT [dbo].[orders] ([id], [user_id], [status], [total_amount], [recipient_name], [recipient_email], [recipient_phone], [recipient_address], [shipping_code], [shiping_name], [notes], [created_at], [updated_at]) VALUES (4, 4, N'completed', CAST(1300000.00 AS Decimal(10, 2)), N'Nguyễn Văn A', N'user123@gmail.com', N'0866046581', N'thôn 1, Xã Ngọc Hồi, Huyện Thanh Trì, Thành phố Hà Nội', NULL, NULL, N'ORD1743241570395435', CAST(N'2025-03-29T16:46:10.3933333' AS DateTime2), CAST(N'2025-03-29T16:46:57.8066667' AS DateTime2))
GO
INSERT [dbo].[orders] ([id], [user_id], [status], [total_amount], [recipient_name], [recipient_email], [recipient_phone], [recipient_address], [shipping_code], [shiping_name], [notes], [created_at], [updated_at]) VALUES (5, 4, N'returned', CAST(225000.00 AS Decimal(10, 2)), N'Nguyễn Văn A', N'user123@gmail.com', N'0866046581', N'thôn 1, Xã Ngọc Hồi, Huyện Thanh Trì, Thành phố Hà Nội', NULL, NULL, N'ORD1743241646245155', CAST(N'2025-03-29T16:47:26.2466667' AS DateTime2), CAST(N'2025-03-29T16:47:58.3800000' AS DateTime2))
GO
INSERT [dbo].[orders] ([id], [user_id], [status], [total_amount], [recipient_name], [recipient_email], [recipient_phone], [recipient_address], [shipping_code], [shiping_name], [notes], [created_at], [updated_at]) VALUES (6, 4, N'completed', CAST(252000.00 AS Decimal(10, 2)), N'Nguyễn Văn A', N'user123@gmail.com', N'0866046581', N'thôn 1, Xã Ngọc Hồi, Huyện Thanh Trì, Thành phố Hà Nội', NULL, NULL, N'ORD1743241725948883', CAST(N'2025-03-29T16:48:45.9466667' AS DateTime2), CAST(N'2025-03-29T16:49:21.6766667' AS DateTime2))
GO
INSERT [dbo].[orders] ([id], [user_id], [status], [total_amount], [recipient_name], [recipient_email], [recipient_phone], [recipient_address], [shipping_code], [shiping_name], [notes], [created_at], [updated_at]) VALUES (7, 4, N'completed', CAST(510000.00 AS Decimal(10, 2)), N'Nguyễn Thi B', N'user123@gmail.com', N'0866046585', N'thôn 4, Phường Duyệt Trung, Thành phố Cao Bằng, Tỉnh Cao Bằng', NULL, NULL, N'ORD1743241840947177', CAST(N'2025-03-29T16:50:40.9466667' AS DateTime2), CAST(N'2025-03-29T16:51:17.9600000' AS DateTime2))
GO
INSERT [dbo].[orders] ([id], [user_id], [status], [total_amount], [recipient_name], [recipient_email], [recipient_phone], [recipient_address], [shipping_code], [shiping_name], [notes], [created_at], [updated_at]) VALUES (8, 4, N'completed', CAST(830000.00 AS Decimal(10, 2)), N'Nguyễn Văn C', N'user123@gmail.com', N'0961004959', N'thôn 5, Xã Mông Ân, Huyện Bảo Lâm, Tỉnh Cao Bằng', NULL, NULL, N'ORD1743241990370593', CAST(N'2025-03-29T16:53:10.3700000' AS DateTime2), CAST(N'2025-03-29T16:53:57.3333333' AS DateTime2))
GO
INSERT [dbo].[orders] ([id], [user_id], [status], [total_amount], [recipient_name], [recipient_email], [recipient_phone], [recipient_address], [shipping_code], [shiping_name], [notes], [created_at], [updated_at]) VALUES (9, 6, N'completed', CAST(1430000.00 AS Decimal(10, 2)), N'Nguyen Hanh Nhan', N'user321@gmail.com', N'0866046598', N'thôn 6, Xã Mông Ân, Huyện Bảo Lâm, Tỉnh Cao Bằng', NULL, NULL, N'ORD1743242141730751', CAST(N'2025-03-29T16:55:41.7300000' AS DateTime2), CAST(N'2025-03-29T16:56:07.8400000' AS DateTime2))
GO
INSERT [dbo].[orders] ([id], [user_id], [status], [total_amount], [recipient_name], [recipient_email], [recipient_phone], [recipient_address], [shipping_code], [shiping_name], [notes], [created_at], [updated_at]) VALUES (10, 6, N'completed', CAST(580000.00 AS Decimal(10, 2)), N'Nguyen Hanh Nhan', N'user321@gmail.com', N'0866046598', N'thôn 6, Xã Mông Ân, Huyện Bảo Lâm, Tỉnh Cao Bằng', NULL, NULL, N'ORD1743242411259913', CAST(N'2025-03-29T17:00:11.2600000' AS DateTime2), CAST(N'2025-03-29T17:01:10.2233333' AS DateTime2))
GO
INSERT [dbo].[orders] ([id], [user_id], [status], [total_amount], [recipient_name], [recipient_email], [recipient_phone], [recipient_address], [shipping_code], [shiping_name], [notes], [created_at], [updated_at]) VALUES (11, 6, N'pending', CAST(180000.00 AS Decimal(10, 2)), N'Nguyen Hanh Nhan', N'user321@gmail.com', N'0866046598', N'thôn 6, Xã Mông Ân, Huyện Bảo Lâm, Tỉnh Cao Bằng', NULL, NULL, N'ORD1743242501646465', CAST(N'2025-03-29T17:01:41.6466667' AS DateTime2), CAST(N'2025-03-29T17:01:41.6466667' AS DateTime2))
GO
INSERT [dbo].[orders] ([id], [user_id], [status], [total_amount], [recipient_name], [recipient_email], [recipient_phone], [recipient_address], [shipping_code], [shiping_name], [notes], [created_at], [updated_at]) VALUES (12, 6, N'processing', CAST(260000.00 AS Decimal(10, 2)), N'Nguyen Hanh Nhan', N'user321@gmail.com', N'0866046598', N'thôn 6, Xã Mông Ân, Huyện Bảo Lâm, Tỉnh Cao Bằng', NULL, NULL, N'ORD1743242522880742', CAST(N'2025-03-29T17:02:02.8800000' AS DateTime2), CAST(N'2025-03-29T17:02:13.7933333' AS DateTime2))
GO
INSERT [dbo].[orders] ([id], [user_id], [status], [total_amount], [recipient_name], [recipient_email], [recipient_phone], [recipient_address], [shipping_code], [shiping_name], [notes], [created_at], [updated_at]) VALUES (13, 8, N'completed', CAST(1380000.00 AS Decimal(10, 2)), N'Nguyen Van Anh', N'Medusa@gmail.com', N'0866046585', N'thôn 4, Phường Trần Phú, Thành phố Hà Giang, Tỉnh Hà Giang', NULL, NULL, N'ORD1743242625696490', CAST(N'2025-03-29T17:03:45.6933333' AS DateTime2), CAST(N'2025-03-29T17:04:09.4933333' AS DateTime2))
GO
INSERT [dbo].[orders] ([id], [user_id], [status], [total_amount], [recipient_name], [recipient_email], [recipient_phone], [recipient_address], [shipping_code], [shiping_name], [notes], [created_at], [updated_at]) VALUES (14, 8, N'shipping', CAST(180000.00 AS Decimal(10, 2)), N'Nguyen Van Anh', N'Medusa@gmail.com', N'0866046585', N'thôn 4, Phường Trần Phú, Thành phố Hà Giang, Tỉnh Hà Giang', NULL, NULL, N'ORD1743242680246480', CAST(N'2025-03-29T17:04:40.2466667' AS DateTime2), CAST(N'2025-03-29T17:04:59.4266667' AS DateTime2))
GO
INSERT [dbo].[orders] ([id], [user_id], [status], [total_amount], [recipient_name], [recipient_email], [recipient_phone], [recipient_address], [shipping_code], [shiping_name], [notes], [created_at], [updated_at]) VALUES (15, 8, N'cancelled', CAST(445000.00 AS Decimal(10, 2)), N'Nguyen Van Anh', N'Medusa@gmail.com', N'0866046585', N'thôn 4, Phường Trần Phú, Thành phố Hà Giang, Tỉnh Hà Giang', NULL, NULL, N'ORD1743242748011878', CAST(N'2025-03-29T17:05:48.0100000' AS DateTime2), CAST(N'2025-03-29T17:06:00.9800000' AS DateTime2))
GO
INSERT [dbo].[orders] ([id], [user_id], [status], [total_amount], [recipient_name], [recipient_email], [recipient_phone], [recipient_address], [shipping_code], [shiping_name], [notes], [created_at], [updated_at]) VALUES (16, 8, N'returned', CAST(295000.00 AS Decimal(10, 2)), N'Nguyen Van Anh', N'Medusa@gmail.com', N'0866046585', N'thôn 4, Phường Trần Phú, Thành phố Hà Giang, Tỉnh Hà Giang', NULL, NULL, N'ORD1743242790299989', CAST(N'2025-03-29T17:06:30.3000000' AS DateTime2), CAST(N'2025-03-29T17:06:52.3733333' AS DateTime2))
GO
INSERT [dbo].[orders] ([id], [user_id], [status], [total_amount], [recipient_name], [recipient_email], [recipient_phone], [recipient_address], [shipping_code], [shiping_name], [notes], [created_at], [updated_at]) VALUES (17, 12, N'completed', CAST(900000.00 AS Decimal(10, 2)), N'Nguyen Hong Hanh', N'GuYuan@gmail.com', N'0961004935', N'thôn 5, Xã Quảng Khê, Huyện Ba Bể, Tỉnh Bắc Kạn', NULL, NULL, N'ORD1743242886766576', CAST(N'2025-03-29T17:08:06.7633333' AS DateTime2), CAST(N'2025-03-29T17:08:40.9600000' AS DateTime2))
GO
INSERT [dbo].[orders] ([id], [user_id], [status], [total_amount], [recipient_name], [recipient_email], [recipient_phone], [recipient_address], [shipping_code], [shiping_name], [notes], [created_at], [updated_at]) VALUES (18, 12, N'completed', CAST(3230000.00 AS Decimal(10, 2)), N'Nguyen Hong Hanh', N'GuYuan@gmail.com', N'0961004935', N'thôn 5, Xã Quảng Khê, Huyện Ba Bể, Tỉnh Bắc Kạn', NULL, NULL, N'ORD1743243013931542', CAST(N'2025-03-29T17:10:13.9300000' AS DateTime2), CAST(N'2025-03-29T17:10:40.6600000' AS DateTime2))
GO
INSERT [dbo].[orders] ([id], [user_id], [status], [total_amount], [recipient_name], [recipient_email], [recipient_phone], [recipient_address], [shipping_code], [shiping_name], [notes], [created_at], [updated_at]) VALUES (19, 12, N'cancelled', CAST(550000.00 AS Decimal(10, 2)), N'Nguyen Hong Hanh', N'GuYuan@gmail.com', N'0961004935', N'thôn 5, Xã Quảng Khê, Huyện Ba Bể, Tỉnh Bắc Kạn', NULL, NULL, N'ORD1743243064277146', CAST(N'2025-03-29T17:11:04.2766667' AS DateTime2), CAST(N'2025-03-29T17:11:08.6900000' AS DateTime2))
GO
INSERT [dbo].[orders] ([id], [user_id], [status], [total_amount], [recipient_name], [recipient_email], [recipient_phone], [recipient_address], [shipping_code], [shiping_name], [notes], [created_at], [updated_at]) VALUES (20, 7, N'completed', CAST(578000.00 AS Decimal(10, 2)), N'Nguyễn Thi D', N'XiaoDing@gmail.com', N'0866046543', N'thôn 3, Phường Ngọc Hà, Thành phố Hà Giang, Tỉnh Hà Giang', NULL, NULL, N'ORD1743245078046293', CAST(N'2025-03-29T17:44:38.0466667' AS DateTime2), CAST(N'2025-03-29T17:45:39.6066667' AS DateTime2))
GO
INSERT [dbo].[orders] ([id], [user_id], [status], [total_amount], [recipient_name], [recipient_email], [recipient_phone], [recipient_address], [shipping_code], [shiping_name], [notes], [created_at], [updated_at]) VALUES (21, 7, N'completed', CAST(1770000.00 AS Decimal(10, 2)), N'Nguyễn Thi D', N'XiaoDing@gmail.com', N'0866046543', N'thôn 3, Phường Ngọc Hà, Thành phố Hà Giang, Tỉnh Hà Giang', NULL, NULL, N'ORD1743245281309826', CAST(N'2025-03-29T17:48:01.3066667' AS DateTime2), CAST(N'2025-03-29T17:48:29.0633333' AS DateTime2))
GO
INSERT [dbo].[orders] ([id], [user_id], [status], [total_amount], [recipient_name], [recipient_email], [recipient_phone], [recipient_address], [shipping_code], [shiping_name], [notes], [created_at], [updated_at]) VALUES (22, 6, N'completed', CAST(268000.00 AS Decimal(10, 2)), N'Nguyen Hanh Nhan', N'user321@gmail.com', N'0866046598', N'thôn 6, Xã Mông Ân, Huyện Bảo Lâm, Tỉnh Cao Bằng', NULL, NULL, N'ORD174324554941174', CAST(N'2025-03-29T17:52:29.4100000' AS DateTime2), CAST(N'2025-03-29T17:52:50.5066667' AS DateTime2))
GO
INSERT [dbo].[orders] ([id], [user_id], [status], [total_amount], [recipient_name], [recipient_email], [recipient_phone], [recipient_address], [shipping_code], [shiping_name], [notes], [created_at], [updated_at]) VALUES (23, 4, N'pending_pay', CAST(480000.00 AS Decimal(10, 2)), N'Nguyễn Văn A', N'user123@gmail.com', N'0866046581', N'thôn 1, Xã Ngọc Hồi, Huyện Thanh Trì, Thành phố Hà Nội', NULL, NULL, N'ORD17432534094115', CAST(N'2025-03-29T20:03:29.4166667' AS DateTime2), CAST(N'2025-03-29T20:03:29.4766667' AS DateTime2))
GO
INSERT [dbo].[orders] ([id], [user_id], [status], [total_amount], [recipient_name], [recipient_email], [recipient_phone], [recipient_address], [shipping_code], [shiping_name], [notes], [created_at], [updated_at]) VALUES (24, 4, N'processing', CAST(225000.00 AS Decimal(10, 2)), N'Nguyễn Văn C', N'user123@gmail.com', N'0961004959', N'thôn 5, Xã Mông Ân, Huyện Bảo Lâm, Tỉnh Cao Bằng', NULL, NULL, N'ORD1743253488997649', CAST(N'2025-03-29T20:04:48.9966667' AS DateTime2), CAST(N'2025-03-29T20:04:49.0233333' AS DateTime2))
GO
INSERT [dbo].[orders] ([id], [user_id], [status], [total_amount], [recipient_name], [recipient_email], [recipient_phone], [recipient_address], [shipping_code], [shiping_name], [notes], [created_at], [updated_at]) VALUES (25, 4, N'completed', CAST(237000.00 AS Decimal(10, 2)), N'Nguyễn Văn C', N'user123@gmail.com', N'0961004959', N'thôn 5, Xã Mông Ân, Huyện Bảo Lâm, Tỉnh Cao Bằng', NULL, NULL, N'ORD1743253560350921', CAST(N'2025-03-29T20:06:00.3500000' AS DateTime2), CAST(N'2025-03-29T20:06:27.8500000' AS DateTime2))
GO
INSERT [dbo].[orders] ([id], [user_id], [status], [total_amount], [recipient_name], [recipient_email], [recipient_phone], [recipient_address], [shipping_code], [shiping_name], [notes], [created_at], [updated_at]) VALUES (26, 4, N'returned', CAST(180000.00 AS Decimal(10, 2)), N'Nguyễn Thi B', N'user123@gmail.com', N'0866046585', N'thôn 4, Phường Duyệt Trung, Thành phố Cao Bằng, Tỉnh Cao Bằng', NULL, NULL, N'ORD1743253679026823', CAST(N'2025-03-29T20:07:59.0233333' AS DateTime2), CAST(N'2025-03-29T20:08:25.3466667' AS DateTime2))
GO
SET IDENTITY_INSERT [dbo].[orders] OFF
GO

SET IDENTITY_INSERT [dbo].[order_items] ON
GO
INSERT INTO [dbo].[order_items]
(id, order_id, product_id, product_name, product_image, variant_name, quantity, unit_price_at_order)
VALUES
(1, 1, 1, N'Đèn ba chân', N'https://i.postimg.cc/K8KPdhCS/denbachan.jpg', N'40cm - Vàng đồng', 2, 450000),
(2, 1, 5, N'Đèn phô mai', N'https://i.postimg.cc/pVqrj2BZ/denphomai.jpg', N'35cm - Vàng kem', 1, 400000),

(3, 2, 4, N'Đèn vải Linen', N'https://i.postimg.cc/bNhgZ93d/denvalinen.jpg', N'45cm - Trắng', 1, 580000),
(4, 2, 2, N'Đèn Tết', N'https://i.postimg.cc/Fzpt5LdQ/dentet.jpg', N'30cm - Đỏ', 1, 200000),

(5, 3, 10, N'Đèn đa giác', N'https://i.postimg.cc/Bt9VbWtQ/dendagiac.jpg', N'40cm - Đen', 1, 480000),

(6, 4, 1, N'Đèn ba chân', N'https://i.postimg.cc/K8KPdhCS/denbachan.jpg', N'50cm - Trắng kem', 2, 450000),
(7, 4, 3, N'Đèn Đông Hồ', N'https://i.postimg.cc/RFGGvQRX/dendongho.jpg', N'50cm - Đa sắc', 1, 350000),

(8, 5, 11, N'Đèn phao', N'https://i.postimg.cc/PfwhXTRf/denphao.jpg', N'35cm - Đỏ', 1, 300000),

(9, 6, 8, N'Đèn chuông', N'https://i.postimg.cc/v8NMMDhw/denchuong.jpg', N'30cm - Trắng', 1, 280000),
(10, 6, 7, N'Đèn bí dẹt', N'https://i.postimg.cc/XYFns398/denbidet.jpg', N'30cm - Xanh', 2, 350000),

(11, 7, 9, N'Đèn mai dó', N'https://i.postimg.cc/dtCMY6DD/denmaido.jpg', N'45cm - Vàng', 1, 330000),

(12, 8, 6, N'Đèn bí', N'https://i.postimg.cc/MTzZc4fq/denbi.jpg', N'40cm - Cam', 1, 320000);

SET IDENTITY_INSERT [dbo].[order_items] OFF
GO


SET IDENTITY_INSERT [dbo].[feedback] ON
GO
INSERT [dbo].[feedback] ([id], [order_item_id], [user_id], [rating], [comment], [status], [created_at], [updated_at]) VALUES
(1, 1, 4, 5, N'Đèn ba chân rất đẹp, họa tiết sắc nét, ánh sáng ấm áp dễ chịu. Đặt phòng khách sang trọng hẳn lên!', N'approved', GETDATE(), GETDATE()),
(2, 3, 4, 4, N'Đèn vải Linen trắng thiết kế tối giản, ánh sáng dịu nhẹ. Chỉ hơi dễ bám bụi nhưng rất hài lòng.', N'approved', GETDATE(), GETDATE()),
(3, 5, 6, 5, N'Đèn đa giác giấy dó đen nhìn rất nghệ thuật, treo quán cà phê cực kỳ hợp.', N'approved', GETDATE(), GETDATE()),
(4, 8, 5, 4, N'Đèn phao đỏ đẹp, ánh sáng ấm, giao hàng nhanh.', N'approved', GETDATE(), GETDATE()),
(5, 10, 8, 5, N'Đèn lồng tròn giấy dó trắng treo ban công rất chill.', N'approved', GETDATE(), GETDATE()),
(6, 11, 4, 4, N'Đèn chóp nhọn thiết kế lạ mắt, ánh sáng dịu.', N'approved', GETDATE(), GETDATE());
SET IDENTITY_INSERT [dbo].[feedback] OFF
GO

SET IDENTITY_INSERT [dbo].[feedback_reply] ON
GO
INSERT [dbo].[feedback_reply] ([id], [feedback_id], [user_id], [comment], [created_at], [updated_at]) VALUES
(1, 1, 3, N'Cảm ơn anh/chị đã đánh giá! Rất vui khi đèn cá chép làm nhà mình thêm sắc xuân! ✨❤️', GETDATE(), GETDATE()),
(2, 2, 3, N'Cảm ơn anh/chị! Shop rất vui vì sản phẩm đáp ứng mong đợi 😊', GETDATE(), GETDATE()),
(3, 3, 3, N'Đèn đa giác là dòng decor được nhiều quán yêu thích ạ!', GETDATE(), GETDATE()),
(4, 4, 3, N'Rất vui khi anh/chị hài lòng, mong được phục vụ lần sau!', GETDATE(), GETDATE()),
(5, 5, 3, N'Cảm ơn feedback dễ thương của anh/chị ❤️', GETDATE(), GETDATE()),
(6, 6, 3, N'Shop sẽ cải thiện hơn nữa, cảm ơn góp ý!', GETDATE(), GETDATE());
SET IDENTITY_INSERT [dbo].[feedback_reply] OFF
GO

SET IDENTITY_INSERT [dbo].[posts] ON;
GO

INSERT INTO posts (id, title, thumbnail, summary, content, author_id, is_featured, status, created_at, updated_at) VALUES
(1, N'Nghệ thuật làm đèn giấy dó truyền thống', 
'https://i.postimg.cc/zGw5jy6r/nghethuatlamden.jpg',
N'Khám phá quy trình làm đèn giấy dó thủ công truyền thống của Việt Nam...',
N'<p>Giấy dó là loại giấy thủ công truyền thống được làm từ vỏ cây dó. Nghề làm đèn giấy dó đã có từ rất lâu đời tại Việt Nam, đặc biệt phát triển ở các làng nghề như Bắc Ninh, Hưng Yên. Quy trình làm đèn giấy dó đòi hỏi sự khéo léo và tỉ mỉ qua nhiều công đoạn: từ thu hoạch cây dó, xử lý vỏ, đập giấy, phơi khô đến tạo hình và trang trí. Mỗi chiếc đèn giấy dó không chỉ là sản phẩm thủ công mà còn mang đậm giá trị văn hóa, nghệ thuật dân gian Việt Nam.</p>',
3, 1, 'published', GETDATE(), GETDATE()),

(2, N'Xu hướng đèn trang trí nội thất 2025',
'https://i.postimg.cc/7ZXP4C94/xuhuongden.jpg',
N'Những xu hướng đèn trang trí hot nhất năm 2025...',
N'<p>Năm 2025, xu hướng đèn trang trí chú trọng vào sự kết hợp giữa phong cách truyền thống và hiện đại. Các loại đèn vải Linen tự nhiên, đèn giấy dó thủ công ngày càng được ưa chuộng nhờ tính thân thiện với môi trường. Màu sắc trung tính như trắng, be, xám xanh vẫn thống trị, nhưng các gam màu ấm như vàng đồng, cam đất cũng tạo điểm nhấn độc đáo. Đèn treo thả, đèn ba chân và đèn hình học đa giác là những lựa chọn được yêu thích.</p>',
3,1, 'published', GETDATE(), GETDATE()),
(3, N'Cách chọn đèn phù hợp với từng không gian',
'https://i.postimg.cc/t4RyBqjr/cachchonden.jpg',
N'Hướng dẫn chi tiết cách lựa chọn đèn cho phòng khách, phòng ngủ, bếp...',
N'<p>Việc chọn đèn phù hợp với từng không gian trong nhà rất quan trọng. Phòng khách nên chọn đèn chùm hoặc đèn trần lớn để tạo điểm nhấn. Phòng ngủ nên dùng đèn ngủ, đèn bàn với ánh sáng vàng ấm giúp thư giãn. Bếp cần ánh sáng trắng sáng để nấu nướng an toàn. Phòng làm việc nên có đèn bàn chống lóa, ánh sáng trắng tập trung. Ngoài ra, cần chú ý đến kích thước không gian, chiều cao trần nhà và phong cách trang trí chung của ngôi nhà.</p>',
3, 0, 'published', GETDATE(), GETDATE());
SET IDENTITY_INSERT [dbo].[posts] OFF;
GO

SET IDENTITY_INSERT [dbo].[customer_contact_history] ON 
GO
INSERT [dbo].[customer_contact_history] ([id], [user_id], [customer_type], [email], [full_name], [gender], [mobile], [total_purchases], [total_spend], [updated_at]) VALUES (1, 4, N'vip', N'user123@gmail.com', N'Nguyễn Văn A', N'male', N'0866046581', 2, CAST(1552000.00 AS Decimal(10, 2)), CAST(N'2025-03-29T16:49:21.6900000' AS DateTime2))
GO
INSERT [dbo].[customer_contact_history] ([id], [user_id], [customer_type], [email], [full_name], [gender], [mobile], [total_purchases], [total_spend], [updated_at]) VALUES (2, 4, N'normal', N'user123@gmail.com', N'Nguyễn Thi B', N'male', N'0866046585', 1, CAST(510000.00 AS Decimal(10, 2)), CAST(N'2025-03-29T16:51:17.9633333' AS DateTime2))
GO
INSERT [dbo].[customer_contact_history] ([id], [user_id], [customer_type], [email], [full_name], [gender], [mobile], [total_purchases], [total_spend], [updated_at]) VALUES (3, 4, N'vip', N'user123@gmail.com', N'Nguyễn Văn C', N'male', N'0961004959', 2, CAST(1067000.00 AS Decimal(10, 2)), CAST(N'2025-03-29T20:06:27.8700000' AS DateTime2))
GO
INSERT [dbo].[customer_contact_history] ([id], [user_id], [customer_type], [email], [full_name], [gender], [mobile], [total_purchases], [total_spend], [updated_at]) VALUES (4, 6, N'vip', N'user321@gmail.com', N'Nguyen Hanh Nhan', N'male', N'0866046598', 3, CAST(2278000.00 AS Decimal(10, 2)), CAST(N'2025-03-29T17:52:50.5100000' AS DateTime2))
GO
INSERT [dbo].[customer_contact_history] ([id], [user_id], [customer_type], [email], [full_name], [gender], [mobile], [total_purchases], [total_spend], [updated_at]) VALUES (5, 8, N'vip', N'Medusa@gmail.com', N'Nguyen Van Anh', N'female', N'0866046585', 1, CAST(1380000.00 AS Decimal(10, 2)), CAST(N'2025-03-29T17:04:09.5000000' AS DateTime2))
GO
INSERT [dbo].[customer_contact_history] ([id], [user_id], [customer_type], [email], [full_name], [gender], [mobile], [total_purchases], [total_spend], [updated_at]) VALUES (6, 12, N'vip', N'GuYuan@gmail.com', N'Nguyen Hong Hanh', N'male', N'0961004935', 2, CAST(4130000.00 AS Decimal(10, 2)), CAST(N'2025-03-29T17:10:40.6700000' AS DateTime2))
GO
INSERT [dbo].[customer_contact_history] ([id], [user_id], [customer_type], [email], [full_name], [gender], [mobile], [total_purchases], [total_spend], [updated_at]) VALUES (7, 7, N'vip', N'XiaoDing@gmail.com', N'Nguyễn Thi D', N'male', N'0866046543', 2, CAST(2348000.00 AS Decimal(10, 2)), CAST(N'2025-03-29T17:48:29.0766667' AS DateTime2))
GO
SET IDENTITY_INSERT [dbo].[customer_contact_history] OFF
GO
SET IDENTITY_INSERT [dbo].[tokenPassword] ON 
GO
INSERT [dbo].[tokenPassword] ([id], [token], [expiryTime], [isUsed], [UserID]) VALUES (2, N'dfe99b7b-3adc-4263-b819-ebca71ff6b2a', CAST(N'2025-02-09T17:41:58.857' AS DateTime), 1, 1)
GO
SET IDENTITY_INSERT [dbo].[tokenPassword] OFF
GO
SET IDENTITY_INSERT [dbo].[user_addresses] ON 
GO
INSERT [dbo].[user_addresses] ([id], [user_id], [recipient_name], [phone], [address], [is_default]) VALUES (1, 4, N'Nguyễn Văn A', N'0866046581', N'thôn 1, Xã Ngọc Hồi, Huyện Thanh Trì, Thành phố Hà Nội', 1)
GO
INSERT [dbo].[user_addresses] ([id], [user_id], [recipient_name], [phone], [address], [is_default]) VALUES (2, 4, N'Nguyễn Thi B', N'0866046585', N'thôn 4, Phường Duyệt Trung, Thành phố Cao Bằng, Tỉnh Cao Bằng', 0)
GO
INSERT [dbo].[user_addresses] ([id], [user_id], [recipient_name], [phone], [address], [is_default]) VALUES (3, 4, N'Nguyễn Văn C', N'0961004959', N'thôn 5, Xã Mông Ân, Huyện Bảo Lâm, Tỉnh Cao Bằng', 0)
GO
INSERT [dbo].[user_addresses] ([id], [user_id], [recipient_name], [phone], [address], [is_default]) VALUES (4, 6, N'Nguyen Hanh Nhan', N'0866046598', N'thôn 6, Xã Mông Ân, Huyện Bảo Lâm, Tỉnh Cao Bằng', 1)
GO
INSERT [dbo].[user_addresses] ([id], [user_id], [recipient_name], [phone], [address], [is_default]) VALUES (5, 8, N'Nguyen Van Anh', N'0866046585', N'thôn 4, Phường Trần Phú, Thành phố Hà Giang, Tỉnh Hà Giang', 1)
GO
INSERT [dbo].[user_addresses] ([id], [user_id], [recipient_name], [phone], [address], [is_default]) VALUES (6, 12, N'Nguyen Hong Hanh', N'0961004935', N'thôn 5, Xã Quảng Khê, Huyện Ba Bể, Tỉnh Bắc Kạn', 1)
GO
INSERT [dbo].[user_addresses] ([id], [user_id], [recipient_name], [phone], [address], [is_default]) VALUES (7, 7, N'Nguyễn Thi D', N'0866046543', N'thôn 3, Phường Ngọc Hà, Thành phố Hà Giang, Tỉnh Hà Giang', 1)
GO
SET IDENTITY_INSERT [dbo].[user_addresses] OFF
GO
SET IDENTITY_INSERT [dbo].[messages] ON 
GO
INSERT [dbo].[messages] ([id], [sender_id], [receiver_id], [content], [image_url], [is_read], [created_at]) VALUES (0, 4, 3, N'tôi cần tư vấn', NULL, 1, CAST(N'2025-03-29T18:05:43.8466667' AS DateTime2))
GO
INSERT [dbo].[messages] ([id], [sender_id], [receiver_id], [content], [image_url], [is_read], [created_at]) VALUES (1, 3, 4, N'Shop có thể hỗ trợ gì cho bạn', NULL, 0, CAST(N'2025-03-29T18:05:57.8233333' AS DateTime2))
GO
INSERT [dbo].[messages] ([id], [sender_id], [receiver_id], [content], [image_url], [is_read], [created_at]) VALUES (2, 7, 3, N'xin chào', NULL, 1, CAST(N'2025-03-29T18:06:16.3066667' AS DateTime2))
GO
INSERT [dbo].[messages] ([id], [sender_id], [receiver_id], [content], [image_url], [is_read], [created_at]) VALUES (3, 3, 7, N'chào bạn, bạn cần tư vấn gì ạ!', NULL, 0, CAST(N'2025-03-29T18:06:38.2633333' AS DateTime2))
GO
INSERT [dbo].[messages] ([id], [sender_id], [receiver_id], [content], [image_url], [is_read], [created_at]) VALUES (4, 6, 3, N'hi', NULL, 1, CAST(N'2025-03-29T18:06:52.4466667' AS DateTime2))
GO
INSERT [dbo].[messages] ([id], [sender_id], [receiver_id], [content], [image_url], [is_read], [created_at]) VALUES (5, 3, 6, N'Xin chào quý khách!', NULL, 0, CAST(N'2025-03-29T18:07:19.9533333' AS DateTime2))
GO
INSERT [dbo].[messages] ([id], [sender_id], [receiver_id], [content], [image_url], [is_read], [created_at]) VALUES (6, 12, 3, N'cảm ơn vì đã giao hàng kịp cho tôi', NULL, 1, CAST(N'2025-03-29T18:07:42.1200000' AS DateTime2))
GO
INSERT [dbo].[messages] ([id], [sender_id], [receiver_id], [content], [image_url], [is_read], [created_at]) VALUES (7, 3, 12, N'rất vui vì được phục vụ qúy khách', NULL, 0, CAST(N'2025-03-29T18:07:50.7433333' AS DateTime2))
GO
SET IDENTITY_INSERT [dbo].[messages] OFF
GO
SET IDENTITY_INSERT [dbo].[order_history] ON 
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (1, 1, 4, N'pending', N'Đơn hàng mới được tạo', CAST(N'2025-03-29T16:43:48.4400000' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (2, 2, 4, N'pending', N'Đơn hàng mới được tạo', CAST(N'2025-03-29T16:44:30.2666667' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (3, 2, 5, N'processing', N'Cập nhật trạng thái thành processing', CAST(N'2025-03-29T16:44:35.6300000' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (4, 2, 5, N'shipping', N'Cập nhật trạng thái thành shipping', CAST(N'2025-03-29T16:44:48.7100000' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (5, 3, 4, N'pending', N'Đơn hàng mới được tạo', CAST(N'2025-03-29T16:45:14.6033333' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (6, 3, 5, N'processing', N'Cập nhật trạng thái thành processing', CAST(N'2025-03-29T16:45:23.3066667' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (7, 4, 4, N'pending', N'Đơn hàng mới được tạo', CAST(N'2025-03-29T16:46:10.4000000' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (8, 4, 5, N'processing', N'Cập nhật trạng thái thành processing', CAST(N'2025-03-29T16:46:17.1200000' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (9, 4, 5, N'shipping', N'Cập nhật trạng thái thành shipping', CAST(N'2025-03-29T16:46:52.0533333' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (10, 4, 5, N'completed', N'Cập nhật trạng thái thành completed', CAST(N'2025-03-29T16:46:57.8166667' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (11, 5, 4, N'pending', N'Đơn hàng mới được tạo', CAST(N'2025-03-29T16:47:26.2700000' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (12, 5, 5, N'processing', N'Cập nhật trạng thái thành processing', CAST(N'2025-03-29T16:47:33.2766667' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (13, 5, 5, N'shipping', N'Cập nhật trạng thái thành shipping', CAST(N'2025-03-29T16:47:42.3300000' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (14, 5, 5, N'returned', N'Cập nhật trạng thái thành returned', CAST(N'2025-03-29T16:47:58.3800000' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (15, 6, 4, N'pending', N'Đơn hàng mới được tạo', CAST(N'2025-03-29T16:48:45.9633333' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (16, 6, 5, N'processing', N'Cập nhật trạng thái thành processing', CAST(N'2025-03-29T16:48:55.4100000' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (17, 6, 5, N'shipping', N'Cập nhật trạng thái thành shipping', CAST(N'2025-03-29T16:49:09.7800000' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (18, 6, 5, N'completed', N'Cập nhật trạng thái thành completed', CAST(N'2025-03-29T16:49:21.6833333' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (19, 7, 4, N'pending', N'Đơn hàng mới được tạo', CAST(N'2025-03-29T16:50:40.9633333' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (20, 7, 5, N'processing', N'Cập nhật trạng thái thành processing', CAST(N'2025-03-29T16:50:54.2633333' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (21, 7, 5, N'shipping', N'Cập nhật trạng thái thành shipping', CAST(N'2025-03-29T16:51:06.3933333' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (22, 7, 5, N'completed', N'Cập nhật trạng thái thành completed', CAST(N'2025-03-29T16:51:17.9600000' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (23, 8, 4, N'pending', N'Đơn hàng mới được tạo', CAST(N'2025-03-29T16:53:10.3966667' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (24, 8, 5, N'processing', N'Cập nhật trạng thái thành processing', CAST(N'2025-03-29T16:53:19.3566667' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (25, 8, 5, N'shipping', N'Cập nhật trạng thái thành shipping', CAST(N'2025-03-29T16:53:30.2933333' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (26, 8, 5, N'completed', N'Cập nhật trạng thái thành completed', CAST(N'2025-03-29T16:53:57.3466667' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (27, 9, 6, N'pending', N'Đơn hàng mới được tạo', CAST(N'2025-03-29T16:55:41.7633333' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (28, 9, 5, N'processing', N'Cập nhật trạng thái thành processing', CAST(N'2025-03-29T16:55:50.0966667' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (29, 9, 5, N'shipping', N'Cập nhật trạng thái thành shipping', CAST(N'2025-03-29T16:56:03.0400000' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (30, 9, 5, N'completed', N'Cập nhật trạng thái thành completed', CAST(N'2025-03-29T16:56:07.8433333' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (31, 10, 6, N'pending', N'Đơn hàng mới được tạo', CAST(N'2025-03-29T17:00:11.3066667' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (32, 10, 5, N'processing', N'Cập nhật trạng thái thành processing', CAST(N'2025-03-29T17:00:49.4700000' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (33, 10, 5, N'shipping', N'Cập nhật trạng thái thành shipping', CAST(N'2025-03-29T17:01:05.3133333' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (34, 10, 5, N'completed', N'Cập nhật trạng thái thành completed', CAST(N'2025-03-29T17:01:10.2266667' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (35, 11, 6, N'pending', N'Đơn hàng mới được tạo', CAST(N'2025-03-29T17:01:41.6500000' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (36, 12, 6, N'pending', N'Đơn hàng mới được tạo', CAST(N'2025-03-29T17:02:02.8800000' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (37, 12, 5, N'processing', N'Cập nhật trạng thái thành processing', CAST(N'2025-03-29T17:02:13.7933333' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (38, 13, 8, N'pending', N'Đơn hàng mới được tạo', CAST(N'2025-03-29T17:03:45.7166667' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (39, 13, 5, N'processing', N'Cập nhật trạng thái thành processing', CAST(N'2025-03-29T17:03:50.0400000' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (40, 13, 5, N'shipping', N'Cập nhật trạng thái thành shipping', CAST(N'2025-03-29T17:04:04.3433333' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (41, 13, 5, N'completed', N'Cập nhật trạng thái thành completed', CAST(N'2025-03-29T17:04:09.4966667' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (42, 14, 8, N'pending', N'Đơn hàng mới được tạo', CAST(N'2025-03-29T17:04:40.2566667' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (43, 14, 5, N'processing', N'Cập nhật trạng thái thành processing', CAST(N'2025-03-29T17:04:45.1566667' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (44, 14, 5, N'shipping', N'Cập nhật trạng thái thành shipping', CAST(N'2025-03-29T17:04:59.4300000' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (45, 15, 8, N'pending', N'Đơn hàng mới được tạo', CAST(N'2025-03-29T17:05:48.0266667' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (46, 15, 5, N'cancelled', N'Cập nhật trạng thái thành cancelled', CAST(N'2025-03-29T17:06:00.9900000' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (47, 16, 8, N'pending', N'Đơn hàng mới được tạo', CAST(N'2025-03-29T17:06:30.3133333' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (48, 16, 5, N'processing', N'Cập nhật trạng thái thành processing', CAST(N'2025-03-29T17:06:36.5400000' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (49, 16, 5, N'shipping', N'Cập nhật trạng thái thành shipping', CAST(N'2025-03-29T17:06:46.6666667' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (50, 16, 5, N'returned', N'Cập nhật trạng thái thành returned', CAST(N'2025-03-29T17:06:52.3766667' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (51, 17, 12, N'pending', N'Đơn hàng mới được tạo', CAST(N'2025-03-29T17:08:06.7833333' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (52, 17, 5, N'processing', N'Cập nhật trạng thái thành processing', CAST(N'2025-03-29T17:08:12.1266667' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (53, 17, 5, N'shipping', N'Cập nhật trạng thái thành shipping', CAST(N'2025-03-29T17:08:34.5966667' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (54, 17, 5, N'completed', N'Cập nhật trạng thái thành completed', CAST(N'2025-03-29T17:08:40.9600000' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (55, 18, 12, N'pending', N'Đơn hàng mới được tạo', CAST(N'2025-03-29T17:10:13.9733333' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (56, 18, 5, N'processing', N'Cập nhật trạng thái thành processing', CAST(N'2025-03-29T17:10:24.3600000' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (57, 18, 5, N'shipping', N'Cập nhật trạng thái thành shipping', CAST(N'2025-03-29T17:10:35.4966667' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (58, 18, 5, N'completed', N'Cập nhật trạng thái thành completed', CAST(N'2025-03-29T17:10:40.6600000' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (59, 19, 12, N'pending', N'Đơn hàng mới được tạo', CAST(N'2025-03-29T17:11:04.2933333' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (60, 19, 5, N'cancelled', N'Cập nhật trạng thái thành cancelled', CAST(N'2025-03-29T17:11:08.6933333' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (61, 20, 7, N'pending', N'Đơn hàng mới được tạo', CAST(N'2025-03-29T17:44:38.0933333' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (62, 20, 5, N'processing', N'Cập nhật trạng thái thành processing', CAST(N'2025-03-29T17:45:21.7400000' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (63, 20, 5, N'shipping', N'Cập nhật trạng thái thành shipping', CAST(N'2025-03-29T17:45:34.0266667' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (64, 20, 5, N'completed', N'Cập nhật trạng thái thành completed', CAST(N'2025-03-29T17:45:39.6200000' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (65, 21, 7, N'pending', N'Đơn hàng mới được tạo', CAST(N'2025-03-29T17:48:01.3533333' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (66, 21, 5, N'processing', N'Cập nhật trạng thái thành processing', CAST(N'2025-03-29T17:48:08.7433333' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (67, 21, 5, N'shipping', N'Cập nhật trạng thái thành shipping', CAST(N'2025-03-29T17:48:20.0433333' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (68, 21, 5, N'completed', N'Cập nhật trạng thái thành completed', CAST(N'2025-03-29T17:48:29.0633333' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (69, 22, 6, N'pending', N'Đơn hàng mới được tạo', CAST(N'2025-03-29T17:52:29.4133333' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (70, 22, 5, N'processing', N'Cập nhật trạng thái thành processing', CAST(N'2025-03-29T17:52:35.2766667' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (71, 22, 5, N'shipping', N'Cập nhật trạng thái thành shipping', CAST(N'2025-03-29T17:52:44.9300000' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (72, 22, 5, N'completed', N'Cập nhật trạng thái thành completed', CAST(N'2025-03-29T17:52:50.5066667' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (73, 23, 4, N'pending', N'Đơn hàng mới được tạo', CAST(N'2025-03-29T20:03:29.4500000' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (74, 23, 1, N'pending_pay', N'Đang chờ thanh toán', CAST(N'2025-03-29T20:03:29.4733333' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (75, 23, 4, N'pending_pay', NULL, CAST(N'2025-03-29T20:03:29.4766667' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (76, 24, 4, N'pending', N'Đơn hàng mới được tạo', CAST(N'2025-03-29T20:04:49.0066667' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (77, 24, 1, N'pending_pay', N'Đã thanh toán thành công', CAST(N'2025-03-29T20:04:49.0233333' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (78, 24, 4, N'processing', NULL, CAST(N'2025-03-29T20:04:49.0233333' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (79, 25, 4, N'pending', N'Đơn hàng mới được tạo', CAST(N'2025-03-29T20:06:00.3500000' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (80, 25, 1, N'pending_pay', N'Đã thanh toán thành công', CAST(N'2025-03-29T20:06:00.3633333' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (81, 25, 4, N'processing', NULL, CAST(N'2025-03-29T20:06:00.3633333' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (82, 25, 1, N'shipping', N'Cập nhật trạng thái thành shipping', CAST(N'2025-03-29T20:06:22.0566667' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (83, 25, 1, N'completed', N'Cập nhật trạng thái thành completed', CAST(N'2025-03-29T20:06:27.8533333' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (84, 26, 4, N'pending', N'Đơn hàng mới được tạo', CAST(N'2025-03-29T20:07:59.0366667' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (85, 26, 1, N'pending_pay', N'Đã thanh toán thành công', CAST(N'2025-03-29T20:07:59.0500000' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (86, 26, 4, N'processing', NULL, CAST(N'2025-03-29T20:07:59.0500000' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (87, 26, 1, N'shipping', N'Cập nhật trạng thái thành shipping', CAST(N'2025-03-29T20:08:20.0000000' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (88, 26, 1, N'returned', N'Cập nhật trạng thái thành returned', CAST(N'2025-03-29T20:08:25.3466667' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (89, 23, 1, N'pending_pay', N'Đang chờ thanh toán', CAST(N'2025-03-29T20:16:52.6333333' AS DateTime2))
GO
SET IDENTITY_INSERT [dbo].[order_history] OFF
GO
SET IDENTITY_INSERT [dbo].[payments] ON 
GO
INSERT [dbo].[payments] ([id], [order_id], [payment_method], [payment_status], [transaction_id], [created_at]) VALUES (1, 1, N'cod', N'pending', NULL, CAST(N'2025-03-29T16:43:48.4300000' AS DateTime2))
GO
INSERT [dbo].[payments] ([id], [order_id], [payment_method], [payment_status], [transaction_id], [created_at]) VALUES (2, 2, N'cod', N'pending', NULL, CAST(N'2025-03-29T16:44:30.2633333' AS DateTime2))
GO
INSERT [dbo].[payments] ([id], [order_id], [payment_method], [payment_status], [transaction_id], [created_at]) VALUES (3, 3, N'cod', N'pending', NULL, CAST(N'2025-03-29T16:45:14.6000000' AS DateTime2))
GO
INSERT [dbo].[payments] ([id], [order_id], [payment_method], [payment_status], [transaction_id], [created_at]) VALUES (4, 4, N'cod', N'completed', NULL, CAST(N'2025-03-29T16:46:57.8200000' AS DateTime2))
GO
INSERT [dbo].[payments] ([id], [order_id], [payment_method], [payment_status], [transaction_id], [created_at]) VALUES (5, 5, N'cod', N'refunded', NULL, CAST(N'2025-03-29T16:47:58.3800000' AS DateTime2))
GO
INSERT [dbo].[payments] ([id], [order_id], [payment_method], [payment_status], [transaction_id], [created_at]) VALUES (6, 6, N'cod', N'completed', NULL, CAST(N'2025-03-29T16:49:21.6833333' AS DateTime2))
GO
INSERT [dbo].[payments] ([id], [order_id], [payment_method], [payment_status], [transaction_id], [created_at]) VALUES (7, 7, N'cod', N'completed', NULL, CAST(N'2025-03-29T16:51:17.9600000' AS DateTime2))
GO
INSERT [dbo].[payments] ([id], [order_id], [payment_method], [payment_status], [transaction_id], [created_at]) VALUES (8, 8, N'cod', N'completed', NULL, CAST(N'2025-03-29T16:53:57.3500000' AS DateTime2))
GO
INSERT [dbo].[payments] ([id], [order_id], [payment_method], [payment_status], [transaction_id], [created_at]) VALUES (9, 9, N'cod', N'completed', NULL, CAST(N'2025-03-29T16:56:07.8433333' AS DateTime2))
GO
INSERT [dbo].[payments] ([id], [order_id], [payment_method], [payment_status], [transaction_id], [created_at]) VALUES (10, 10, N'cod', N'completed', NULL, CAST(N'2025-03-29T17:01:10.2300000' AS DateTime2))
GO
INSERT [dbo].[payments] ([id], [order_id], [payment_method], [payment_status], [transaction_id], [created_at]) VALUES (11, 11, N'cod', N'pending', NULL, CAST(N'2025-03-29T17:01:41.6500000' AS DateTime2))
GO
INSERT [dbo].[payments] ([id], [order_id], [payment_method], [payment_status], [transaction_id], [created_at]) VALUES (12, 12, N'cod', N'pending', NULL, CAST(N'2025-03-29T17:02:02.8800000' AS DateTime2))
GO
INSERT [dbo].[payments] ([id], [order_id], [payment_method], [payment_status], [transaction_id], [created_at]) VALUES (13, 13, N'cod', N'completed', NULL, CAST(N'2025-03-29T17:04:09.4966667' AS DateTime2))
GO
INSERT [dbo].[payments] ([id], [order_id], [payment_method], [payment_status], [transaction_id], [created_at]) VALUES (14, 14, N'cod', N'pending', NULL, CAST(N'2025-03-29T17:04:40.2500000' AS DateTime2))
GO
INSERT [dbo].[payments] ([id], [order_id], [payment_method], [payment_status], [transaction_id], [created_at]) VALUES (15, 15, N'cod', N'pending', NULL, CAST(N'2025-03-29T17:05:48.0233333' AS DateTime2))
GO
INSERT [dbo].[payments] ([id], [order_id], [payment_method], [payment_status], [transaction_id], [created_at]) VALUES (16, 16, N'cod', N'refunded', NULL, CAST(N'2025-03-29T17:06:52.3766667' AS DateTime2))
GO
INSERT [dbo].[payments] ([id], [order_id], [payment_method], [payment_status], [transaction_id], [created_at]) VALUES (17, 17, N'cod', N'completed', NULL, CAST(N'2025-03-29T17:08:40.9600000' AS DateTime2))
GO
INSERT [dbo].[payments] ([id], [order_id], [payment_method], [payment_status], [transaction_id], [created_at]) VALUES (18, 18, N'cod', N'completed', NULL, CAST(N'2025-03-29T17:10:40.6600000' AS DateTime2))
GO
INSERT [dbo].[payments] ([id], [order_id], [payment_method], [payment_status], [transaction_id], [created_at]) VALUES (19, 19, N'cod', N'pending', NULL, CAST(N'2025-03-29T17:11:04.2900000' AS DateTime2))
GO
INSERT [dbo].[payments] ([id], [order_id], [payment_method], [payment_status], [transaction_id], [created_at]) VALUES (20, 20, N'cod', N'completed', NULL, CAST(N'2025-03-29T17:45:39.6233333' AS DateTime2))
GO
INSERT [dbo].[payments] ([id], [order_id], [payment_method], [payment_status], [transaction_id], [created_at]) VALUES (21, 21, N'cod', N'completed', NULL, CAST(N'2025-03-29T17:48:29.0666667' AS DateTime2))
GO
INSERT [dbo].[payments] ([id], [order_id], [payment_method], [payment_status], [transaction_id], [created_at]) VALUES (22, 22, N'cod', N'completed', NULL, CAST(N'2025-03-29T17:52:50.5066667' AS DateTime2))
GO
INSERT [dbo].[payments] ([id], [order_id], [payment_method], [payment_status], [transaction_id], [created_at]) VALUES (23, 23, N'bank_transfer', N'pending', NULL, CAST(N'2025-03-29T20:03:29.4366667' AS DateTime2))
GO
INSERT [dbo].[payments] ([id], [order_id], [payment_method], [payment_status], [transaction_id], [created_at]) VALUES (24, 24, N'bank_transfer', N'completed', NULL, CAST(N'2025-03-29T20:04:49.0066667' AS DateTime2))
GO
INSERT [dbo].[payments] ([id], [order_id], [payment_method], [payment_status], [transaction_id], [created_at]) VALUES (25, 25, N'bank_transfer', N'completed', NULL, CAST(N'2025-03-29T20:06:27.8533333' AS DateTime2))
GO
INSERT [dbo].[payments] ([id], [order_id], [payment_method], [payment_status], [transaction_id], [created_at]) VALUES (26, 26, N'bank_transfer', N'refunded', NULL, CAST(N'2025-03-29T20:08:25.3500000' AS DateTime2))
GO
SET IDENTITY_INSERT [dbo].[payments] OFF
GO
SET IDENTITY_INSERT [dbo].[shipping] ON 
GO
INSERT [dbo].[shipping] ([id], [order_id], [shipping_provider], [tracking_number], [estimated_delivery], [delivered_at]) VALUES (1, 1, N'Standard Delivery', N'TEMP-1-1743241428436', CAST(N'2025-04-03' AS Date), NULL)
GO
INSERT [dbo].[shipping] ([id], [order_id], [shipping_provider], [tracking_number], [estimated_delivery], [delivered_at]) VALUES (2, 2, N'J&T Express', N'ExpSUP1234', CAST(N'2025-03-31' AS Date), NULL)
GO
INSERT [dbo].[shipping] ([id], [order_id], [shipping_provider], [tracking_number], [estimated_delivery], [delivered_at]) VALUES (3, 3, N'Standard Delivery', N'TEMP-3-1743241514603', CAST(N'2025-04-03' AS Date), NULL)
GO
INSERT [dbo].[shipping] ([id], [order_id], [shipping_provider], [tracking_number], [estimated_delivery], [delivered_at]) VALUES (4, 4, N'J&T Express', N'ExpSUP1243', CAST(N'2025-03-31' AS Date), NULL)
GO
INSERT [dbo].[shipping] ([id], [order_id], [shipping_provider], [tracking_number], [estimated_delivery], [delivered_at]) VALUES (5, 5, N'J&T Express', N'ExpSUP5823', CAST(N'2025-03-31' AS Date), NULL)
GO
INSERT [dbo].[shipping] ([id], [order_id], [shipping_provider], [tracking_number], [estimated_delivery], [delivered_at]) VALUES (6, 6, N'J&T Express', N'ExpSUP5443', CAST(N'2025-03-31' AS Date), NULL)
GO
INSERT [dbo].[shipping] ([id], [order_id], [shipping_provider], [tracking_number], [estimated_delivery], [delivered_at]) VALUES (7, 7, N'J&T Express', N'ExpSUP5334', CAST(N'2025-03-31' AS Date), NULL)
GO
INSERT [dbo].[shipping] ([id], [order_id], [shipping_provider], [tracking_number], [estimated_delivery], [delivered_at]) VALUES (8, 8, N'J&T Express', N'ExpSUP7765', CAST(N'2025-03-31' AS Date), NULL)
GO
INSERT [dbo].[shipping] ([id], [order_id], [shipping_provider], [tracking_number], [estimated_delivery], [delivered_at]) VALUES (9, 9, N'J&T Express', N'ExpSUP1786', CAST(N'2025-03-31' AS Date), NULL)
GO
INSERT [dbo].[shipping] ([id], [order_id], [shipping_provider], [tracking_number], [estimated_delivery], [delivered_at]) VALUES (10, 10, N'J&T Express', N'ExpSUP5765', CAST(N'2025-04-03' AS Date), NULL)
GO
INSERT [dbo].[shipping] ([id], [order_id], [shipping_provider], [tracking_number], [estimated_delivery], [delivered_at]) VALUES (11, 11, N'Standard Delivery', N'TEMP-11-1743242501651', CAST(N'2025-04-03' AS Date), NULL)
GO
INSERT [dbo].[shipping] ([id], [order_id], [shipping_provider], [tracking_number], [estimated_delivery], [delivered_at]) VALUES (12, 12, N'Standard Delivery', N'TEMP-12-1743242522883', CAST(N'2025-04-03' AS Date), NULL)
GO
INSERT [dbo].[shipping] ([id], [order_id], [shipping_provider], [tracking_number], [estimated_delivery], [delivered_at]) VALUES (13, 13, N'J&T Express', N'ExpSUP5086', CAST(N'2025-03-31' AS Date), NULL)
GO
INSERT [dbo].[shipping] ([id], [order_id], [shipping_provider], [tracking_number], [estimated_delivery], [delivered_at]) VALUES (14, 14, N'J&T Express', N'ExpSUP1654', CAST(N'2025-03-31' AS Date), NULL)
GO
INSERT [dbo].[shipping] ([id], [order_id], [shipping_provider], [tracking_number], [estimated_delivery], [delivered_at]) VALUES (15, 15, N'Express Delivery', N'TEMP-15-1743242748027', CAST(N'2025-03-31' AS Date), NULL)
GO
INSERT [dbo].[shipping] ([id], [order_id], [shipping_provider], [tracking_number], [estimated_delivery], [delivered_at]) VALUES (16, 16, N'J&T Express', N'ExpSUP5555', CAST(N'2025-03-31' AS Date), NULL)
GO
INSERT [dbo].[shipping] ([id], [order_id], [shipping_provider], [tracking_number], [estimated_delivery], [delivered_at]) VALUES (17, 17, N'J&T Express', N'ExpSUP5355', CAST(N'2025-03-31' AS Date), NULL)
GO
INSERT [dbo].[shipping] ([id], [order_id], [shipping_provider], [tracking_number], [estimated_delivery], [delivered_at]) VALUES (18, 18, N'J&T Express', N'ExpSUP3563', CAST(N'2025-03-31' AS Date), NULL)
GO
INSERT [dbo].[shipping] ([id], [order_id], [shipping_provider], [tracking_number], [estimated_delivery], [delivered_at]) VALUES (19, 19, N'Standard Delivery', N'TEMP-19-1743243064292', CAST(N'2025-04-03' AS Date), NULL)
GO
INSERT [dbo].[shipping] ([id], [order_id], [shipping_provider], [tracking_number], [estimated_delivery], [delivered_at]) VALUES (20, 20, N'J&T Express', N'ExpSUP5344', CAST(N'2025-03-31' AS Date), NULL)
GO
INSERT [dbo].[shipping] ([id], [order_id], [shipping_provider], [tracking_number], [estimated_delivery], [delivered_at]) VALUES (21, 21, N'J&T Express', N'ExpSUP3456', CAST(N'2025-03-31' AS Date), NULL)
GO
INSERT [dbo].[shipping] ([id], [order_id], [shipping_provider], [tracking_number], [estimated_delivery], [delivered_at]) VALUES (22, 22, N'J&T Express', N'ExpSUP5435', CAST(N'2025-04-03' AS Date), NULL)
GO
INSERT [dbo].[shipping] ([id], [order_id], [shipping_provider], [tracking_number], [estimated_delivery], [delivered_at]) VALUES (23, 23, N'Standard Delivery', N'TEMP-23-1743253409442', CAST(N'2025-04-03' AS Date), NULL)
GO
INSERT [dbo].[shipping] ([id], [order_id], [shipping_provider], [tracking_number], [estimated_delivery], [delivered_at]) VALUES (24, 24, N'Express Delivery', N'TEMP-24-1743253489007', CAST(N'2025-03-31' AS Date), NULL)
GO
INSERT [dbo].[shipping] ([id], [order_id], [shipping_provider], [tracking_number], [estimated_delivery], [delivered_at]) VALUES (25, 25, N'VNExpress', N'VNE1532289965255', CAST(N'2025-04-03' AS Date), NULL)
GO
INSERT [dbo].[shipping] ([id], [order_id], [shipping_provider], [tracking_number], [estimated_delivery], [delivered_at]) VALUES (26, 26, N'VNExpress', N'VNE153228996524', CAST(N'2025-04-03' AS Date), NULL)
GO
SET IDENTITY_INSERT [dbo].[shipping] OFF
GO
SET IDENTITY_INSERT [dbo].[coupons] ON 
GO
INSERT [dbo].[coupons] ([id], [code], [discount_type], [discount_value], [min_order_amount], [max_discount], [usage_limit], [used_count], [expiry_date], [activation_date], [created_at], [coupon_type], [status]) VALUES (1, N'ABC123XYZ', N'percentage', CAST(10.00 AS Decimal(10, 2)), CAST(50000.00 AS Decimal(10, 2)), CAST(100000.00 AS Decimal(10, 2)), 50, 4, CAST(N'2025-06-30T23:59:59.0000000' AS DateTime2), CAST(N'2025-02-19T13:42:03.3666667' AS DateTime2), CAST(N'2025-02-19T13:42:03.3666667' AS DateTime2), N'normal', N'active')
GO
INSERT [dbo].[coupons] ([id], [code], [discount_type], [discount_value], [min_order_amount], [max_discount], [usage_limit], [used_count], [expiry_date], [activation_date], [created_at], [coupon_type], [status]) VALUES (2, N'DEF456UVW', N'fixed', CAST(20000.00 AS Decimal(10, 2)), CAST(100000.00 AS Decimal(10, 2)), CAST(0.00 AS Decimal(10, 2)), 100, 1, CAST(N'2025-07-31T23:59:59.0000000' AS DateTime2), CAST(N'2025-02-19T13:42:03.3666667' AS DateTime2), CAST(N'2025-02-19T13:42:03.3666667' AS DateTime2), N'normal', N'active')
GO
INSERT [dbo].[coupons] ([id], [code], [discount_type], [discount_value], [min_order_amount], [max_discount], [usage_limit], [used_count], [expiry_date], [activation_date], [created_at], [coupon_type], [status]) VALUES (3, N'GHI789RST', N'percentage', CAST(15.00 AS Decimal(10, 2)), CAST(75000.00 AS Decimal(10, 2)), CAST(150000.00 AS Decimal(10, 2)), 75, 3, CAST(N'2025-08-31T23:59:59.0000000' AS DateTime2), CAST(N'2025-02-19T13:42:03.3666667' AS DateTime2), CAST(N'2025-02-19T13:42:03.3666667' AS DateTime2), N'normal', N'active')
GO
INSERT [dbo].[coupons] ([id], [code], [discount_type], [discount_value], [min_order_amount], [max_discount], [usage_limit], [used_count], [expiry_date], [activation_date], [created_at], [coupon_type], [status]) VALUES (4, N'JKL012PQR', N'fixed', CAST(30000.00 AS Decimal(10, 2)), CAST(150000.00 AS Decimal(10, 2)), CAST(0.00 AS Decimal(10, 2)), 200, 1, CAST(N'2025-09-30T23:59:59.0000000' AS DateTime2), CAST(N'2025-02-19T13:42:03.3666667' AS DateTime2), CAST(N'2025-02-19T13:42:03.3666667' AS DateTime2), N'normal', N'active')
GO
INSERT [dbo].[coupons] ([id], [code], [discount_type], [discount_value], [min_order_amount], [max_discount], [usage_limit], [used_count], [expiry_date], [activation_date], [created_at], [coupon_type], [status]) VALUES (5, N'MNO345NOP', N'percentage', CAST(20.00 AS Decimal(10, 2)), CAST(200000.00 AS Decimal(10, 2)), CAST(200000.00 AS Decimal(10, 2)), 50, 0, CAST(N'2025-10-31T23:59:59.0000000' AS DateTime2), CAST(N'2025-02-19T13:42:03.3666667' AS DateTime2), CAST(N'2025-02-19T13:42:03.3666667' AS DateTime2), N'normal', N'active')
GO
INSERT [dbo].[coupons] ([id], [code], [discount_type], [discount_value], [min_order_amount], [max_discount], [usage_limit], [used_count], [expiry_date], [activation_date], [created_at], [coupon_type], [status]) VALUES (6, N'STU678KLM', N'fixed', CAST(50000.00 AS Decimal(10, 2)), CAST(250000.00 AS Decimal(10, 2)), CAST(0.00 AS Decimal(10, 2)), 25, 2, CAST(N'2025-11-30T23:59:59.0000000' AS DateTime2), CAST(N'2025-02-19T13:42:03.3666667' AS DateTime2), CAST(N'2025-02-19T13:42:03.3666667' AS DateTime2), N'normal', N'active')
GO
INSERT [dbo].[coupons] ([id], [code], [discount_type], [discount_value], [min_order_amount], [max_discount], [usage_limit], [used_count], [expiry_date], [activation_date], [created_at], [coupon_type], [status]) VALUES (7, N'VWX901HIJ', N'percentage', CAST(25.00 AS Decimal(10, 2)), CAST(300000.00 AS Decimal(10, 2)), CAST(250000.00 AS Decimal(10, 2)), 100, 2, CAST(N'2025-12-31T23:59:59.0000000' AS DateTime2), CAST(N'2025-02-19T13:42:03.3666667' AS DateTime2), CAST(N'2025-02-19T13:42:03.3666667' AS DateTime2), N'normal', N'active')
GO
INSERT [dbo].[coupons] ([id], [code], [discount_type], [discount_value], [min_order_amount], [max_discount], [usage_limit], [used_count], [expiry_date], [activation_date], [created_at], [coupon_type], [status]) VALUES (8, N'YZA234EFG', N'fixed', CAST(15000.00 AS Decimal(10, 2)), CAST(80000.00 AS Decimal(10, 2)), NULL, 150, 0, CAST(N'2026-01-31T23:59:59.0000000' AS DateTime2), CAST(N'2025-04-01T00:00:00.0000000' AS DateTime2), CAST(N'2025-02-19T13:42:03.3666667' AS DateTime2), N'normal', N'inactive')
GO
INSERT [dbo].[coupons] ([id], [code], [discount_type], [discount_value], [min_order_amount], [max_discount], [usage_limit], [used_count], [expiry_date], [activation_date], [created_at], [coupon_type], [status]) VALUES (9, N'BCD567BCD', N'percentage', CAST(30.00 AS Decimal(10, 2)), CAST(400000.00 AS Decimal(10, 2)), CAST(300000.00 AS Decimal(10, 2)), 30, 0, CAST(N'2026-02-28T23:59:59.0000000' AS DateTime2), CAST(N'2025-05-01T00:00:00.0000000' AS DateTime2), CAST(N'2025-02-19T13:42:03.3666667' AS DateTime2), N'normal', N'inactive')
GO
INSERT [dbo].[coupons] ([id], [code], [discount_type], [discount_value], [min_order_amount], [max_discount], [usage_limit], [used_count], [expiry_date], [activation_date], [created_at], [coupon_type], [status]) VALUES (10, N'EFG890YZA', N'fixed', CAST(25000.00 AS Decimal(10, 2)), CAST(120000.00 AS Decimal(10, 2)), NULL, 75, 0, CAST(N'2026-03-31T23:59:59.0000000' AS DateTime2), CAST(N'2025-06-01T00:00:00.0000000' AS DateTime2), CAST(N'2025-02-19T13:42:03.3666667' AS DateTime2), N'normal', N'inactive')
GO
INSERT [dbo].[coupons] ([id], [code], [discount_type], [discount_value], [min_order_amount], [max_discount], [usage_limit], [used_count], [expiry_date], [activation_date], [created_at], [coupon_type], [status]) VALUES (11, N'HIJ123VWX', N'percentage', CAST(5.00 AS Decimal(10, 2)), CAST(25000.00 AS Decimal(10, 2)), CAST(50000.00 AS Decimal(10, 2)), 500, 0, CAST(N'2026-04-30T23:59:59.0000000' AS DateTime2), CAST(N'2025-07-01T00:00:00.0000000' AS DateTime2), CAST(N'2025-02-19T13:42:03.3666667' AS DateTime2), N'normal', N'inactive')
GO
INSERT [dbo].[coupons] ([id], [code], [discount_type], [discount_value], [min_order_amount], [max_discount], [usage_limit], [used_count], [expiry_date], [activation_date], [created_at], [coupon_type], [status]) VALUES (12, N'KLM456STU', N'fixed', CAST(10000.00 AS Decimal(10, 2)), CAST(50000.00 AS Decimal(10, 2)), NULL, NULL, 0, CAST(N'2026-05-31T23:59:59.0000000' AS DateTime2), CAST(N'2025-08-01T00:00:00.0000000' AS DateTime2), CAST(N'2025-02-19T13:42:03.3666667' AS DateTime2), N'normal', N'inactive')
GO
INSERT [dbo].[coupons] ([id], [code], [discount_type], [discount_value], [min_order_amount], [max_discount], [usage_limit], [used_count], [expiry_date], [activation_date], [created_at], [coupon_type], [status]) VALUES (13, N'NOP789MNO', N'percentage', CAST(12.50 AS Decimal(10, 2)), CAST(60000.00 AS Decimal(10, 2)), CAST(125000.00 AS Decimal(10, 2)), 250, 0, CAST(N'2026-06-30T23:59:59.0000000' AS DateTime2), CAST(N'2025-09-01T00:00:00.0000000' AS DateTime2), CAST(N'2025-02-19T13:42:03.3666667' AS DateTime2), N'normal', N'inactive')
GO
INSERT [dbo].[coupons] ([id], [code], [discount_type], [discount_value], [min_order_amount], [max_discount], [usage_limit], [used_count], [expiry_date], [activation_date], [created_at], [coupon_type], [status]) VALUES (14, N'QRS012JKL', N'fixed', CAST(40000.00 AS Decimal(10, 2)), CAST(200000.00 AS Decimal(10, 2)), NULL, 40, 0, CAST(N'2025-01-31T23:59:59.0000000' AS DateTime2), CAST(N'2024-12-01T00:00:00.0000000' AS DateTime2), CAST(N'2025-02-19T13:42:03.3666667' AS DateTime2), N'normal', N'expired')
GO
INSERT [dbo].[coupons] ([id], [code], [discount_type], [discount_value], [min_order_amount], [max_discount], [usage_limit], [used_count], [expiry_date], [activation_date], [created_at], [coupon_type], [status]) VALUES (15, N'TUV345GHI', N'percentage', CAST(35.00 AS Decimal(10, 2)), CAST(500000.00 AS Decimal(10, 2)), CAST(350000.00 AS Decimal(10, 2)), 20, 0, CAST(N'2025-01-28T23:59:59.0000000' AS DateTime2), CAST(N'2024-11-01T00:00:00.0000000' AS DateTime2), CAST(N'2025-02-19T13:42:03.3666667' AS DateTime2), N'normal', N'expired')
GO
SET IDENTITY_INSERT [dbo].[coupons] OFF
GO
SET IDENTITY_INSERT [dbo].[order_coupons] ON 
GO
INSERT [dbo].[order_coupons] ([id], [order_id], [coupon_id], [user_email], [discount_applied], [created_at]) VALUES (1, 1, 3, N'user123@gmail.com', CAST(150000.00 AS Decimal(10, 2)), CAST(N'2025-03-29T16:43:48.4300000' AS DateTime2))
GO
INSERT [dbo].[order_coupons] ([id], [order_id], [coupon_id], [user_email], [discount_applied], [created_at]) VALUES (2, 2, 1, N'user123@gmail.com', CAST(79000.00 AS Decimal(10, 2)), CAST(N'2025-03-29T16:44:30.2666667' AS DateTime2))
GO
INSERT [dbo].[order_coupons] ([id], [order_id], [coupon_id], [user_email], [discount_applied], [created_at]) VALUES (3, 6, 1, N'user123@gmail.com', CAST(23000.00 AS Decimal(10, 2)), CAST(N'2025-03-29T16:48:45.9633333' AS DateTime2))
GO
INSERT [dbo].[order_coupons] ([id], [order_id], [coupon_id], [user_email], [discount_applied], [created_at]) VALUES (4, 7, 6, N'user123@gmail.com', CAST(50000.00 AS Decimal(10, 2)), CAST(N'2025-03-29T16:50:40.9633333' AS DateTime2))
GO
INSERT [dbo].[order_coupons] ([id], [order_id], [coupon_id], [user_email], [discount_applied], [created_at]) VALUES (5, 8, 7, N'user123@gmail.com', CAST(250000.00 AS Decimal(10, 2)), CAST(N'2025-03-29T16:53:10.3933333' AS DateTime2))
GO
INSERT [dbo].[order_coupons] ([id], [order_id], [coupon_id], [user_email], [discount_applied], [created_at]) VALUES (6, 9, 6, N'user321@gmail.com', CAST(50000.00 AS Decimal(10, 2)), CAST(N'2025-03-29T16:55:41.7566667' AS DateTime2))
GO
INSERT [dbo].[order_coupons] ([id], [order_id], [coupon_id], [user_email], [discount_applied], [created_at]) VALUES (7, 14, 1, N'Medusa@gmail.com', CAST(15000.00 AS Decimal(10, 2)), CAST(N'2025-03-29T17:04:40.2533333' AS DateTime2))
GO
INSERT [dbo].[order_coupons] ([id], [order_id], [coupon_id], [user_email], [discount_applied], [created_at]) VALUES (8, 15, 2, N'Medusa@gmail.com', CAST(20000.00 AS Decimal(10, 2)), CAST(N'2025-03-29T17:05:48.0233333' AS DateTime2))
GO
INSERT [dbo].[order_coupons] ([id], [order_id], [coupon_id], [user_email], [discount_applied], [created_at]) VALUES (9, 20, 3, N'XiaoDing@gmail.com', CAST(102000.00 AS Decimal(10, 2)), CAST(N'2025-03-29T17:44:38.0833333' AS DateTime2))
GO
INSERT [dbo].[order_coupons] ([id], [order_id], [coupon_id], [user_email], [discount_applied], [created_at]) VALUES (10, 21, 7, N'XiaoDing@gmail.com', CAST(250000.00 AS Decimal(10, 2)), CAST(N'2025-03-29T17:48:01.3500000' AS DateTime2))
GO
INSERT [dbo].[order_coupons] ([id], [order_id], [coupon_id], [user_email], [discount_applied], [created_at]) VALUES (11, 22, 3, N'user321@gmail.com', CAST(42000.00 AS Decimal(10, 2)), CAST(N'2025-03-29T17:52:29.4133333' AS DateTime2))
GO
INSERT [dbo].[order_coupons] ([id], [order_id], [coupon_id], [user_email], [discount_applied], [created_at]) VALUES (12, 23, 4, N'user123@gmail.com', CAST(30000.00 AS Decimal(10, 2)), CAST(N'2025-03-29T20:03:29.4400000' AS DateTime2))
GO
INSERT [dbo].[order_coupons] ([id], [order_id], [coupon_id], [user_email], [discount_applied], [created_at]) VALUES (13, 25, 1, N'user123@gmail.com', CAST(23000.00 AS Decimal(10, 2)), CAST(N'2025-03-29T20:06:00.3500000' AS DateTime2))
GO
SET IDENTITY_INSERT [dbo].[order_coupons] OFF
GO
SET IDENTITY_INSERT [dbo].[feedback_images] ON 
GO
INSERT [dbo].[feedback_images] ([id], [feedback_id], [image_url], [created_at]) VALUES (1, 1, N'uploads/feedbackImages/070ce861-9c8a-4478-8fb6-df993dee99ab_de69784b858a7264233a5e6033892006.jpg', CAST(N'2025-03-29T17:22:11.5400000' AS DateTime2))
GO
INSERT [dbo].[feedback_images] ([id], [feedback_id], [image_url], [created_at]) VALUES (2, 2, N'uploads/feedbackImages/ed390b42-fc2b-449e-8136-38ada3a16fdf_tải xuống (1).jpg', CAST(N'2025-03-29T17:22:11.5466667' AS DateTime2))
GO
INSERT [dbo].[feedback_images] ([id], [feedback_id], [image_url], [created_at]) VALUES (3, 2, N'uploads/feedbackImages/eb6d60d9-e9c0-436c-9c9b-884341745188_tải xuống.jpg', CAST(N'2025-03-29T17:22:11.5500000' AS DateTime2))
GO
INSERT [dbo].[feedback_images] ([id], [feedback_id], [image_url], [created_at]) VALUES (4, 3, N'uploads/feedbackImages/0b0b1228-ef80-4ae5-bac3-3304d198fd2a_6c290dbf7934111c4a28b3a34853a34d.jpg', CAST(N'2025-03-29T17:22:11.5533333' AS DateTime2))
GO
INSERT [dbo].[feedback_images] ([id], [feedback_id], [image_url], [created_at]) VALUES (5, 4, N'uploads/feedbackImages/83b34c1c-830f-43a9-9cbf-0c29e652917a_tải xuống (2).jpg', CAST(N'2025-03-29T17:22:11.5600000' AS DateTime2))
GO
INSERT [dbo].[feedback_images] ([id], [feedback_id], [image_url], [created_at]) VALUES (6, 5, N'uploads/feedbackImages/2261b7a7-9384-4b7a-bde7-a02119d427f0_tải xuống (3).jpg', CAST(N'2025-03-29T17:22:11.5633333' AS DateTime2))
GO
INSERT [dbo].[feedback_images] ([id], [feedback_id], [image_url], [created_at]) VALUES (7, 5, N'uploads/feedbackImages/34b5ef7f-77a2-423c-81d2-cdaa2290a143_tải xuống (4).jpg', CAST(N'2025-03-29T17:22:11.5666667' AS DateTime2))
GO
INSERT [dbo].[feedback_images] ([id], [feedback_id], [image_url], [created_at]) VALUES (8, 6, N'uploads/feedbackImages/3c0ea5ae-f270-498a-9d1f-f40811b3c20f_tải xuống (5).jpg', CAST(N'2025-03-29T17:23:29.9733333' AS DateTime2))
GO
SET IDENTITY_INSERT [dbo].[feedback_images] OFF
GO
SET IDENTITY_INSERT [dbo].[footer_settings] ON 
GO
INSERT [dbo].[footer_settings] ([id], [type], [field_name], [value], [image], [status]) VALUES (1, N'info', N'Tên cửa hàng', N'Lamp Store', NULL, N'active')
GO
INSERT [dbo].[footer_settings] ([id], [type], [field_name], [value], [image], [status]) VALUES (2, N'info', N'Giới thiệu', N'Chuyên bán đèn thời thượng', NULL, N'active')
GO
INSERT [dbo].[footer_settings] ([id], [type], [field_name], [value], [image], [status]) VALUES (3, N'contact', N'Email', N'support@lampstore.com', NULL, N'active')
GO
INSERT [dbo].[footer_settings] ([id], [type], [field_name], [value], [image], [status]) VALUES (4, N'contact', N'Địa chỉ', N'thôn 4, xã Thạch Hòa, huyện Thạch Thất, Hà Nội', NULL, N'active')
GO
INSERT [dbo].[footer_settings] ([id], [type], [field_name], [value], [image], [status]) VALUES (5, N'contact', N'Tổng đài hỗ trợ', N'+84 123 456 789', NULL, N'active')
GO
INSERT [dbo].[footer_settings] ([id], [type], [field_name], [value], [image], [status]) VALUES (6, N'social', N'Facebook', N'https://facebook.com/fashion', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT83dd8_4WZCT-LsYC477q2WKocjms9OHCg0g&s', N'active')
GO
INSERT [dbo].[footer_settings] ([id], [type], [field_name], [value], [image], [status]) VALUES (7, N'social', N'Instagram', N'https://instagram.com/fashion', N'https://cdn-icons-png.freepik.com/256/15707/15707869.png?semt=ais_hybrid', N'active')
GO
SET IDENTITY_INSERT [dbo].[footer_settings] OFF
GO

SET IDENTITY_INSERT [dbo].[sliders] ON;
GO
INSERT INTO sliders (id, title, image_url, link, status, display_order, notes) VALUES
(1, N'Bộ sưu tập đèn giấy dó thủ công',
'https://i.postimg.cc/zGw5jy6r/nghethuatlamden.jpg',
'http://localhost:9999/lampshop/post?id=1', 'active', 1, N'Khám phá nghệ thuật làm đèn truyền thống Việt Nam'),
(2, N'Đèn vải Linen - Phong cách Scandinavian',
'https://i.postimg.cc/W1VmKyWq/denvaislider2.jpg',
'http://localhost:9999/lampshop/productdetail?id=6', 'active', 2, N'Tối giản, thanh lịch và hiện đại'),
(3, N'Đèn Tết - Rực rỡ sắc xuân',
'https://i.postimg.cc/26yVMdNK/dentetslider.jpg',
'http://localhost:9999/lampshop/productdetail?id=3', 'active', 3, N'Mang may mắn về nhà trong dịp năm mới');
SET IDENTITY_INSERT [dbo].[sliders] OFF;
GO
