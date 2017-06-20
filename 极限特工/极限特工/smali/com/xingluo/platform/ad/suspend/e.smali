.class Lcom/xingluo/platform/ad/suspend/e;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/xingluo/platform/ad/suspend/XLBannerWindow;


# direct methods
.method constructor <init>(Lcom/xingluo/platform/ad/suspend/XLBannerWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/ad/suspend/e;->a:Lcom/xingluo/platform/ad/suspend/XLBannerWindow;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    const/4 v5, 0x0

    const/16 v2, 0x8

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/e;->a:Lcom/xingluo/platform/ad/suspend/XLBannerWindow;

    # getter for: Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->sharedPreferences:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->access$0(Lcom/xingluo/platform/ad/suspend/XLBannerWindow;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "isBanShowFinish"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/e;->a:Lcom/xingluo/platform/ad/suspend/XLBannerWindow;

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/e;->a:Lcom/xingluo/platform/ad/suspend/XLBannerWindow;

    # getter for: Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->sharedPreferences:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->access$0(Lcom/xingluo/platform/ad/suspend/XLBannerWindow;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "isBannerViewShow"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->access$1(Lcom/xingluo/platform/ad/suspend/XLBannerWindow;Z)V

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/e;->a:Lcom/xingluo/platform/ad/suspend/XLBannerWindow;

    # getter for: Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->bannerView:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->access$2(Lcom/xingluo/platform/ad/suspend/XLBannerWindow;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/e;->a:Lcom/xingluo/platform/ad/suspend/XLBannerWindow;

    # getter for: Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->isHiden:Z
    invoke-static {v0}, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->access$3(Lcom/xingluo/platform/ad/suspend/XLBannerWindow;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/e;->a:Lcom/xingluo/platform/ad/suspend/XLBannerWindow;

    # getter for: Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->bannerView:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->access$2(Lcom/xingluo/platform/ad/suspend/XLBannerWindow;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/e;->a:Lcom/xingluo/platform/ad/suspend/XLBannerWindow;

    # getter for: Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->iv_banner_fix_close:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->access$4(Lcom/xingluo/platform/ad/suspend/XLBannerWindow;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/e;->a:Lcom/xingluo/platform/ad/suspend/XLBannerWindow;

    # getter for: Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->access$5(Lcom/xingluo/platform/ad/suspend/XLBannerWindow;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "xl_banner_close_icon_normal"

    invoke-static {v1, v2}, Lcom/xingluo/platform/single/util/r;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/e;->a:Lcom/xingluo/platform/ad/suspend/XLBannerWindow;

    # getter for: Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->bannerView:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->access$2(Lcom/xingluo/platform/ad/suspend/XLBannerWindow;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/e;->a:Lcom/xingluo/platform/ad/suspend/XLBannerWindow;

    # getter for: Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->bannerView:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->access$2(Lcom/xingluo/platform/ad/suspend/XLBannerWindow;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/e;->a:Lcom/xingluo/platform/ad/suspend/XLBannerWindow;

    # invokes: Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->setSharedPreferences()V
    invoke-static {v0}, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->access$6(Lcom/xingluo/platform/ad/suspend/XLBannerWindow;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/e;->a:Lcom/xingluo/platform/ad/suspend/XLBannerWindow;

    # getter for: Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->slideBannerView:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->access$7(Lcom/xingluo/platform/ad/suspend/XLBannerWindow;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/e;->a:Lcom/xingluo/platform/ad/suspend/XLBannerWindow;

    # getter for: Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->rl_banner_slide:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->access$8(Lcom/xingluo/platform/ad/suspend/XLBannerWindow;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/e;->a:Lcom/xingluo/platform/ad/suspend/XLBannerWindow;

    # getter for: Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->slideBannerView:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->access$7(Lcom/xingluo/platform/ad/suspend/XLBannerWindow;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/e;->a:Lcom/xingluo/platform/ad/suspend/XLBannerWindow;

    # getter for: Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->rl_banner_slide:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->access$8(Lcom/xingluo/platform/ad/suspend/XLBannerWindow;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/e;->a:Lcom/xingluo/platform/ad/suspend/XLBannerWindow;

    invoke-virtual {v0}, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->startRunSlideAnimationHiden()V

    :cond_1
    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/e;->a:Lcom/xingluo/platform/ad/suspend/XLBannerWindow;

    invoke-static {v0, v5}, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->access$9(Lcom/xingluo/platform/ad/suspend/XLBannerWindow;Landroid/widget/RelativeLayout;)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/e;->a:Lcom/xingluo/platform/ad/suspend/XLBannerWindow;

    # getter for: Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->slideBannerView:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->access$7(Lcom/xingluo/platform/ad/suspend/XLBannerWindow;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/e;->a:Lcom/xingluo/platform/ad/suspend/XLBannerWindow;

    # getter for: Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->slideBannerView:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->access$7(Lcom/xingluo/platform/ad/suspend/XLBannerWindow;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/e;->a:Lcom/xingluo/platform/ad/suspend/XLBannerWindow;

    # invokes: Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->setSharedPreferences()V
    invoke-static {v0}, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->access$6(Lcom/xingluo/platform/ad/suspend/XLBannerWindow;)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/e;->a:Lcom/xingluo/platform/ad/suspend/XLBannerWindow;

    # getter for: Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->rl_banner_slide:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->access$8(Lcom/xingluo/platform/ad/suspend/XLBannerWindow;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/e;->a:Lcom/xingluo/platform/ad/suspend/XLBannerWindow;

    # getter for: Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->rl_banner_slide:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->access$8(Lcom/xingluo/platform/ad/suspend/XLBannerWindow;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/e;->a:Lcom/xingluo/platform/ad/suspend/XLBannerWindow;

    # getter for: Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->slide_up_out:Landroid/view/animation/TranslateAnimation;
    invoke-static {v1}, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->access$10(Lcom/xingluo/platform/ad/suspend/XLBannerWindow;)Landroid/view/animation/TranslateAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/e;->a:Lcom/xingluo/platform/ad/suspend/XLBannerWindow;

    invoke-static {v0, v5}, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->access$11(Lcom/xingluo/platform/ad/suspend/XLBannerWindow;Landroid/widget/RelativeLayout;)V

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/e;->a:Lcom/xingluo/platform/ad/suspend/XLBannerWindow;

    # getter for: Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->showBannerStyle:I
    invoke-static {v0}, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->access$12(Lcom/xingluo/platform/ad/suspend/XLBannerWindow;)I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/e;->a:Lcom/xingluo/platform/ad/suspend/XLBannerWindow;

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/e;->a:Lcom/xingluo/platform/ad/suspend/XLBannerWindow;

    # getter for: Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->mData:Lcom/xingluo/platform/ad/pojos/XLAdsBannerGameData;
    invoke-static {v1}, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->access$13(Lcom/xingluo/platform/ad/suspend/XLBannerWindow;)Lcom/xingluo/platform/ad/pojos/XLAdsBannerGameData;

    move-result-object v1

    # invokes: Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->showBannerView(Lcom/xingluo/platform/ad/pojos/XLAdsBannerGameData;)V
    invoke-static {v0, v1}, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->access$14(Lcom/xingluo/platform/ad/suspend/XLBannerWindow;Lcom/xingluo/platform/ad/pojos/XLAdsBannerGameData;)V

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/e;->a:Lcom/xingluo/platform/ad/suspend/XLBannerWindow;

    # getter for: Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->showBannerStyle:I
    invoke-static {v0}, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->access$12(Lcom/xingluo/platform/ad/suspend/XLBannerWindow;)I

    move-result v0

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/e;->a:Lcom/xingluo/platform/ad/suspend/XLBannerWindow;

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/e;->a:Lcom/xingluo/platform/ad/suspend/XLBannerWindow;

    # getter for: Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->mData:Lcom/xingluo/platform/ad/pojos/XLAdsBannerGameData;
    invoke-static {v1}, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->access$13(Lcom/xingluo/platform/ad/suspend/XLBannerWindow;)Lcom/xingluo/platform/ad/pojos/XLAdsBannerGameData;

    move-result-object v1

    # invokes: Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->showSlideBannerView(Lcom/xingluo/platform/ad/pojos/XLAdsBannerGameData;)V
    invoke-static {v0, v1}, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->access$15(Lcom/xingluo/platform/ad/suspend/XLBannerWindow;Lcom/xingluo/platform/ad/pojos/XLAdsBannerGameData;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
