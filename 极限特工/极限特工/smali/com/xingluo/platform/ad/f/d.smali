.class public Lcom/xingluo/platform/ad/f/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xingluo/platform/ad/f/d$a;
    }
.end annotation


# static fields
.field private static a:Lcom/xingluo/platform/ad/f/d;


# instance fields
.field private b:Ljava/util/Timer;

.field private c:Lcom/xingluo/platform/ad/f/d$a;

.field private d:Landroid/app/Activity;

.field private e:Lcom/xingluo/platform/single/callback/IXLSDKCallBack;

.field private f:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/xingluo/platform/ad/f/d;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/ad/f/d;->d:Landroid/app/Activity;

    return-object v0
.end method

.method public static a()Lcom/xingluo/platform/ad/f/d;
    .locals 1

    sget-object v0, Lcom/xingluo/platform/ad/f/d;->a:Lcom/xingluo/platform/ad/f/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xingluo/platform/ad/f/d;

    invoke-direct {v0}, Lcom/xingluo/platform/ad/f/d;-><init>()V

    sput-object v0, Lcom/xingluo/platform/ad/f/d;->a:Lcom/xingluo/platform/ad/f/d;

    :cond_0
    sget-object v0, Lcom/xingluo/platform/ad/f/d;->a:Lcom/xingluo/platform/ad/f/d;

    return-object v0
.end method

.method static synthetic b(Lcom/xingluo/platform/ad/f/d;)Lcom/xingluo/platform/single/callback/IXLSDKCallBack;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/ad/f/d;->e:Lcom/xingluo/platform/single/callback/IXLSDKCallBack;

    return-object v0
.end method

.method static synthetic c(Lcom/xingluo/platform/ad/f/d;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/xingluo/platform/ad/f/d;->f:Z

    return v0
.end method


# virtual methods
.method public a(Landroid/app/Activity;Lcom/xingluo/platform/single/callback/IXLSDKCallBack;Z)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iput-object p1, p0, Lcom/xingluo/platform/ad/f/d;->d:Landroid/app/Activity;

    iput-object p2, p0, Lcom/xingluo/platform/ad/f/d;->e:Lcom/xingluo/platform/single/callback/IXLSDKCallBack;

    iput-boolean p3, p0, Lcom/xingluo/platform/ad/f/d;->f:Z

    :cond_0
    iput-object v0, p0, Lcom/xingluo/platform/ad/f/d;->b:Ljava/util/Timer;

    iput-object v0, p0, Lcom/xingluo/platform/ad/f/d;->c:Lcom/xingluo/platform/ad/f/d$a;

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/xingluo/platform/ad/f/d;->b:Ljava/util/Timer;

    new-instance v0, Lcom/xingluo/platform/ad/f/d$a;

    invoke-direct {v0, p0}, Lcom/xingluo/platform/ad/f/d$a;-><init>(Lcom/xingluo/platform/ad/f/d;)V

    iput-object v0, p0, Lcom/xingluo/platform/ad/f/d;->c:Lcom/xingluo/platform/ad/f/d$a;

    iget-object v0, p0, Lcom/xingluo/platform/ad/f/d;->b:Ljava/util/Timer;

    iget-object v1, p0, Lcom/xingluo/platform/ad/f/d;->c:Lcom/xingluo/platform/ad/f/d$a;

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method public b()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/xingluo/platform/ad/f/d;->c:Lcom/xingluo/platform/ad/f/d$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/ad/f/d;->c:Lcom/xingluo/platform/ad/f/d$a;

    invoke-virtual {v0}, Lcom/xingluo/platform/ad/f/d$a;->cancel()Z

    iput-object v1, p0, Lcom/xingluo/platform/ad/f/d;->c:Lcom/xingluo/platform/ad/f/d$a;

    :cond_0
    iget-object v0, p0, Lcom/xingluo/platform/ad/f/d;->b:Ljava/util/Timer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xingluo/platform/ad/f/d;->b:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lcom/xingluo/platform/ad/f/d;->b:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    iput-object v1, p0, Lcom/xingluo/platform/ad/f/d;->b:Ljava/util/Timer;

    :cond_1
    return-void
.end method
