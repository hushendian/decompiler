.class public Lcom/xingluo/platform/single/d/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xingluo/platform/single/d/c$a;
    }
.end annotation


# static fields
.field private static a:Lcom/xingluo/platform/single/d/c;

.field private static b:Landroid/content/Context;


# instance fields
.field private c:Landroid/location/LocationManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p1, Lcom/xingluo/platform/single/d/c;->b:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/xingluo/platform/single/d/c;
    .locals 1

    sget-object v0, Lcom/xingluo/platform/single/d/c;->a:Lcom/xingluo/platform/single/d/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xingluo/platform/single/d/c;

    invoke-direct {v0, p0}, Lcom/xingluo/platform/single/d/c;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xingluo/platform/single/d/c;->a:Lcom/xingluo/platform/single/d/c;

    :cond_0
    sget-object v0, Lcom/xingluo/platform/single/d/c;->a:Lcom/xingluo/platform/single/d/c;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/xingluo/platform/single/d/c$a;)V
    .locals 6

    invoke-static {}, Lcom/xingluo/platform/single/json/c;->a()Lcom/xingluo/platform/single/json/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/platform/single/json/a;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/xingluo/platform/single/net/g;->b()Lcom/xingluo/platform/single/net/f;

    move-result-object v0

    const-string v1, "http://xlsdk.sdk.sinraten.com/sdkServer/sdkconfig"

    const/16 v2, 0xdc

    new-instance v4, Lcom/xingluo/platform/single/d/d;

    invoke-direct {v4, p0, p1}, Lcom/xingluo/platform/single/d/d;-><init>(Lcom/xingluo/platform/single/d/c;Lcom/xingluo/platform/single/d/c$a;)V

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/xingluo/platform/single/net/f;->a(Ljava/lang/String;ILjava/lang/String;Lcom/xingluo/platform/single/net/INetListener;Lcom/xingluo/platform/single/json/AbstractJSONHelper;)I

    return-void
.end method
