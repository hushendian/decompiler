.class Lcom/xingluo/platform/ad/suspend/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lcom/xingluo/platform/ad/suspend/XLBannerWindow;


# direct methods
.method constructor <init>(Lcom/xingluo/platform/ad/suspend/XLBannerWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/ad/suspend/g;->a:Lcom/xingluo/platform/ad/suspend/XLBannerWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/g;->a:Lcom/xingluo/platform/ad/suspend/XLBannerWindow;

    # getter for: Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->sharedPreferences:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->access$0(Lcom/xingluo/platform/ad/suspend/XLBannerWindow;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "isView"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/g;->a:Lcom/xingluo/platform/ad/suspend/XLBannerWindow;

    invoke-virtual {v0}, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->removeBannerView()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 3

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/g;->a:Lcom/xingluo/platform/ad/suspend/XLBannerWindow;

    # getter for: Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->sharedPreferences:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->access$0(Lcom/xingluo/platform/ad/suspend/XLBannerWindow;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "isBanShowFinish"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 3

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/g;->a:Lcom/xingluo/platform/ad/suspend/XLBannerWindow;

    # getter for: Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->sharedPreferences:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->access$0(Lcom/xingluo/platform/ad/suspend/XLBannerWindow;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "isBanShowFinish"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
