.class Lcom/xingluo/platform/ad/suspend/XLBannerService$a;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xingluo/platform/ad/suspend/XLBannerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/xingluo/platform/ad/suspend/XLBannerService;


# direct methods
.method private constructor <init>(Lcom/xingluo/platform/ad/suspend/XLBannerService;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/ad/suspend/XLBannerService$a;->a:Lcom/xingluo/platform/ad/suspend/XLBannerService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xingluo/platform/ad/suspend/XLBannerService;Lcom/xingluo/platform/ad/suspend/XLBannerService$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xingluo/platform/ad/suspend/XLBannerService$a;-><init>(Lcom/xingluo/platform/ad/suspend/XLBannerService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerService$a;->a:Lcom/xingluo/platform/ad/suspend/XLBannerService;

    const-string v1, "isShow"

    invoke-virtual {v0, v1, v4}, Lcom/xingluo/platform/ad/suspend/XLBannerService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/XLBannerService$a;->a:Lcom/xingluo/platform/ad/suspend/XLBannerService;

    const-string v2, "isBannerViewShow"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/xingluo/platform/ad/suspend/XLBannerService;->access$0(Lcom/xingluo/platform/ad/suspend/XLBannerService;Z)V

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/XLBannerService$a;->a:Lcom/xingluo/platform/ad/suspend/XLBannerService;

    # invokes: Lcom/xingluo/platform/ad/suspend/XLBannerService;->isHomeShow()Z
    invoke-static {v1}, Lcom/xingluo/platform/ad/suspend/XLBannerService;->access$1(Lcom/xingluo/platform/ad/suspend/XLBannerService;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/XLBannerService$a;->a:Lcom/xingluo/platform/ad/suspend/XLBannerService;

    iget-object v2, p0, Lcom/xingluo/platform/ad/suspend/XLBannerService$a;->a:Lcom/xingluo/platform/ad/suspend/XLBannerService;

    # invokes: Lcom/xingluo/platform/ad/suspend/XLBannerService;->isAppOnForeground(Landroid/content/Context;)Z
    invoke-static {v1, v2}, Lcom/xingluo/platform/ad/suspend/XLBannerService;->access$2(Lcom/xingluo/platform/ad/suspend/XLBannerService;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/XLBannerService$a;->a:Lcom/xingluo/platform/ad/suspend/XLBannerService;

    # getter for: Lcom/xingluo/platform/ad/suspend/XLBannerService;->isHiden:Z
    invoke-static {v1}, Lcom/xingluo/platform/ad/suspend/XLBannerService;->access$3(Lcom/xingluo/platform/ad/suspend/XLBannerService;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/XLBannerService$a;->a:Lcom/xingluo/platform/ad/suspend/XLBannerService;

    invoke-static {v1}, Lcom/xingluo/platform/ad/suspend/d;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerService$a;->a:Lcom/xingluo/platform/ad/suspend/XLBannerService;

    # getter for: Lcom/xingluo/platform/ad/suspend/XLBannerService;->xlBannerWindow:Lcom/xingluo/platform/ad/suspend/XLBannerWindow;
    invoke-static {v0}, Lcom/xingluo/platform/ad/suspend/XLBannerService;->access$4(Lcom/xingluo/platform/ad/suspend/XLBannerService;)Lcom/xingluo/platform/ad/suspend/XLBannerWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->removeBannerView()V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/XLBannerService$a;->a:Lcom/xingluo/platform/ad/suspend/XLBannerService;

    # getter for: Lcom/xingluo/platform/ad/suspend/XLBannerService;->isClose:Z
    invoke-static {v1}, Lcom/xingluo/platform/ad/suspend/XLBannerService;->access$5(Lcom/xingluo/platform/ad/suspend/XLBannerService;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerService$a;->a:Lcom/xingluo/platform/ad/suspend/XLBannerService;

    # getter for: Lcom/xingluo/platform/ad/suspend/XLBannerService;->xlBannerWindow:Lcom/xingluo/platform/ad/suspend/XLBannerWindow;
    invoke-static {v0}, Lcom/xingluo/platform/ad/suspend/XLBannerService;->access$4(Lcom/xingluo/platform/ad/suspend/XLBannerService;)Lcom/xingluo/platform/ad/suspend/XLBannerWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->removeBannerView()V

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "isBannerViewShow"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerService$a;->a:Lcom/xingluo/platform/ad/suspend/XLBannerService;

    # getter for: Lcom/xingluo/platform/ad/suspend/XLBannerService;->xlBannerWindow:Lcom/xingluo/platform/ad/suspend/XLBannerWindow;
    invoke-static {v0}, Lcom/xingluo/platform/ad/suspend/XLBannerService;->access$4(Lcom/xingluo/platform/ad/suspend/XLBannerService;)Lcom/xingluo/platform/ad/suspend/XLBannerWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->removeBannerView()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerService$a;->a:Lcom/xingluo/platform/ad/suspend/XLBannerService;

    # getter for: Lcom/xingluo/platform/ad/suspend/XLBannerService;->xlBannerWindow:Lcom/xingluo/platform/ad/suspend/XLBannerWindow;
    invoke-static {v0}, Lcom/xingluo/platform/ad/suspend/XLBannerService;->access$4(Lcom/xingluo/platform/ad/suspend/XLBannerService;)Lcom/xingluo/platform/ad/suspend/XLBannerWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->addBannerView()V

    goto :goto_0

    :cond_3
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "isBannerViewShow"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerService$a;->a:Lcom/xingluo/platform/ad/suspend/XLBannerService;

    # getter for: Lcom/xingluo/platform/ad/suspend/XLBannerService;->xlBannerWindow:Lcom/xingluo/platform/ad/suspend/XLBannerWindow;
    invoke-static {v0}, Lcom/xingluo/platform/ad/suspend/XLBannerService;->access$4(Lcom/xingluo/platform/ad/suspend/XLBannerService;)Lcom/xingluo/platform/ad/suspend/XLBannerWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->removeBannerView()V

    goto :goto_0
.end method
