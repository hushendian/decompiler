.class public Lcom/xingluo/platform/single/third/b/b;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/xingluo/platform/single/third/b/b;


# instance fields
.field private b:Lcom/xingluo/platform/single/third/b/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/xingluo/platform/single/third/b/c;

    invoke-direct {v0}, Lcom/xingluo/platform/single/third/b/c;-><init>()V

    iput-object v0, p0, Lcom/xingluo/platform/single/third/b/b;->b:Lcom/xingluo/platform/single/third/b/c;

    return-void
.end method

.method public static a()Lcom/xingluo/platform/single/third/b/c;
    .locals 1

    invoke-static {}, Lcom/xingluo/platform/single/third/b/b;->b()Lcom/xingluo/platform/single/third/b/b;

    move-result-object v0

    iget-object v0, v0, Lcom/xingluo/platform/single/third/b/b;->b:Lcom/xingluo/platform/single/third/b/c;

    return-object v0
.end method

.method private static b()Lcom/xingluo/platform/single/third/b/b;
    .locals 1

    sget-object v0, Lcom/xingluo/platform/single/third/b/b;->a:Lcom/xingluo/platform/single/third/b/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xingluo/platform/single/third/b/b;

    invoke-direct {v0}, Lcom/xingluo/platform/single/third/b/b;-><init>()V

    sput-object v0, Lcom/xingluo/platform/single/third/b/b;->a:Lcom/xingluo/platform/single/third/b/b;

    :cond_0
    sget-object v0, Lcom/xingluo/platform/single/third/b/b;->a:Lcom/xingluo/platform/single/third/b/b;

    return-object v0
.end method
