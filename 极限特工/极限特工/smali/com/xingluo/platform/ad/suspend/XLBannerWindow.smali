.class public Lcom/xingluo/platform/ad/suspend/XLBannerWindow;
.super Lcom/xingluo/platform/ad/suspend/h;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xingluo/platform/ad/suspend/XLBannerWindow$a;
    }
.end annotation


# static fields
.field private static final SUSPENSION_VIEW_BANNER_ADD:I = 0x1

.field private static final SUSPENSION_VIEW_BANNER_REMOVE:I = 0x2

.field private static final SUSPENSION_VIEW_SLIDE_BANNER_ADD:I = 0x3

.field private static final SUSPENSION_VIEW_SLIDE_BANNER_HIDEN:I = 0x5

.field private static final SUSPENSION_VIEW_SLIDE_BANNER_REMOVE:I = 0x4

.field private static final SUSPENSION_VIEW_X_SECOND_SHOW:I = 0x6

.field private static mWindow_instance:Lcom/xingluo/platform/ad/suspend/XLBannerWindow;


# instance fields
.field private activityManager:Landroid/app/ActivityManager;

.field private bannerTimer:Ljava/util/Timer;

.field private bannerTimerTask:Lcom/xingluo/platform/ad/suspend/XLBannerWindow$a;

.field private bannerView:Landroid/widget/RelativeLayout;

.field private handlerSuspenstionBannerView:Landroid/os/Handler;

.field private isAdsWindowShow:Z

.field private isBanShowFinish:Z

.field private isHiden:Z

.field private isMLandFlag:Z

.field private isView:Z

.field private iv_banner_fix:Landroid/widget/ImageView;

.field private iv_banner_fix_close:Landroid/widget/ImageView;

.field private iv_banner_slide:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private mData:Lcom/xingluo/platform/ad/pojos/XLAdsBannerGameData;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private rl_banner_fix_download:Landroid/widget/RelativeLayout;

.field private rl_banner_slide:Landroid/widget/RelativeLayout;

.field private sharedPreferences:Landroid/content/SharedPreferences;

.field private showBannerStyle:I

.field private showTime:I

.field private slideBannerView:Landroid/widget/RelativeLayout;

.field private slide_up_in:Landroid/view/animation/TranslateAnimation;

.field private slide_up_out:Landroid/view/animation/TranslateAnimation;

.field private windowManager:Landroid/view/WindowManager;

.field private windowManager_params:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1}, Lcom/xingluo/platform/ad/suspend/h;-><init>(Landroid/content/Context;)V

    iput-boolean v3, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->isMLandFlag:Z

    new-instance v0, Lcom/xingluo/platform/ad/suspend/e;

    invoke-direct {v0, p0}, Lcom/xingluo/platform/ad/suspend/e;-><init>(Lcom/xingluo/platform/ad/suspend/XLBannerWindow;)V

    iput-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->handlerSuspenstionBannerView:Landroid/os/Handler;

    iput-object p1, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->mContext:Landroid/content/Context;

    const-string v1, "isShow"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->sharedPreferences:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "isView"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->isView:Z

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "isBanShowFinish"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "isBannerViewShow"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "isBanShowFinish"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->isBanShowFinish:Z

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "isBannerViewShow"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->isHiden:Z

    return-void
.end method

.method static synthetic access$0(Lcom/xingluo/platform/ad/suspend/XLBannerWindow;)Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->sharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$1(Lcom/xingluo/platform/ad/suspend/XLBannerWindow;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->isHiden:Z

    return-void
.end method

.method static synthetic access$10(Lcom/xingluo/platform/ad/suspend/XLBannerWindow;)Landroid/view/animation/TranslateAnimation;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->slide_up_out:Landroid/view/animation/TranslateAnimation;

    return-object v0
.end method

.method static synthetic access$11(Lcom/xingluo/platform/ad/suspend/XLBannerWindow;Landroid/widget/RelativeLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->rl_banner_slide:Landroid/widget/RelativeLayout;

    return-void
.end method

.method static synthetic access$12(Lcom/xingluo/platform/ad/suspend/XLBannerWindow;)I
    .locals 1

    iget v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->showBannerStyle:I

    return v0
.end method

.method static synthetic access$13(Lcom/xingluo/platform/ad/suspend/XLBannerWindow;)Lcom/xingluo/platform/ad/pojos/XLAdsBannerGameData;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->mData:Lcom/xingluo/platform/ad/pojos/XLAdsBannerGameData;

    return-object v0
.end method

.method static synthetic access$14(Lcom/xingluo/platform/ad/suspend/XLBannerWindow;Lcom/xingluo/platform/ad/pojos/XLAdsBannerGameData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->showBannerView(Lcom/xingluo/platform/ad/pojos/XLAdsBannerGameData;)V

    return-void
.end method

.method static synthetic access$15(Lcom/xingluo/platform/ad/suspend/XLBannerWindow;Lcom/xingluo/platform/ad/pojos/XLAdsBannerGameData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->showSlideBannerView(Lcom/xingluo/platform/ad/pojos/XLAdsBannerGameData;)V

    return-void
.end method

.method static synthetic access$16(Lcom/xingluo/platform/ad/suspend/XLBannerWindow;)I
    .locals 1

    iget v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->showTime:I

    return v0
.end method

.method static synthetic access$17(Lcom/xingluo/platform/ad/suspend/XLBannerWindow;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->handlerSuspenstionBannerView:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$18(Lcom/xingluo/platform/ad/suspend/XLBannerWindow;I)V
    .locals 0

    iput p1, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->showTime:I

    return-void
.end method

.method static synthetic access$2(Lcom/xingluo/platform/ad/suspend/XLBannerWindow;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->bannerView:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$3(Lcom/xingluo/platform/ad/suspend/XLBannerWindow;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->isHiden:Z

    return v0
.end method

.method static synthetic access$4(Lcom/xingluo/platform/ad/suspend/XLBannerWindow;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->iv_banner_fix_close:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$5(Lcom/xingluo/platform/ad/suspend/XLBannerWindow;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6(Lcom/xingluo/platform/ad/suspend/XLBannerWindow;)V
    .locals 0

    invoke-direct {p0}, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->setSharedPreferences()V

    return-void
.end method

.method static synthetic access$7(Lcom/xingluo/platform/ad/suspend/XLBannerWindow;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->slideBannerView:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$8(Lcom/xingluo/platform/ad/suspend/XLBannerWindow;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->rl_banner_slide:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$9(Lcom/xingluo/platform/ad/suspend/XLBannerWindow;Landroid/widget/RelativeLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->slideBannerView:Landroid/widget/RelativeLayout;

    return-void
.end method

.method private downloadGame(Landroid/view/View;Z)V
    .locals 9

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;

    invoke-static {}, Lcom/xingluo/platform/ad/f/a;->a()Lcom/xingluo/platform/ad/f/a;

    move-result-object v0

    sget v7, Lcom/xingluo/platform/single/util/a;->iy:I

    if-nez p2, :cond_0

    sget v7, Lcom/xingluo/platform/single/util/a;->iz:I

    :cond_0
    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->g()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->h()I

    move-result v6

    invoke-virtual/range {v0 .. v7}, Lcom/xingluo/platform/ad/f/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v8, v2}, Lcom/xingluo/platform/ad/f/a;->a(Lcom/xingluo/platform/ad/suspend/s;Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;Z)V

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/ad/f/a;->a(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->handlerImageViewPostDelayed()V

    :cond_1
    return-void
.end method

.method private getHomeList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.category.HOME"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x10000

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static getXLSuspensionBannerWindowInstance(Landroid/content/Context;)Lcom/xingluo/platform/ad/suspend/XLBannerWindow;
    .locals 1

    sget-object v0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->mWindow_instance:Lcom/xingluo/platform/ad/suspend/XLBannerWindow;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;

    invoke-direct {v0, p0}, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->mWindow_instance:Lcom/xingluo/platform/ad/suspend/XLBannerWindow;

    :cond_0
    sget-object v0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->mWindow_instance:Lcom/xingluo/platform/ad/suspend/XLBannerWindow;

    return-object v0
.end method

.method private handlerImageViewPostDelayed()V
    .locals 4

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->handlerImageView:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->runnable:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->delayMillis:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private initAnimation()V
    .locals 9

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/high16 v6, -0x40800000    # -1.0f

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->slide_up_in:Landroid/view/animation/TranslateAnimation;

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->slide_up_in:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->slide_up_in:Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/high16 v8, -0x40800000    # -1.0f

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->slide_up_out:Landroid/view/animation/TranslateAnimation;

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->slide_up_out:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->slide_up_out:Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->slide_up_in:Landroid/view/animation/TranslateAnimation;

    new-instance v1, Lcom/xingluo/platform/ad/suspend/f;

    invoke-direct {v1, p0}, Lcom/xingluo/platform/ad/suspend/f;-><init>(Lcom/xingluo/platform/ad/suspend/XLBannerWindow;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->slide_up_out:Landroid/view/animation/TranslateAnimation;

    new-instance v1, Lcom/xingluo/platform/ad/suspend/g;

    invoke-direct {v1, p0}, Lcom/xingluo/platform/ad/suspend/g;-><init>(Lcom/xingluo/platform/ad/suspend/XLBannerWindow;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method private isAppOnForeground(Landroid/content/Context;)Z
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->activityManager:Landroid/app/ActivityManager;

    if-nez v0, :cond_0

    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->activityManager:Landroid/app/ActivityManager;

    :cond_0
    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->activityManager:Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    return v0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v3, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v3, 0x64

    if-ne v0, v3, :cond_2

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isHomeShow()Z
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->activityManager:Landroid/app/ActivityManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->activityManager:Landroid/app/ActivityManager;

    :cond_0
    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->activityManager:Landroid/app/ActivityManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0}, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->getHomeList()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    goto :goto_0
.end method

.method private setCommonGameData(Lcom/xingluo/platform/ad/pojos/XLAdsBannerGameData;)Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;
    .locals 2

    new-instance v0, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;

    invoke-direct {v0}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;-><init>()V

    invoke-virtual {p1}, Lcom/xingluo/platform/ad/pojos/XLAdsBannerGameData;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xingluo/platform/ad/pojos/XLAdsBannerGameData;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->b(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xingluo/platform/ad/pojos/XLAdsBannerGameData;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->e(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xingluo/platform/ad/pojos/XLAdsBannerGameData;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->d(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xingluo/platform/ad/pojos/XLAdsBannerGameData;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->f(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xingluo/platform/ad/pojos/XLAdsBannerGameData;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->c(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xingluo/platform/ad/pojos/XLAdsBannerGameData;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->i(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xingluo/platform/ad/pojos/XLAdsBannerGameData;->j()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->b(I)V

    invoke-virtual {p1}, Lcom/xingluo/platform/ad/pojos/XLAdsBannerGameData;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->j(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xingluo/platform/ad/pojos/XLAdsBannerGameData;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->d(I)V

    invoke-virtual {p1}, Lcom/xingluo/platform/ad/pojos/XLAdsBannerGameData;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->g(Ljava/lang/String;)V

    return-object v0
.end method

.method private setSharedPreferences()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "isPayViewShow"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "isBannerViewShow"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "isBanShowFinish"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "isView"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private showBannerView(Lcom/xingluo/platform/ad/pojos/XLAdsBannerGameData;)V
    .locals 4

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->isHomeShow()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->isAppOnForeground(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ads_show"

    invoke-virtual {p1}, Lcom/xingluo/platform/ad/pojos/XLAdsBannerGameData;->g()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lcom/xingluo/platform/gameplus/e/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "isBanShowFinish"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->mContext:Landroid/content/Context;

    const-string v2, "xl_banner_fix_view"

    invoke-static {v1, v2}, Lcom/xingluo/platform/single/util/r;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->bannerView:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->bannerView:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->mContext:Landroid/content/Context;

    const-string v2, "rl_banner_fix_download"

    invoke-static {v1, v2}, Lcom/xingluo/platform/single/util/r;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->rl_banner_fix_download:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->rl_banner_fix_download:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->rl_banner_fix_download:Landroid/widget/RelativeLayout;

    invoke-direct {p0, p1}, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->setCommonGameData(Lcom/xingluo/platform/ad/pojos/XLAdsBannerGameData;)Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->bannerView:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->mContext:Landroid/content/Context;

    const-string v2, "iv_banner_fix_close"

    invoke-static {v1, v2}, Lcom/xingluo/platform/single/util/r;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->iv_banner_fix_close:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->iv_banner_fix_close:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->bannerView:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->mContext:Landroid/content/Context;

    const-string v2, "iv_banner_fix"

    invoke-static {v1, v2}, Lcom/xingluo/platform/single/util/r;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->iv_banner_fix:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->bannerView:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->windowManager_params:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/xingluo/platform/single/net/ConnectManagerHelper;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->networkSetSaveDataAndIcon(Lcom/xingluo/platform/ad/pojos/XLAdsBannerGameData;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->noNetworkSetObtainDataAndIcon()V

    goto :goto_0
.end method

.method private showSlideBannerView(Lcom/xingluo/platform/ad/pojos/XLAdsBannerGameData;)V
    .locals 4

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->isHomeShow()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->isAppOnForeground(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ads_show"

    invoke-virtual {p1}, Lcom/xingluo/platform/ad/pojos/XLAdsBannerGameData;->g()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/xingluo/platform/gameplus/e/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->initAnimation()V

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "isBanShowFinish"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->mContext:Landroid/content/Context;

    const-string v2, "xl_banner_slide_view"

    invoke-static {v1, v2}, Lcom/xingluo/platform/single/util/r;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->slideBannerView:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->slideBannerView:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->mContext:Landroid/content/Context;

    const-string v2, "iv_banner_slide"

    invoke-static {v1, v2}, Lcom/xingluo/platform/single/util/r;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->iv_banner_slide:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->iv_banner_slide:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->iv_banner_slide:Landroid/widget/ImageView;

    invoke-direct {p0, p1}, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->setCommonGameData(Lcom/xingluo/platform/ad/pojos/XLAdsBannerGameData;)Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->slideBannerView:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->mContext:Landroid/content/Context;

    const-string v2, "rl_banner_slide"

    invoke-static {v1, v2}, Lcom/xingluo/platform/single/util/r;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->rl_banner_slide:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->rl_banner_slide:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->slide_up_in:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->slideBannerView:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->windowManager_params:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/xingluo/platform/single/net/ConnectManagerHelper;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->networkSetSaveDataAndIcon(Lcom/xingluo/platform/ad/pojos/XLAdsBannerGameData;)V

    :goto_0
    invoke-virtual {p0}, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->startRunSlideAnimationHiden()V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->noNetworkSetObtainDataAndIcon()V

    goto :goto_0
.end method


# virtual methods
.method public addBannerView()V
    .locals 2

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->bannerView:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->handlerSuspenstionBannerView:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->slideBannerView:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->rl_banner_slide:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->handlerSuspenstionBannerView:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public getFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public getIsSuspensionWindowShow()Z
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->bannerView:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->bannerView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iput-boolean v2, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->isAdsWindowShow:Z

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->isAdsWindowShow:Z

    return v0

    :cond_1
    iput-boolean v1, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->isAdsWindowShow:Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->slideBannerView:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->rl_banner_slide:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    :cond_3
    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->slideBannerView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    iput-boolean v2, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->isAdsWindowShow:Z

    goto :goto_0

    :cond_4
    iput-boolean v1, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->isAdsWindowShow:Z

    goto :goto_0
.end method

.method public handlerImageViewRemove()V
    .locals 2

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->handlerImageView:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public initBannerWindow(Lcom/xingluo/platform/ad/pojos/XLAdsBannerGameData;Z)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->activityManager:Landroid/app/ActivityManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->activityManager:Landroid/app/ActivityManager;

    :cond_0
    iput-object p1, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->mData:Lcom/xingluo/platform/ad/pojos/XLAdsBannerGameData;

    iput-boolean p2, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->isMLandFlag:Z

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "isBannerViewShow"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->isHiden:Z

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "isBanShowFinish"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->isBanShowFinish:Z

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->mData:Lcom/xingluo/platform/ad/pojos/XLAdsBannerGameData;

    invoke-virtual {p0, v0}, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->setWindowShowStyle(Lcom/xingluo/platform/ad/pojos/XLAdsBannerGameData;)V

    iget-boolean v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->isBanShowFinish:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->isView:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "isView"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->mData:Lcom/xingluo/platform/ad/pojos/XLAdsBannerGameData;

    invoke-virtual {p0, v0}, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->setDialogShowStyle(Lcom/xingluo/platform/ad/pojos/XLAdsBannerGameData;)V

    :cond_1
    return-void
.end method

.method public networkSetSaveDataAndIcon(Lcom/xingluo/platform/ad/pojos/XLAdsBannerGameData;)V
    .locals 2

    iget v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->showBannerStyle:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->iv_banner_fix:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {p1}, Lcom/xingluo/platform/ad/pojos/XLAdsBannerGameData;->d()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->iv_banner_fix:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1}, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->setInsertBitmap(Ljava/lang/String;Landroid/widget/ImageView;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->showBannerStyle:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->iv_banner_slide:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {p1}, Lcom/xingluo/platform/ad/pojos/XLAdsBannerGameData;->d()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->iv_banner_slide:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1}, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->setInsertBitmap(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_0
.end method

.method public noNetworkSetObtainDataAndIcon()V
    .locals 3

    iget v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->showBannerStyle:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->iv_banner_fix:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->iv_banner_fix:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->mContext:Landroid/content/Context;

    const-string v2, "banner_normal"

    invoke-static {v1, v2}, Lcom/xingluo/platform/single/util/r;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->showBannerStyle:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->iv_banner_slide:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->iv_banner_slide:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->mContext:Landroid/content/Context;

    const-string v2, "slide_normal"

    invoke-static {v1, v2}, Lcom/xingluo/platform/single/util/r;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-wide/16 v1, 0x1f4

    invoke-static {v1, v2}, Lcom/xingluo/platform/ad/f/b;->a(J)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->mContext:Landroid/content/Context;

    const-string v2, "rl_banner_fix_download"

    invoke-static {v1, v2}, Lcom/xingluo/platform/single/util/r;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;

    invoke-direct {p0}, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->setSharedPreferences()V

    const-string v1, "ads_pv"

    invoke-virtual {v0}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->a()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    const/4 v3, 0x2

    invoke-static {v1, v0, v2, v3}, Lcom/xingluo/platform/gameplus/e/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p0, p1, v4}, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->downloadGame(Landroid/view/View;Z)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->mContext:Landroid/content/Context;

    const-string v2, "iv_banner_slide"

    invoke-static {v1, v2}, Lcom/xingluo/platform/single/util/r;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;

    invoke-direct {p0}, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->setSharedPreferences()V

    const-string v1, "ads_pv"

    invoke-virtual {v0}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->a()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-static {v1, v0, v2, v4}, Lcom/xingluo/platform/gameplus/e/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->downloadGame(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->iv_banner_fix_close:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->mContext:Landroid/content/Context;

    const-string v2, "xl_banner_close_icon_click"

    invoke-static {v1, v2}, Lcom/xingluo/platform/single/util/r;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    invoke-direct {p0}, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->setSharedPreferences()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeBannerView()V
    .locals 3

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "isBannerViewShow"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->isHiden:Z

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->bannerView:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->isHiden:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->handlerSuspenstionBannerView:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->slideBannerView:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->handlerSuspenstionBannerView:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public removeBannerWindow()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->bannerView:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->bannerView:Landroid/widget/RelativeLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->bannerView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    iput-object v2, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->bannerView:Landroid/widget/RelativeLayout;

    :cond_0
    :goto_0
    iput-object v2, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->windowManager:Landroid/view/WindowManager;

    return-void

    :cond_1
    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->slideBannerView:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->slideBannerView:Landroid/widget/RelativeLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->slideBannerView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    iput-object v2, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->slideBannerView:Landroid/widget/RelativeLayout;

    goto :goto_0
.end method

.method public setDialogShowSize()V
    .locals 8

    const-wide v6, 0x3fc3333333333333L    # 0.15

    const-wide v4, 0x3fb999999999999aL    # 0.1

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-boolean v1, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->isMLandFlag:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->showBannerStyle:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->windowManager_params:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v2, v6

    double-to-int v2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->windowManager_params:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->windowManager_params:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v2, v6

    double-to-int v2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->windowManager_params:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    int-to-double v2, v0

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v2, v4

    double-to-int v0, v2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->showBannerStyle:I

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->windowManager_params:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->windowManager_params:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->windowManager_params:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->windowManager_params:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    int-to-double v2, v0

    const-wide v4, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v2, v4

    double-to-int v0, v2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_0
.end method

.method public setDialogShowStyle(Lcom/xingluo/platform/ad/pojos/XLAdsBannerGameData;)V
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/xingluo/platform/ad/pojos/XLAdsBannerGameData;->c()I

    move-result v0

    iput v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->showTime:I

    iget-boolean v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->isHiden:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->showTime:I

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->setXSecondAfterShowOrHiden()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->showTime:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->showBannerStyle:I

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->showBannerView(Lcom/xingluo/platform/ad/pojos/XLAdsBannerGameData;)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->showBannerStyle:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->showSlideBannerView(Lcom/xingluo/platform/ad/pojos/XLAdsBannerGameData;)V

    goto :goto_0
.end method

.method public setInsertBitmap(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 1

    invoke-static {}, Lcom/xingluo/platform/single/net/ConnectManagerHelper;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xingluo/platform/ad/f/c;->a()Lcom/xingluo/platform/ad/f/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/platform/ad/f/c;->b()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    :cond_0
    return-void
.end method

.method public setWindowShowStyle(Lcom/xingluo/platform/ad/pojos/XLAdsBannerGameData;)V
    .locals 2

    invoke-virtual {p1}, Lcom/xingluo/platform/ad/pojos/XLAdsBannerGameData;->b()I

    move-result v0

    iput v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->showBannerStyle:I

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->windowManager:Landroid/view/WindowManager;

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->windowManager_params:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->windowManager_params:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x31

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->windowManager_params:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->windowManager_params:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->windowManager_params:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x5a8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->mLayoutInflater:Landroid/view/LayoutInflater;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->handlerImageView:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->setDialogShowSize()V

    return-void
.end method

.method public setXSecondAfterShowOrHiden()V
    .locals 4

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "isBanShowFinish"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->bannerTimer:Ljava/util/Timer;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->bannerTimerTask:Lcom/xingluo/platform/ad/suspend/XLBannerWindow$a;

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->bannerTimer:Ljava/util/Timer;

    new-instance v0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xingluo/platform/ad/suspend/XLBannerWindow$a;-><init>(Lcom/xingluo/platform/ad/suspend/XLBannerWindow;Lcom/xingluo/platform/ad/suspend/XLBannerWindow$a;)V

    iput-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->bannerTimerTask:Lcom/xingluo/platform/ad/suspend/XLBannerWindow$a;

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->bannerTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->bannerTimerTask:Lcom/xingluo/platform/ad/suspend/XLBannerWindow$a;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public startRunSlideAnimationHiden()V
    .locals 4

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "isBanShowFinish"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->bannerTimer:Ljava/util/Timer;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->bannerTimerTask:Lcom/xingluo/platform/ad/suspend/XLBannerWindow$a;

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->bannerTimer:Ljava/util/Timer;

    new-instance v0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xingluo/platform/ad/suspend/XLBannerWindow$a;-><init>(Lcom/xingluo/platform/ad/suspend/XLBannerWindow;Lcom/xingluo/platform/ad/suspend/XLBannerWindow$a;)V

    iput-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->bannerTimerTask:Lcom/xingluo/platform/ad/suspend/XLBannerWindow$a;

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->bannerTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/XLBannerWindow;->bannerTimerTask:Lcom/xingluo/platform/ad/suspend/XLBannerWindow$a;

    const-wide/16 v2, 0x1f40

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
