.class public Lcom/xingluo/platform/single/third/f/c;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String; = "json147_alipay_seller"

.field public static final b:Ljava/lang/String; = "json147_alipay_server_notify_url"

.field public static final c:Ljava/lang/String; = "json147_alipay_partner"

.field public static final d:Ljava/lang/String; = "json147_alipay_rsa_private"

.field public static final e:Ljava/lang/String; = "json147_alipay_rsa_alipay_public"

.field public static final f:Ljava/lang/String; = "json147_alipay"

.field public static final g:Ljava/lang/String; = "json147_merid"

.field public static final h:Ljava/lang/String; = "json147_webpay"

.field public static final i:Ljava/lang/String; = "json147_wx_appid"

.field public static final j:Ljava/lang/String; = "json147_weixin"

.field public static final k:Ljava/lang/String; = "json147_wap_url"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/xingluo/platform/single/third/dao/ThirdPayTypeData;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Lcom/xingluo/platform/single/third/dao/b;->a(Landroid/content/Context;)Lcom/xingluo/platform/single/third/dao/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/platform/single/third/dao/b;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "&"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/xingluo/platform/single/third/dao/ThirdPayTypeData;

    invoke-direct {v3}, Lcom/xingluo/platform/single/third/dao/ThirdPayTypeData;-><init>()V

    const/4 v4, 0x0

    aget-object v4, v0, v4

    invoke-virtual {v3, v4}, Lcom/xingluo/platform/single/third/dao/ThirdPayTypeData;->b(Ljava/lang/String;)V

    const/4 v4, 0x1

    aget-object v4, v0, v4

    invoke-virtual {v3, v4}, Lcom/xingluo/platform/single/third/dao/ThirdPayTypeData;->a(Ljava/lang/String;)V

    const/4 v4, 0x2

    aget-object v4, v0, v4

    invoke-virtual {v3, v4}, Lcom/xingluo/platform/single/third/dao/ThirdPayTypeData;->c(Ljava/lang/String;)V

    const/4 v4, 0x3

    aget-object v0, v0, v4

    invoke-virtual {v3, v0}, Lcom/xingluo/platform/single/third/dao/ThirdPayTypeData;->d(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
