
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 03/18/2021 00:13:22
-- Generated from EDMX file: D:\ASP.NET_Projects\CoffeeShopSystem\CoffeeShopSystem\CoffeeShopSystemModel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [CoffeeShopSystemDB];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_BaristaCommande]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CommandeSet] DROP CONSTRAINT [FK_BaristaCommande];
GO
IF OBJECT_ID(N'[dbo].[FK_CafeIngredient_Cafe]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CafeIngredient] DROP CONSTRAINT [FK_CafeIngredient_Cafe];
GO
IF OBJECT_ID(N'[dbo].[FK_CafeIngredient_Ingredient]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CafeIngredient] DROP CONSTRAINT [FK_CafeIngredient_Ingredient];
GO
IF OBJECT_ID(N'[dbo].[FK_CafeOption_Cafe]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CafeOption] DROP CONSTRAINT [FK_CafeOption_Cafe];
GO
IF OBJECT_ID(N'[dbo].[FK_CafeOption_Option]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CafeOption] DROP CONSTRAINT [FK_CafeOption_Option];
GO
IF OBJECT_ID(N'[dbo].[FK_CafeTaille]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CafeSet] DROP CONSTRAINT [FK_CafeTaille];
GO
IF OBJECT_ID(N'[dbo].[FK_CafeType]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CafeSet] DROP CONSTRAINT [FK_CafeType];
GO
IF OBJECT_ID(N'[dbo].[FK_CaissierCommande]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CommandeSet] DROP CONSTRAINT [FK_CaissierCommande];
GO
IF OBJECT_ID(N'[dbo].[FK_CommandeCafe]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CafeSet] DROP CONSTRAINT [FK_CommandeCafe];
GO
IF OBJECT_ID(N'[dbo].[FK_HistoriqueCommande]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[HistoriqueSet] DROP CONSTRAINT [FK_HistoriqueCommande];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[BaristaSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[BaristaSet];
GO
IF OBJECT_ID(N'[dbo].[CafeIngredient]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CafeIngredient];
GO
IF OBJECT_ID(N'[dbo].[CafeOption]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CafeOption];
GO
IF OBJECT_ID(N'[dbo].[CafeSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CafeSet];
GO
IF OBJECT_ID(N'[dbo].[CaissierSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CaissierSet];
GO
IF OBJECT_ID(N'[dbo].[CommandeSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CommandeSet];
GO
IF OBJECT_ID(N'[dbo].[HistoriqueSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[HistoriqueSet];
GO
IF OBJECT_ID(N'[dbo].[IngredientSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[IngredientSet];
GO
IF OBJECT_ID(N'[dbo].[OptionSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[OptionSet];
GO
IF OBJECT_ID(N'[dbo].[TailleSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TailleSet];
GO
IF OBJECT_ID(N'[dbo].[TypeSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TypeSet];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'CommandeSet'
CREATE TABLE [dbo].[CommandeSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [nomClient] nvarchar(max)  NOT NULL,
    [date] datetime  NOT NULL,
    [commentaire] nvarchar(max)  NOT NULL,
    [statut] nvarchar(max)  NOT NULL,
    [duree] int  NULL,
    [Barista_Id] int  NOT NULL,
    [Caissier_Id] int  NOT NULL
);
GO

-- Creating table 'CafeSet'
CREATE TABLE [dbo].[CafeSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [libelle] nvarchar(max)  NOT NULL,
    [tempsPreparation] int  NOT NULL,
    [Commande_Id] int  NOT NULL,
    [Type_Id] int  NOT NULL,
    [Taille_Id] int  NOT NULL
);
GO

-- Creating table 'CaissierSet'
CREATE TABLE [dbo].[CaissierSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [matricule] nvarchar(max)  NOT NULL,
    [nomPrenom] nvarchar(max)  NOT NULL,
    [horaires] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'BaristaSet'
CREATE TABLE [dbo].[BaristaSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [matricule] nvarchar(max)  NOT NULL,
    [nomPrenom] nvarchar(max)  NOT NULL,
    [horaires] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'OptionSet'
CREATE TABLE [dbo].[OptionSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [libelle] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'TypeSet'
CREATE TABLE [dbo].[TypeSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [libelle] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'IngredientSet'
CREATE TABLE [dbo].[IngredientSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [libelle] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'TailleSet'
CREATE TABLE [dbo].[TailleSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [libelle] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'HistoriqueSet'
CREATE TABLE [dbo].[HistoriqueSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Commande_Id] int  NOT NULL
);
GO

-- Creating table 'CafeOption'
CREATE TABLE [dbo].[CafeOption] (
    [Cafe_Id] int  NOT NULL,
    [Option_Id] int  NOT NULL
);
GO

-- Creating table 'CafeIngredient'
CREATE TABLE [dbo].[CafeIngredient] (
    [Cafe_Id] int  NOT NULL,
    [Ingredient_Id] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'CommandeSet'
ALTER TABLE [dbo].[CommandeSet]
ADD CONSTRAINT [PK_CommandeSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'CafeSet'
ALTER TABLE [dbo].[CafeSet]
ADD CONSTRAINT [PK_CafeSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'CaissierSet'
ALTER TABLE [dbo].[CaissierSet]
ADD CONSTRAINT [PK_CaissierSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'BaristaSet'
ALTER TABLE [dbo].[BaristaSet]
ADD CONSTRAINT [PK_BaristaSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'OptionSet'
ALTER TABLE [dbo].[OptionSet]
ADD CONSTRAINT [PK_OptionSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'TypeSet'
ALTER TABLE [dbo].[TypeSet]
ADD CONSTRAINT [PK_TypeSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'IngredientSet'
ALTER TABLE [dbo].[IngredientSet]
ADD CONSTRAINT [PK_IngredientSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'TailleSet'
ALTER TABLE [dbo].[TailleSet]
ADD CONSTRAINT [PK_TailleSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'HistoriqueSet'
ALTER TABLE [dbo].[HistoriqueSet]
ADD CONSTRAINT [PK_HistoriqueSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Cafe_Id], [Option_Id] in table 'CafeOption'
ALTER TABLE [dbo].[CafeOption]
ADD CONSTRAINT [PK_CafeOption]
    PRIMARY KEY CLUSTERED ([Cafe_Id], [Option_Id] ASC);
GO

-- Creating primary key on [Cafe_Id], [Ingredient_Id] in table 'CafeIngredient'
ALTER TABLE [dbo].[CafeIngredient]
ADD CONSTRAINT [PK_CafeIngredient]
    PRIMARY KEY CLUSTERED ([Cafe_Id], [Ingredient_Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [Commande_Id] in table 'CafeSet'
ALTER TABLE [dbo].[CafeSet]
ADD CONSTRAINT [FK_CommandeCafe]
    FOREIGN KEY ([Commande_Id])
    REFERENCES [dbo].[CommandeSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CommandeCafe'
CREATE INDEX [IX_FK_CommandeCafe]
ON [dbo].[CafeSet]
    ([Commande_Id]);
GO

-- Creating foreign key on [Barista_Id] in table 'CommandeSet'
ALTER TABLE [dbo].[CommandeSet]
ADD CONSTRAINT [FK_BaristaCommande]
    FOREIGN KEY ([Barista_Id])
    REFERENCES [dbo].[BaristaSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_BaristaCommande'
CREATE INDEX [IX_FK_BaristaCommande]
ON [dbo].[CommandeSet]
    ([Barista_Id]);
GO

-- Creating foreign key on [Cafe_Id] in table 'CafeOption'
ALTER TABLE [dbo].[CafeOption]
ADD CONSTRAINT [FK_CafeOption_Cafe]
    FOREIGN KEY ([Cafe_Id])
    REFERENCES [dbo].[CafeSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Option_Id] in table 'CafeOption'
ALTER TABLE [dbo].[CafeOption]
ADD CONSTRAINT [FK_CafeOption_Option]
    FOREIGN KEY ([Option_Id])
    REFERENCES [dbo].[OptionSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CafeOption_Option'
CREATE INDEX [IX_FK_CafeOption_Option]
ON [dbo].[CafeOption]
    ([Option_Id]);
GO

-- Creating foreign key on [Type_Id] in table 'CafeSet'
ALTER TABLE [dbo].[CafeSet]
ADD CONSTRAINT [FK_CafeType]
    FOREIGN KEY ([Type_Id])
    REFERENCES [dbo].[TypeSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CafeType'
CREATE INDEX [IX_FK_CafeType]
ON [dbo].[CafeSet]
    ([Type_Id]);
GO

-- Creating foreign key on [Cafe_Id] in table 'CafeIngredient'
ALTER TABLE [dbo].[CafeIngredient]
ADD CONSTRAINT [FK_CafeIngredient_Cafe]
    FOREIGN KEY ([Cafe_Id])
    REFERENCES [dbo].[CafeSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Ingredient_Id] in table 'CafeIngredient'
ALTER TABLE [dbo].[CafeIngredient]
ADD CONSTRAINT [FK_CafeIngredient_Ingredient]
    FOREIGN KEY ([Ingredient_Id])
    REFERENCES [dbo].[IngredientSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CafeIngredient_Ingredient'
CREATE INDEX [IX_FK_CafeIngredient_Ingredient]
ON [dbo].[CafeIngredient]
    ([Ingredient_Id]);
GO

-- Creating foreign key on [Taille_Id] in table 'CafeSet'
ALTER TABLE [dbo].[CafeSet]
ADD CONSTRAINT [FK_CafeTaille]
    FOREIGN KEY ([Taille_Id])
    REFERENCES [dbo].[TailleSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CafeTaille'
CREATE INDEX [IX_FK_CafeTaille]
ON [dbo].[CafeSet]
    ([Taille_Id]);
GO

-- Creating foreign key on [Caissier_Id] in table 'CommandeSet'
ALTER TABLE [dbo].[CommandeSet]
ADD CONSTRAINT [FK_CaissierCommande]
    FOREIGN KEY ([Caissier_Id])
    REFERENCES [dbo].[CaissierSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CaissierCommande'
CREATE INDEX [IX_FK_CaissierCommande]
ON [dbo].[CommandeSet]
    ([Caissier_Id]);
GO

-- Creating foreign key on [Commande_Id] in table 'HistoriqueSet'
ALTER TABLE [dbo].[HistoriqueSet]
ADD CONSTRAINT [FK_HistoriqueCommande]
    FOREIGN KEY ([Commande_Id])
    REFERENCES [dbo].[CommandeSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_HistoriqueCommande'
CREATE INDEX [IX_FK_HistoriqueCommande]
ON [dbo].[HistoriqueSet]
    ([Commande_Id]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------