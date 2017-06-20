.class public Lcom/xingluo/platform/single/sdk/item/XLCTEGAMEData;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x543e29b9e36f0f43L


# instance fields
.field private ToolsAlias:Ljava/lang/String;

.field private ToolsDesc:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xingluo/platform/single/sdk/item/XLCTEGAMEData;->ToolsAlias:Ljava/lang/String;

    iput-object p2, p0, Lcom/xingluo/platform/single/sdk/item/XLCTEGAMEData;->ToolsDesc:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getToolsAlias()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/item/XLCTEGAMEData;->ToolsAlias:Ljava/lang/String;

    return-object v0
.end method

.method public getToolsDesc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/item/XLCTEGAMEData;->ToolsDesc:Ljava/lang/String;

    return-object v0
.end method

.method public setToolsAlias(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/sdk/item/XLCTEGAMEData;->ToolsAlias:Ljava/lang/String;

    return-void
.end method

.method public setToolsDesc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/sdk/item/XLCTEGAMEData;->ToolsDesc:Ljava/lang/String;

    return-void
.end method
