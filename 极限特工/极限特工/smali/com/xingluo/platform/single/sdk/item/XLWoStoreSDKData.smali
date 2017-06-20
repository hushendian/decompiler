.class public Lcom/xingluo/platform/single/sdk/item/XLWoStoreSDKData;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x30b2a8bcee5dd3f2L


# instance fields
.field private BuyIndex:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xingluo/platform/single/sdk/item/XLWoStoreSDKData;->BuyIndex:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBuyIndex()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/item/XLWoStoreSDKData;->BuyIndex:Ljava/lang/String;

    return-object v0
.end method

.method public setBuyIndex(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/sdk/item/XLWoStoreSDKData;->BuyIndex:Ljava/lang/String;

    return-void
.end method
