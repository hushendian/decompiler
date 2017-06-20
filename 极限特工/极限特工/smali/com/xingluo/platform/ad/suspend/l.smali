.class public Lcom/xingluo/platform/ad/suspend/l;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xingluo/platform/ad/suspend/l$a;,
        Lcom/xingluo/platform/ad/suspend/l$b;
    }
.end annotation


# static fields
.field private static final a:I = 0x320

.field private static b:Lcom/xingluo/platform/ad/suspend/l;


# instance fields
.field private c:Lcom/xingluo/platform/ad/suspend/s;

.field private d:Lcom/xingluo/platform/ad/suspend/XLBannerWindow;

.field private e:Landroid/app/Activity;

.field private f:Landroid/app/Activity;

.field private g:Ljava/util/Timer;

.field private h:Ljava/util/Timer;

.field private i:Ljava/util/Timer;

.field private j:Lcom/xingluo/platform/ad/suspend/l$a;

.field private k:Lcom/xingluo/platform/ad/suspend/l$b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/xingluo/platform/ad/suspend/l;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/l;->e:Landroid/app/Activity;

    return-object v0
.end method

.method public static a()Lcom/xingluo/platform/ad/suspend/l;
    .locals 1

    sget-object v0, Lcom/xingluo/platform/ad/suspend/l;->b:Lcom/xingluo/platform/ad/suspend/l;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xingluo/platform/ad/suspend/l;

    invoke-direct {v0}, Lcom/xingluo/platform/ad/suspend/l;-><init>()V

    sput-object v0, Lcom/xingluo/platform/ad/suspend/l;->b:Lcom/xingluo/platform/ad/suspend/l;

    :cond_0
    sget-object v0, Lcom/xingluo/platform/ad/suspend/l;->b:Lcom/xingluo/platform/ad/suspend/l;

    return-object v0
.end method

.method private a(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    const/4 v0, 0x0

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/xingluo/platform/ad/suspend/l;Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/xingluo/platform/ad/suspend/l;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/xingluo/platform/ad/suspend/l;)Lcom/xingluo/platform/ad/suspend/s;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/l;->c:Lcom/xingluo/platform/ad/suspend/s;

    return-object v0
.end method

.method static synthetic c(Lcom/xingluo/platform/ad/suspend/l;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/l;->f:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic d(Lcom/xingluo/platform/ad/suspend/l;)Lcom/xingluo/platform/ad/suspend/XLBannerWindow;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/l;->d:Lcom/xingluo/platform/ad/suspend/XLBannerWindow;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/app/Activity;Lcom/xingluo/platform/ad/pojos/XLAdsBannerGameData;Z)V
    .locals 6

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/xingluo/platform/ad/suspend/l;->f:Landroid/app/Activity;

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/l;->f:Landroid/app/Activity;

    const-string v1, "isShow"

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "isView"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/l;->f:Landroid/app/Activity;

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "isBannerViewShow"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/l;->f:Landroid/app/Activity;

    invoke-static {v0}, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->getXLSuspensionBannerWindowInstance(Landroid/content/Context;)Lcom/xingluo/platform/ad/suspend/XLBannerWindow;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/ad/suspend/l;->d:Lcom/xingluo/platform/ad/suspend/XLBannerWindow;

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/l;->d:Lcom/xingluo/platform/ad/suspend/XLBannerWindow;

    invoke-virtual {v0, p2, p3}, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->initBannerWindow(Lcom/xingluo/platform/ad/pojos/XLAdsBannerGameData;Z)V

    :cond_0
    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/l;->j:Lcom/xingluo/platform/ad/suspend/l$a;

    if-nez v0, :cond_1

    new-instance v0, Lcom/xingluo/platform/ad/suspend/l$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xingluo/platform/ad/suspend/l$a;-><init>(Lcom/xingluo/platform/ad/suspend/l;Lcom/xingluo/platform/ad/suspend/l$a;)V

    iput-object v0, p0, Lcom/xingluo/platform/ad/suspend/l;->j:Lcom/xingluo/platform/ad/suspend/l$a;

    :cond_1
    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/l;->h:Ljava/util/Timer;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/xingluo/platform/ad/suspend/l;->h:Ljava/util/Timer;

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/l;->h:Ljava/util/Timer;

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/l;->j:Lcom/xingluo/platform/ad/suspend/l$a;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x320

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    :cond_2
    return-void
.end method

.method public a(Landroid/app/Activity;Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;)V
    .locals 6

    iput-object p1, p0, Lcom/xingluo/platform/ad/suspend/l;->e:Landroid/app/Activity;

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/l;->e:Landroid/app/Activity;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/l;->e:Landroid/app/Activity;

    invoke-static {v0}, Lcom/xingluo/platform/ad/suspend/s;->a(Landroid/content/Context;)Lcom/xingluo/platform/ad/suspend/s;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/ad/suspend/l;->c:Lcom/xingluo/platform/ad/suspend/s;

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/l;->c:Lcom/xingluo/platform/ad/suspend/s;

    invoke-virtual {v0, p2}, Lcom/xingluo/platform/ad/suspend/s;->a(Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;)V

    :cond_0
    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/l;->k:Lcom/xingluo/platform/ad/suspend/l$b;

    if-nez v0, :cond_1

    new-instance v0, Lcom/xingluo/platform/ad/suspend/l$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xingluo/platform/ad/suspend/l$b;-><init>(Lcom/xingluo/platform/ad/suspend/l;Lcom/xingluo/platform/ad/suspend/l$b;)V

    iput-object v0, p0, Lcom/xingluo/platform/ad/suspend/l;->k:Lcom/xingluo/platform/ad/suspend/l$b;

    :cond_1
    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/l;->g:Ljava/util/Timer;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/xingluo/platform/ad/suspend/l;->g:Ljava/util/Timer;

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/l;->g:Ljava/util/Timer;

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/l;->k:Lcom/xingluo/platform/ad/suspend/l$b;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x320

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    :cond_2
    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/l;->c:Lcom/xingluo/platform/ad/suspend/s;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/l;->c:Lcom/xingluo/platform/ad/suspend/s;

    invoke-virtual {v0}, Lcom/xingluo/platform/ad/suspend/s;->c()V

    :cond_0
    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/l;->d:Lcom/xingluo/platform/ad/suspend/XLBannerWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/l;->d:Lcom/xingluo/platform/ad/suspend/XLBannerWindow;

    invoke-virtual {v0}, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->removeBannerView()V

    :cond_1
    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/l;->g:Ljava/util/Timer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/l;->g:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_2
    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/l;->k:Lcom/xingluo/platform/ad/suspend/l$b;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/l;->k:Lcom/xingluo/platform/ad/suspend/l$b;

    invoke-virtual {v0}, Lcom/xingluo/platform/ad/suspend/l$b;->cancel()Z

    :cond_3
    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/l;->h:Ljava/util/Timer;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/l;->h:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_4
    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/l;->j:Lcom/xingluo/platform/ad/suspend/l$a;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/l;->j:Lcom/xingluo/platform/ad/suspend/l$a;

    invoke-virtual {v0}, Lcom/xingluo/platform/ad/suspend/l$a;->cancel()Z

    :cond_5
    return-void
.end method
