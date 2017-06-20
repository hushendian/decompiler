.class public Lcom/yuelan/dreampay/netmonitor/FloatWindowSmallView;
.super Landroid/widget/LinearLayout;


# static fields
.field private static a:I

.field private static r:Ljava/lang/Boolean;

.field public static viewHeight:I

.field public static viewWidth:I


# instance fields
.field private b:Landroid/view/WindowManager;

.field private c:Landroid/view/WindowManager$LayoutParams;

.field private d:F

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:I

.field private k:I

.field private l:Landroid/content/Context;

.field private m:Landroid/widget/ImageView;

.field private n:I

.field private o:I

.field private p:Ljava/util/Timer;

.field private q:Landroid/graphics/drawable/AnimationDrawable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/yuelan/dreampay/netmonitor/FloatWindowSmallView;->r:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x5

    iput v0, p0, Lcom/yuelan/dreampay/netmonitor/FloatWindowSmallView;->k:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/yuelan/dreampay/netmonitor/FloatWindowSmallView;->n:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/yuelan/dreampay/netmonitor/FloatWindowSmallView;->o:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yuelan/dreampay/netmonitor/FloatWindowSmallView;->q:Landroid/graphics/drawable/AnimationDrawable;

    iput-object p1, p0, Lcom/yuelan/dreampay/netmonitor/FloatWindowSmallView;->l:Landroid/content/Context;

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/yuelan/dreampay/netmonitor/FloatWindowSmallView;->p:Ljava/util/Timer;

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/yuelan/dreampay/netmonitor/FloatWindowSmallView;->b:Landroid/view/WindowManager;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/yuelan/dreampay/netmonitor/FloatWindowSmallView;->l:Landroid/content/Context;

    const-string v2, "layout"

    const-string v3, "mili_smspay_floating"

    invoke-static {v1, v2, v3}, Lcom/yuelan/codelib/comm/App;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    iget-object v0, p0, Lcom/yuelan/dreampay/netmonitor/FloatWindowSmallView;->l:Landroid/content/Context;

    const-string v1, "id"

    const-string v2, "mili_smspay_float_image"

    invoke-static {v0, v1, v2}, Lcom/yuelan/codelib/comm/App;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yuelan/dreampay/netmonitor/FloatWindowSmallView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yuelan/dreampay/netmonitor/FloatWindowSmallView;->m:Landroid/widget/ImageView;

    sget-object v0, Lcom/yuelan/dreampay/netmonitor/FloatWindowSmallView;->r:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yuelan/dreampay/netmonitor/FloatWindowSmallView;->m:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/yuelan/dreampay/netmonitor/FloatWindowSmallView;->l:Landroid/content/Context;

    const-string v2, "anim"

    const-string v3, "mili_smspay_gif_logo_animation"

    invoke-static {v1, v2, v3}, Lcom/yuelan/codelib/comm/App;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/yuelan/dreampay/netmonitor/FloatWindowSmallView;->m:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/yuelan/dreampay/netmonitor/FloatWindowSmallView;->r:Ljava/lang/Boolean;

    :cond_0
    iget-object v0, p0, Lcom/yuelan/dreampay/netmonitor/FloatWindowSmallView;->m:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    sput v0, Lcom/yuelan/dreampay/netmonitor/FloatWindowSmallView;->viewWidth:I

    iput p2, p0, Lcom/yuelan/dreampay/netmonitor/FloatWindowSmallView;->j:I

    iget-object v0, p0, Lcom/yuelan/dreampay/netmonitor/FloatWindowSmallView;->m:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    sput v0, Lcom/yuelan/dreampay/netmonitor/FloatWindowSmallView;->viewHeight:I

    return-void
.end method

.method private a()I
    .locals 3

    sget v0, Lcom/yuelan/dreampay/netmonitor/FloatWindowSmallView;->a:I

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "com.android.internal.R$dimen"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "status_bar_height"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Lcom/yuelan/dreampay/netmonitor/FloatWindowSmallView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/yuelan/dreampay/netmonitor/FloatWindowSmallView;->a:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    sget v0, Lcom/yuelan/dreampay/netmonitor/FloatWindowSmallView;->a:I

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/yuelan/dreampay/netmonitor/FloatWindowSmallView;->h:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/yuelan/dreampay/netmonitor/FloatWindowSmallView;->i:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/yuelan/dreampay/netmonitor/FloatWindowSmallView;->f:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    invoke-direct {p0}, Lcom/yuelan/dreampay/netmonitor/FloatWindowSmallView;->a()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/yuelan/dreampay/netmonitor/FloatWindowSmallView;->g:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/yuelan/dreampay/netmonitor/FloatWindowSmallView;->d:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    invoke-direct {p0}, Lcom/yuelan/dreampay/netmonitor/FloatWindowSmallView;->a()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/yuelan/dreampay/netmonitor/FloatWindowSmallView;->e:F

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/yuelan/dreampay/netmonitor/FloatWindowSmallView;->d:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    invoke-direct {p0}, Lcom/yuelan/dreampay/netmonitor/FloatWindowSmallView;->a()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/yuelan/dreampay/netmonitor/FloatWindowSmallView;->e:F

    iget-object v0, p0, Lcom/yuelan/dreampay/netmonitor/FloatWindowSmallView;->m:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/yuelan/dreampay/netmonitor/FloatWindowSmallView;->l:Landroid/content/Context;

    const-string v2, "anim"

    const-string v3, "mili_smspay_gif_logo_animation"

    invoke-static {v1, v2, v3}, Lcom/yuelan/codelib/comm/App;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/yuelan/dreampay/netmonitor/FloatWindowSmallView;->m:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    iget-object v0, p0, Lcom/yuelan/dreampay/netmonitor/FloatWindowSmallView;->c:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/yuelan/dreampay/netmonitor/FloatWindowSmallView;->d:F

    iget v2, p0, Lcom/yuelan/dreampay/netmonitor/FloatWindowSmallView;->h:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    sget v2, Lcom/yuelan/dreampay/netmonitor/FloatWindowSmallView;->viewWidth:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/yuelan/dreampay/netmonitor/FloatWindowSmallView;->c:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/yuelan/dreampay/netmonitor/FloatWindowSmallView;->e:F

    iget v2, p0, Lcom/yuelan/dreampay/netmonitor/FloatWindowSmallView;->i:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    sget v2, Lcom/yuelan/dreampay/netmonitor/FloatWindowSmallView;->viewHeight:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v0, p0, Lcom/yuelan/dreampay/netmonitor/FloatWindowSmallView;->b:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/yuelan/dreampay/netmonitor/FloatWindowSmallView;->c:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    :pswitch_2
    iget v0, p0, Lcom/yuelan/dreampay/netmonitor/FloatWindowSmallView;->d:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget v0, p0, Lcom/yuelan/dreampay/netmonitor/FloatWindowSmallView;->d:F

    iget v1, p0, Lcom/yuelan/dreampay/netmonitor/FloatWindowSmallView;->j:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/yuelan/dreampay/netmonitor/FloatWindowSmallView;->c:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/yuelan/dreampay/netmonitor/FloatWindowSmallView;->b:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/yuelan/dreampay/netmonitor/FloatWindowSmallView;->c:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/yuelan/dreampay/netmonitor/FloatWindowSmallView;->m:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/yuelan/dreampay/netmonitor/FloatWindowSmallView;->l:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/yuelan/dreampay/netmonitor/FloatWindowSmallView;->l:Landroid/content/Context;

    const-string v3, "drawable"

    const-string v4, "mili_smspay_hide_left_logo"

    invoke-static {v2, v3, v4}, Lcom/yuelan/codelib/comm/App;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    iget v0, p0, Lcom/yuelan/dreampay/netmonitor/FloatWindowSmallView;->f:F

    iget v1, p0, Lcom/yuelan/dreampay/netmonitor/FloatWindowSmallView;->k:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/yuelan/dreampay/netmonitor/FloatWindowSmallView;->d:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/yuelan/dreampay/netmonitor/FloatWindowSmallView;->d:F

    iget v1, p0, Lcom/yuelan/dreampay/netmonitor/FloatWindowSmallView;->f:F

    iget v2, p0, Lcom/yuelan/dreampay/netmonitor/FloatWindowSmallView;->k:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/yuelan/dreampay/netmonitor/FloatWindowSmallView;->e:F

    iget v1, p0, Lcom/yuelan/dreampay/netmonitor/FloatWindowSmallView;->g:F

    iget v2, p0, Lcom/yuelan/dreampay/netmonitor/FloatWindowSmallView;->k:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/yuelan/dreampay/netmonitor/FloatWindowSmallView;->g:F

    iget v1, p0, Lcom/yuelan/dreampay/netmonitor/FloatWindowSmallView;->k:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/yuelan/dreampay/netmonitor/FloatWindowSmallView;->e:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/yuelan/dreampay/netmonitor/FloatWindowSmallView;->l:Landroid/content/Context;

    const-class v2, Lcom/yuelan/dreampay/activity/DownLoadListViewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x30000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/yuelan/dreampay/netmonitor/FloatWindowSmallView;->l:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/yuelan/dreampay/netmonitor/FloatWindowSmallView;->c:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/yuelan/dreampay/netmonitor/FloatWindowSmallView;->j:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/yuelan/dreampay/netmonitor/FloatWindowSmallView;->b:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/yuelan/dreampay/netmonitor/FloatWindowSmallView;->c:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/yuelan/dreampay/netmonitor/FloatWindowSmallView;->m:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/yuelan/dreampay/netmonitor/FloatWindowSmallView;->l:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/yuelan/dreampay/netmonitor/FloatWindowSmallView;->l:Landroid/content/Context;

    const-string v3, "drawable"

    const-string v4, "mili_smspay_hide_right_logo"

    invoke-static {v2, v3, v4}, Lcom/yuelan/codelib/comm/App;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setParams(Landroid/view/WindowManager$LayoutParams;)V
    .locals 0

    iput-object p1, p0, Lcom/yuelan/dreampay/netmonitor/FloatWindowSmallView;->c:Landroid/view/WindowManager$LayoutParams;

    return-void
.end method
