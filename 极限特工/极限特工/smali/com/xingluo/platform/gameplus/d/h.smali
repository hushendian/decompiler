.class public Lcom/xingluo/platform/gameplus/d/h;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/xingluo/platform/gameplus/d/h;


# instance fields
.field private b:Lcom/xingluo/platform/gameplus/d/i;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/xingluo/platform/gameplus/d/i;

    invoke-direct {v0}, Lcom/xingluo/platform/gameplus/d/i;-><init>()V

    iput-object v0, p0, Lcom/xingluo/platform/gameplus/d/h;->b:Lcom/xingluo/platform/gameplus/d/i;

    return-void
.end method

.method public static a()Lcom/xingluo/platform/gameplus/d/i;
    .locals 1

    invoke-static {}, Lcom/xingluo/platform/gameplus/d/h;->b()Lcom/xingluo/platform/gameplus/d/h;

    move-result-object v0

    iget-object v0, v0, Lcom/xingluo/platform/gameplus/d/h;->b:Lcom/xingluo/platform/gameplus/d/i;

    return-object v0
.end method

.method private static b()Lcom/xingluo/platform/gameplus/d/h;
    .locals 1

    sget-object v0, Lcom/xingluo/platform/gameplus/d/h;->a:Lcom/xingluo/platform/gameplus/d/h;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xingluo/platform/gameplus/d/h;

    invoke-direct {v0}, Lcom/xingluo/platform/gameplus/d/h;-><init>()V

    sput-object v0, Lcom/xingluo/platform/gameplus/d/h;->a:Lcom/xingluo/platform/gameplus/d/h;

    :cond_0
    sget-object v0, Lcom/xingluo/platform/gameplus/d/h;->a:Lcom/xingluo/platform/gameplus/d/h;

    return-object v0
.end method
