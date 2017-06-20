.class public Lcom/xingluo/platform/gameplus/a/d;
.super Ljava/lang/Object;


# static fields
.field private static final c:I = 0x1

.field private static final d:I = 0x2

.field private static final e:I = 0x3

.field private static final f:I = 0x4

.field private static h:Lcom/xingluo/platform/gameplus/a/d;


# instance fields
.field a:Lcom/xingluo/platform/gameplus/service/d$a;

.field b:Lcom/xingluo/platform/gameplus/mode/AidlListener;

.field private g:Lcom/xingluo/platform/gameplus/service/c;

.field private i:Lcom/xingluo/platform/gameplus/a/a/a;

.field private final j:Landroid/os/Handler;

.field private k:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/xingluo/platform/gameplus/a/d;->h:Lcom/xingluo/platform/gameplus/a/d;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xingluo/platform/gameplus/a/d;->g:Lcom/xingluo/platform/gameplus/service/c;

    iput-object v0, p0, Lcom/xingluo/platform/gameplus/a/d;->i:Lcom/xingluo/platform/gameplus/a/a/a;

    new-instance v0, Lcom/xingluo/platform/gameplus/a/e;

    invoke-direct {v0, p0}, Lcom/xingluo/platform/gameplus/a/e;-><init>(Lcom/xingluo/platform/gameplus/a/d;)V

    iput-object v0, p0, Lcom/xingluo/platform/gameplus/a/d;->j:Landroid/os/Handler;

    new-instance v0, Lcom/xingluo/platform/gameplus/a/f;

    invoke-direct {v0, p0}, Lcom/xingluo/platform/gameplus/a/f;-><init>(Lcom/xingluo/platform/gameplus/a/d;)V

    iput-object v0, p0, Lcom/xingluo/platform/gameplus/a/d;->k:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/xingluo/platform/gameplus/a/g;

    invoke-direct {v0, p0}, Lcom/xingluo/platform/gameplus/a/g;-><init>(Lcom/xingluo/platform/gameplus/a/d;)V

    iput-object v0, p0, Lcom/xingluo/platform/gameplus/a/d;->a:Lcom/xingluo/platform/gameplus/service/d$a;

    new-instance v0, Lcom/xingluo/platform/gameplus/mode/AidlListener;

    invoke-static {}, Lcom/xingluo/platform/gameplus/a/c;->a()Lcom/xingluo/platform/gameplus/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xingluo/platform/gameplus/a/c;->b()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xingluo/platform/gameplus/a/d;->a:Lcom/xingluo/platform/gameplus/service/d$a;

    invoke-direct {v0, v1, v2}, Lcom/xingluo/platform/gameplus/mode/AidlListener;-><init>(Ljava/lang/String;Lcom/xingluo/platform/gameplus/service/d;)V

    iput-object v0, p0, Lcom/xingluo/platform/gameplus/a/d;->b:Lcom/xingluo/platform/gameplus/mode/AidlListener;

    return-void
.end method

.method public static a()Lcom/xingluo/platform/gameplus/a/d;
    .locals 1

    sget-object v0, Lcom/xingluo/platform/gameplus/a/d;->h:Lcom/xingluo/platform/gameplus/a/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xingluo/platform/gameplus/a/d;

    invoke-direct {v0}, Lcom/xingluo/platform/gameplus/a/d;-><init>()V

    sput-object v0, Lcom/xingluo/platform/gameplus/a/d;->h:Lcom/xingluo/platform/gameplus/a/d;

    :cond_0
    sget-object v0, Lcom/xingluo/platform/gameplus/a/d;->h:Lcom/xingluo/platform/gameplus/a/d;

    return-object v0
.end method

.method static synthetic a(Lcom/xingluo/platform/gameplus/a/d;)Lcom/xingluo/platform/gameplus/service/c;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/a/d;->g:Lcom/xingluo/platform/gameplus/service/c;

    return-object v0
.end method

.method static synthetic a(Lcom/xingluo/platform/gameplus/a/d;Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xingluo/platform/gameplus/a/d;->b(Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;)V

    return-void
.end method

.method static synthetic a(Lcom/xingluo/platform/gameplus/a/d;Lcom/xingluo/platform/gameplus/service/c;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/gameplus/a/d;->g:Lcom/xingluo/platform/gameplus/service/c;

    return-void
.end method

.method static synthetic a(Lcom/xingluo/platform/gameplus/a/d;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/xingluo/platform/gameplus/a/d;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/xingluo/platform/gameplus/utils/o;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    invoke-static {}, Lcom/xingluo/platform/gameplus/a/c;->a()Lcom/xingluo/platform/gameplus/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xingluo/platform/gameplus/a/c;->b()Landroid/content/Context;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/xingluo/platform/gameplus/utils/ApkUtil;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lcom/xingluo/platform/gameplus/a/d;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/a/d;->j:Landroid/os/Handler;

    return-object v0
.end method

.method private b(Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;)V
    .locals 3

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/a/d;->i:Lcom/xingluo/platform/gameplus/a/a/a;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/xingluo/platform/gameplus/mode/GPDownloadedAppInfo;

    invoke-direct {v0}, Lcom/xingluo/platform/gameplus/mode/GPDownloadedAppInfo;-><init>()V

    invoke-virtual {p1}, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/gameplus/mode/GPDownloadedAppInfo;->b(I)V

    invoke-virtual {p1}, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/gameplus/mode/GPDownloadedAppInfo;->j(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/gameplus/mode/GPDownloadedAppInfo;->h(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/gameplus/mode/GPDownloadedAppInfo;->b(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/gameplus/mode/GPDownloadedAppInfo;->d(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/gameplus/mode/GPDownloadedAppInfo;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->h()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/gameplus/mode/GPDownloadedAppInfo;->d(I)V

    invoke-virtual {p1}, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/gameplus/mode/GPDownloadedAppInfo;->f(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/gameplus/mode/GPDownloadedAppInfo;->c(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/gameplus/mode/GPDownloadedAppInfo;->i(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/gameplus/mode/GPDownloadedAppInfo;->k(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/gameplus/mode/GPDownloadedAppInfo;->c(I)V

    invoke-virtual {p1}, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/gameplus/mode/GPDownloadedAppInfo;->e(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->r()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/xingluo/platform/gameplus/mode/GPDownloadedAppInfo;->a(J)V

    invoke-virtual {p1}, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/gameplus/mode/GPDownloadedAppInfo;->g(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->n()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/gameplus/mode/GPDownloadedAppInfo;->a(I)V

    invoke-virtual {p1}, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->u()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/gameplus/mode/GPDownloadedAppInfo;->l(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xingluo/platform/gameplus/a/d;->i:Lcom/xingluo/platform/gameplus/a/a/a;

    invoke-interface {v1, v0}, Lcom/xingluo/platform/gameplus/a/a/a;->a(Lcom/xingluo/platform/gameplus/mode/GPDownloadedAppInfo;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/xingluo/platform/gameplus/a/a/a;)V
    .locals 2

    iput-object p1, p0, Lcom/xingluo/platform/gameplus/a/d;->i:Lcom/xingluo/platform/gameplus/a/a/a;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/xingluo/platform/gameplus/a/h;

    invoke-direct {v1, p0}, Lcom/xingluo/platform/gameplus/a/h;-><init>(Lcom/xingluo/platform/gameplus/a/d;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    invoke-static {}, Lcom/xingluo/platform/gameplus/utils/i;->a()V

    return-void
.end method

.method protected a(Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;)V
    .locals 3

    if-eqz p1, :cond_0

    :try_start_0
    const-string v0, "tim"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ">>>>>>\u662f\u5426\u9759\u9ed8\u5b89\u88c5\uff1a "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->f()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<<<<<<<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xingluo/platform/gameplus/utils/j;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->f()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/xingluo/platform/gameplus/a/c;->a()Lcom/xingluo/platform/gameplus/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/platform/gameplus/a/c;->b()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageCodePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xingluo/platform/gameplus/utils/ApkUtil;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "tim"

    const-string v1, "\u5df2\u83b7\u53d6root\u6743\u9650\uff0c\u9759\u9ed8\u5b89\u88c5"

    invoke-static {v0, v1}, Lcom/xingluo/platform/gameplus/utils/j;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/xingluo/platform/gameplus/install/GPInstallPacket;

    invoke-direct {v0}, Lcom/xingluo/platform/gameplus/install/GPInstallPacket;-><init>()V

    invoke-virtual {p1}, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/gameplus/install/GPInstallPacket;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/gameplus/install/GPInstallPacket;->b(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/gameplus/install/GPInstallPacket;->c(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/gameplus/install/GPInstallPacket;->d(Ljava/lang/String;)V

    invoke-static {}, Lcom/xingluo/platform/gameplus/a/c;->a()Lcom/xingluo/platform/gameplus/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/platform/gameplus/a/c;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xingluo/platform/gameplus/install/a;->a(Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lcom/xingluo/platform/gameplus/a/d;->b(Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;)V

    return-void

    :cond_1
    :try_start_1
    const-string v0, "tim"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u5e38\u89c4\u5b89\u88c5\uff0c\u53d1\u9001\u901a\u77e5\uff01localPath: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xingluo/platform/gameplus/utils/j;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/xingluo/platform/gameplus/broadcast/a;->a()Lcom/xingluo/platform/gameplus/broadcast/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xingluo/platform/gameplus/broadcast/a;->a(Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public b()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xingluo.platform.gameplus.service"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/xingluo/platform/gameplus/a/c;->a()Lcom/xingluo/platform/gameplus/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xingluo/platform/gameplus/a/c;->b()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/xingluo/platform/gameplus/a/c;->a()Lcom/xingluo/platform/gameplus/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xingluo/platform/gameplus/a/c;->b()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-static {}, Lcom/xingluo/platform/gameplus/a/c;->a()Lcom/xingluo/platform/gameplus/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xingluo/platform/gameplus/a/c;->b()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/xingluo/platform/gameplus/a/d;->k:Landroid/content/ServiceConnection;

    invoke-static {}, Lcom/xingluo/platform/gameplus/a/c;->a()Lcom/xingluo/platform/gameplus/a/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xingluo/platform/gameplus/a/c;->b()Landroid/content/Context;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public c()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/xingluo/platform/gameplus/a/j;

    invoke-direct {v1, p0}, Lcom/xingluo/platform/gameplus/a/j;-><init>(Lcom/xingluo/platform/gameplus/a/d;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
