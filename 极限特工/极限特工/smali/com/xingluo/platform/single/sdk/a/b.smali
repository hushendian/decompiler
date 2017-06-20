.class public Lcom/xingluo/platform/single/sdk/a/b;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/xingluo/platform/single/sdk/a/b;


# instance fields
.field private b:Lcom/xingluo/platform/single/sdk/a/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/xingluo/platform/single/sdk/a/c;

    invoke-direct {v0}, Lcom/xingluo/platform/single/sdk/a/c;-><init>()V

    iput-object v0, p0, Lcom/xingluo/platform/single/sdk/a/b;->b:Lcom/xingluo/platform/single/sdk/a/c;

    return-void
.end method

.method public static a()Lcom/xingluo/platform/single/sdk/a/c;
    .locals 1

    invoke-static {}, Lcom/xingluo/platform/single/sdk/a/b;->b()Lcom/xingluo/platform/single/sdk/a/b;

    move-result-object v0

    iget-object v0, v0, Lcom/xingluo/platform/single/sdk/a/b;->b:Lcom/xingluo/platform/single/sdk/a/c;

    return-object v0
.end method

.method private static b()Lcom/xingluo/platform/single/sdk/a/b;
    .locals 1

    sget-object v0, Lcom/xingluo/platform/single/sdk/a/b;->a:Lcom/xingluo/platform/single/sdk/a/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xingluo/platform/single/sdk/a/b;

    invoke-direct {v0}, Lcom/xingluo/platform/single/sdk/a/b;-><init>()V

    sput-object v0, Lcom/xingluo/platform/single/sdk/a/b;->a:Lcom/xingluo/platform/single/sdk/a/b;

    :cond_0
    sget-object v0, Lcom/xingluo/platform/single/sdk/a/b;->a:Lcom/xingluo/platform/single/sdk/a/b;

    return-object v0
.end method
