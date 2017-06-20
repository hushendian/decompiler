.class public Lcom/xingluo/platform/single/third/d/b;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/app/Activity;)Lcom/xingluo/platform/single/third/d/a;
    .locals 1

    sget-object v0, Lcom/xingluo/platform/single/third/XLSingleThirdConfig;->ALIPAY:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/xingluo/platform/single/third/d/a/a;

    invoke-direct {v0}, Lcom/xingluo/platform/single/third/d/a/a;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/xingluo/platform/single/third/XLSingleThirdConfig;->WEIXIN:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/xingluo/platform/single/third/d/a/d;

    invoke-direct {v0}, Lcom/xingluo/platform/single/third/d/a/d;-><init>()V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/xingluo/platform/single/third/XLSingleThirdConfig;->WEIXIN2:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/xingluo/platform/single/third/d/a/e;

    invoke-direct {v0}, Lcom/xingluo/platform/single/third/d/a/e;-><init>()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
