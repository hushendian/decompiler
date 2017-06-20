.class public Lcom/xingluo/platform/single/e/c;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/xingluo/platform/single/util/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/xingluo/platform/single/e/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xingluo/platform/single/util/i;->a(Ljava/lang/String;)Lcom/xingluo/platform/single/util/i;

    move-result-object v0

    sput-object v0, Lcom/xingluo/platform/single/e/c;->a:Lcom/xingluo/platform/single/util/i;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 5

    invoke-static {p0}, Lcom/xingluo/platform/single/e/c;->b(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/4 v2, 0x1

    aget-object v0, v0, v2

    sget-object v2, Lcom/xingluo/platform/single/e/c;->a:Lcom/xingluo/platform/single/util/i;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "queryMobilePayChannel operator = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

    invoke-static {}, Lcom/xingluo/platform/single/net/ConnectManagerHelper;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/xingluo/platform/single/e/d;->a()Lcom/xingluo/platform/single/e/d;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/xingluo/platform/single/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Lcom/xingluo/platform/single/e/d;->a(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public static b(Landroid/content/Context;)[Ljava/lang/String;
    .locals 4

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    invoke-static {p0}, Lcom/xingluo/platform/single/util/q;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string v0, ""

    sget-object v2, Lcom/xingluo/platform/single/e/c;->a:Lcom/xingluo/platform/single/util/i;

    const-string v3, "The telephone number cannot be found."

    invoke-virtual {v2, v3}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

    :goto_0
    invoke-static {p0}, Lcom/xingluo/platform/single/util/s;->a(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Lcom/xingluo/platform/single/util/MNCType;->a(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v0, v1, v3

    const/4 v0, 0x1

    aput-object v2, v1, v0

    return-object v1

    :cond_1
    sget-object v2, Lcom/xingluo/platform/single/e/c;->a:Lcom/xingluo/platform/single/util/i;

    const-string v3, "The telephone number can be found."

    invoke-virtual {v2, v3}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

    goto :goto_0
.end method
