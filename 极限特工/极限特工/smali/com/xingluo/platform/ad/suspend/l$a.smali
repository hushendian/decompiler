.class Lcom/xingluo/platform/ad/suspend/l$a;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xingluo/platform/ad/suspend/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/xingluo/platform/ad/suspend/l;


# direct methods
.method private constructor <init>(Lcom/xingluo/platform/ad/suspend/l;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/ad/suspend/l$a;->a:Lcom/xingluo/platform/ad/suspend/l;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xingluo/platform/ad/suspend/l;Lcom/xingluo/platform/ad/suspend/l$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xingluo/platform/ad/suspend/l$a;-><init>(Lcom/xingluo/platform/ad/suspend/l;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v7, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/l$a;->a:Lcom/xingluo/platform/ad/suspend/l;

    invoke-static {v1}, Lcom/xingluo/platform/ad/suspend/l;->c(Lcom/xingluo/platform/ad/suspend/l;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/l$a;->a:Lcom/xingluo/platform/ad/suspend/l;

    invoke-static {v1}, Lcom/xingluo/platform/ad/suspend/l;->c(Lcom/xingluo/platform/ad/suspend/l;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/l$a;->a:Lcom/xingluo/platform/ad/suspend/l;

    invoke-static {v1}, Lcom/xingluo/platform/ad/suspend/l;->c(Lcom/xingluo/platform/ad/suspend/l;)Landroid/app/Activity;

    move-result-object v1

    const-string v2, "isShow"

    invoke-virtual {v1, v2, v7}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "isBannerViewShow"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string v3, "isView"

    invoke-interface {v1, v3, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const-string v4, "isPayViewShow"

    invoke-interface {v1, v4, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iget-object v5, p0, Lcom/xingluo/platform/ad/suspend/l$a;->a:Lcom/xingluo/platform/ad/suspend/l;

    iget-object v6, p0, Lcom/xingluo/platform/ad/suspend/l$a;->a:Lcom/xingluo/platform/ad/suspend/l;

    invoke-static {v6}, Lcom/xingluo/platform/ad/suspend/l;->c(Lcom/xingluo/platform/ad/suspend/l;)Landroid/app/Activity;

    move-result-object v6

    invoke-static {v5, v6, v0}, Lcom/xingluo/platform/ad/suspend/l;->a(Lcom/xingluo/platform/ad/suspend/l;Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v2, :cond_0

    if-nez v0, :cond_3

    :cond_0
    if-eqz v4, :cond_2

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "isBannerViewShow"

    invoke-interface {v0, v2, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "isPayViewShow"

    invoke-interface {v0, v1, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/l$a;->a:Lcom/xingluo/platform/ad/suspend/l;

    invoke-static {v0}, Lcom/xingluo/platform/ad/suspend/l;->d(Lcom/xingluo/platform/ad/suspend/l;)Lcom/xingluo/platform/ad/suspend/XLBannerWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->removeBannerView()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "isBannerViewShow"

    invoke-interface {v0, v1, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_1

    if-nez v3, :cond_1

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/l$a;->a:Lcom/xingluo/platform/ad/suspend/l;

    invoke-static {v0}, Lcom/xingluo/platform/ad/suspend/l;->d(Lcom/xingluo/platform/ad/suspend/l;)Lcom/xingluo/platform/ad/suspend/XLBannerWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->addBannerView()V

    goto :goto_0
.end method
