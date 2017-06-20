.class public Lcom/xingluo/platform/ad/pojos/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xingluo/platform/ad/pojos/a$a;
    }
.end annotation


# static fields
.field private static final a:I = 0x1

.field private static b:Lcom/xingluo/platform/ad/pojos/a;


# instance fields
.field private c:Ljava/util/Timer;

.field private d:Lcom/xingluo/platform/ad/pojos/a$a;

.field private e:Landroid/app/Activity;

.field private f:Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:Z

.field private j:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/xingluo/platform/ad/pojos/b;

    invoke-direct {v0, p0}, Lcom/xingluo/platform/ad/pojos/b;-><init>(Lcom/xingluo/platform/ad/pojos/a;)V

    iput-object v0, p0, Lcom/xingluo/platform/ad/pojos/a;->j:Landroid/os/Handler;

    return-void
.end method

.method public static declared-synchronized a()Lcom/xingluo/platform/ad/pojos/a;
    .locals 2

    const-class v1, Lcom/xingluo/platform/ad/pojos/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xingluo/platform/ad/pojos/a;->b:Lcom/xingluo/platform/ad/pojos/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xingluo/platform/ad/pojos/a;

    invoke-direct {v0}, Lcom/xingluo/platform/ad/pojos/a;-><init>()V

    sput-object v0, Lcom/xingluo/platform/ad/pojos/a;->b:Lcom/xingluo/platform/ad/pojos/a;

    :cond_0
    sget-object v0, Lcom/xingluo/platform/ad/pojos/a;->b:Lcom/xingluo/platform/ad/pojos/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/xingluo/platform/ad/pojos/a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/xingluo/platform/ad/pojos/a;->i:Z

    return v0
.end method

.method static synthetic b(Lcom/xingluo/platform/ad/pojos/a;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/ad/pojos/a;->e:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic c(Lcom/xingluo/platform/ad/pojos/a;)Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/ad/pojos/a;->f:Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;

    return-object v0
.end method

.method static synthetic d(Lcom/xingluo/platform/ad/pojos/a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/ad/pojos/a;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/xingluo/platform/ad/pojos/a;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/ad/pojos/a;->j:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/app/Activity;Lcom/xingluo/platform/ad/pojos/XLAdsBannerGameData;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/xingluo/platform/ad/pojos/a;->e:Landroid/app/Activity;

    const-string v1, "isShow"

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "isView"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xingluo/platform/ad/pojos/a;->i:Z

    iget-boolean v0, p0, Lcom/xingluo/platform/ad/pojos/a;->i:Z

    if-nez v0, :cond_0

    const-string v0, "init"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2, v2}, Lcom/xingluo/platform/ad/pojos/XLAdsBannerGameData;->c(I)V

    invoke-static {}, Lcom/xingluo/platform/ad/suspend/l;->a()Lcom/xingluo/platform/ad/suspend/l;

    move-result-object v0

    iget-boolean v1, p0, Lcom/xingluo/platform/ad/pojos/a;->h:Z

    invoke-virtual {v0, p1, p2, v1}, Lcom/xingluo/platform/ad/suspend/l;->a(Landroid/app/Activity;Lcom/xingluo/platform/ad/pojos/XLAdsBannerGameData;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "pause"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/xingluo/platform/ad/pojos/XLAdsBannerGameData;->c(I)V

    invoke-static {}, Lcom/xingluo/platform/ad/suspend/l;->a()Lcom/xingluo/platform/ad/suspend/l;

    move-result-object v0

    iget-boolean v1, p0, Lcom/xingluo/platform/ad/pojos/a;->h:Z

    invoke-virtual {v0, p1, p2, v1}, Lcom/xingluo/platform/ad/suspend/l;->a(Landroid/app/Activity;Lcom/xingluo/platform/ad/pojos/XLAdsBannerGameData;Z)V

    goto :goto_0
.end method

.method public a(Landroid/app/Activity;Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;Ljava/lang/String;)V
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p2}, Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;->i()Lcom/xingluo/platform/ad/pojos/XLAdsGameData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/platform/ad/pojos/XLAdsGameData;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v0, 0x0

    move v2, v0

    move-object v0, v1

    :goto_0
    if-lt v2, v3, :cond_1

    if-eqz v1, :cond_4

    invoke-virtual {p0, p1, v1, p3}, Lcom/xingluo/platform/ad/pojos/a;->a(Landroid/app/Activity;Lcom/xingluo/platform/ad/pojos/XLAdsBannerGameData;Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-virtual {p2}, Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;->i()Lcom/xingluo/platform/ad/pojos/XLAdsGameData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/platform/ad/pojos/XLAdsGameData;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/ad/pojos/XLAdsBannerGameData;

    if-eqz v0, :cond_2

    if-nez v2, :cond_3

    invoke-virtual {p2}, Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;->i()Lcom/xingluo/platform/ad/pojos/XLAdsGameData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/platform/ad/pojos/XLAdsGameData;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/ad/pojos/XLAdsBannerGameData;

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    invoke-virtual {p2}, Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;->i()Lcom/xingluo/platform/ad/pojos/XLAdsGameData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xingluo/platform/ad/pojos/XLAdsGameData;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xingluo/platform/ad/pojos/XLAdsBannerGameData;

    goto :goto_2

    :cond_4
    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, v0, p3}, Lcom/xingluo/platform/ad/pojos/a;->a(Landroid/app/Activity;Lcom/xingluo/platform/ad/pojos/XLAdsBannerGameData;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public a(Landroid/app/Activity;Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;Ljava/lang/String;Z)V
    .locals 2

    iput-object p1, p0, Lcom/xingluo/platform/ad/pojos/a;->e:Landroid/app/Activity;

    iput-object p2, p0, Lcom/xingluo/platform/ad/pojos/a;->f:Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;

    iput-object p3, p0, Lcom/xingluo/platform/ad/pojos/a;->g:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/xingluo/platform/ad/pojos/a;->h:Z

    invoke-virtual {p2}, Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;->i()Lcom/xingluo/platform/ad/pojos/XLAdsGameData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/platform/ad/pojos/XLAdsGameData;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "init"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/xingluo/platform/ad/pojos/a;->b()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/xingluo/platform/ad/pojos/a;->f:Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;

    iget-object v1, p0, Lcom/xingluo/platform/ad/pojos/a;->g:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/xingluo/platform/ad/pojos/a;->a(Landroid/app/Activity;Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b()V
    .locals 4

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/xingluo/platform/ad/pojos/a;->c:Ljava/util/Timer;

    iput-object v1, p0, Lcom/xingluo/platform/ad/pojos/a;->d:Lcom/xingluo/platform/ad/pojos/a$a;

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/xingluo/platform/ad/pojos/a;->c:Ljava/util/Timer;

    new-instance v0, Lcom/xingluo/platform/ad/pojos/a$a;

    invoke-direct {v0, p0, v1}, Lcom/xingluo/platform/ad/pojos/a$a;-><init>(Lcom/xingluo/platform/ad/pojos/a;Lcom/xingluo/platform/ad/pojos/a$a;)V

    iput-object v0, p0, Lcom/xingluo/platform/ad/pojos/a;->d:Lcom/xingluo/platform/ad/pojos/a$a;

    iget-object v0, p0, Lcom/xingluo/platform/ad/pojos/a;->c:Ljava/util/Timer;

    iget-object v1, p0, Lcom/xingluo/platform/ad/pojos/a;->d:Lcom/xingluo/platform/ad/pojos/a$a;

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method
