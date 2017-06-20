.class public Lcom/yuelan/dreampay/netmonitor/MyWindowMannager;
.super Ljava/lang/Object;


# static fields
.field private static c:Lcom/yuelan/dreampay/netmonitor/FloatWindowSmallView;

.field private static d:Landroid/view/WindowManager$LayoutParams;

.field private static e:Landroid/view/WindowManager$LayoutParams;

.field private static f:Landroid/view/WindowManager;

.field private static g:Lcom/yuelan/dreampay/netmonitor/WindowDialogView;

.field private static h:Landroid/view/WindowManager;

.field private static i:Ljava/lang/String;


# instance fields
.field a:Landroid/view/WindowManager;

.field b:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/yuelan/dreampay/netmonitor/MyWindowMannager;->i:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/yuelan/dreampay/netmonitor/MyWindowMannager;->a:Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/yuelan/dreampay/netmonitor/MyWindowMannager;->b:Landroid/view/WindowManager$LayoutParams;

    return-void
.end method

.method private static a(Landroid/content/Context;)Landroid/view/WindowManager;
    .locals 1

    sget-object v0, Lcom/yuelan/dreampay/netmonitor/MyWindowMannager;->f:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    sput-object v0, Lcom/yuelan/dreampay/netmonitor/MyWindowMannager;->f:Landroid/view/WindowManager;

    :cond_0
    sget-object v0, Lcom/yuelan/dreampay/netmonitor/MyWindowMannager;->f:Landroid/view/WindowManager;

    return-object v0
.end method

.method public static createDialiog(Landroid/content/Context;)V
    .locals 3

    const/4 v2, -0x2

    sget-object v0, Lcom/yuelan/dreampay/netmonitor/MyWindowMannager;->h:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/yuelan/dreampay/netmonitor/MyWindowMannager;->a(Landroid/content/Context;)Landroid/view/WindowManager;

    move-result-object v0

    sput-object v0, Lcom/yuelan/dreampay/netmonitor/MyWindowMannager;->h:Landroid/view/WindowManager;

    :cond_0
    sget-object v0, Lcom/yuelan/dreampay/netmonitor/MyWindowMannager;->h:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    sget-object v0, Lcom/yuelan/dreampay/netmonitor/MyWindowMannager;->h:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    sget-object v0, Lcom/yuelan/dreampay/netmonitor/MyWindowMannager;->g:Lcom/yuelan/dreampay/netmonitor/WindowDialogView;

    if-nez v0, :cond_1

    new-instance v0, Lcom/yuelan/dreampay/netmonitor/WindowDialogView;

    invoke-direct {v0, p0}, Lcom/yuelan/dreampay/netmonitor/WindowDialogView;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/yuelan/dreampay/netmonitor/MyWindowMannager;->g:Lcom/yuelan/dreampay/netmonitor/WindowDialogView;

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    sput-object v0, Lcom/yuelan/dreampay/netmonitor/MyWindowMannager;->e:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7d2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    sget-object v0, Lcom/yuelan/dreampay/netmonitor/MyWindowMannager;->e:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    sget-object v0, Lcom/yuelan/dreampay/netmonitor/MyWindowMannager;->e:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    sget-object v0, Lcom/yuelan/dreampay/netmonitor/MyWindowMannager;->e:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    sget-object v0, Lcom/yuelan/dreampay/netmonitor/MyWindowMannager;->e:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    sget-object v0, Lcom/yuelan/dreampay/netmonitor/MyWindowMannager;->g:Lcom/yuelan/dreampay/netmonitor/WindowDialogView;

    sget-object v1, Lcom/yuelan/dreampay/netmonitor/MyWindowMannager;->e:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Lcom/yuelan/dreampay/netmonitor/WindowDialogView;->setParams(Landroid/view/WindowManager$LayoutParams;)V

    sget-object v0, Lcom/yuelan/dreampay/netmonitor/MyWindowMannager;->h:Landroid/view/WindowManager;

    sget-object v1, Lcom/yuelan/dreampay/netmonitor/MyWindowMannager;->g:Lcom/yuelan/dreampay/netmonitor/WindowDialogView;

    sget-object v2, Lcom/yuelan/dreampay/netmonitor/MyWindowMannager;->e:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public static createSmallWindow(Landroid/content/Context;)V
    .locals 4

    sget-object v0, Lcom/yuelan/dreampay/netmonitor/MyWindowMannager;->h:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/yuelan/dreampay/netmonitor/MyWindowMannager;->a(Landroid/content/Context;)Landroid/view/WindowManager;

    move-result-object v0

    sput-object v0, Lcom/yuelan/dreampay/netmonitor/MyWindowMannager;->h:Landroid/view/WindowManager;

    :cond_0
    sget-object v0, Lcom/yuelan/dreampay/netmonitor/MyWindowMannager;->h:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    sget-object v1, Lcom/yuelan/dreampay/netmonitor/MyWindowMannager;->h:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    sget-object v2, Lcom/yuelan/dreampay/netmonitor/MyWindowMannager;->c:Lcom/yuelan/dreampay/netmonitor/FloatWindowSmallView;

    if-nez v2, :cond_1

    new-instance v2, Lcom/yuelan/dreampay/netmonitor/FloatWindowSmallView;

    invoke-direct {v2, p0, v0}, Lcom/yuelan/dreampay/netmonitor/FloatWindowSmallView;-><init>(Landroid/content/Context;I)V

    sput-object v2, Lcom/yuelan/dreampay/netmonitor/MyWindowMannager;->c:Lcom/yuelan/dreampay/netmonitor/FloatWindowSmallView;

    sget-object v2, Lcom/yuelan/dreampay/netmonitor/MyWindowMannager;->d:Landroid/view/WindowManager$LayoutParams;

    if-nez v2, :cond_2

    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    sput-object v2, Lcom/yuelan/dreampay/netmonitor/MyWindowMannager;->d:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7d2

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    sget-object v2, Lcom/yuelan/dreampay/netmonitor/MyWindowMannager;->d:Landroid/view/WindowManager$LayoutParams;

    const/4 v3, 0x1

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    sget-object v2, Lcom/yuelan/dreampay/netmonitor/MyWindowMannager;->d:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x28

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    sget-object v2, Lcom/yuelan/dreampay/netmonitor/MyWindowMannager;->d:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x33

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    sget-object v2, Lcom/yuelan/dreampay/netmonitor/MyWindowMannager;->d:Landroid/view/WindowManager$LayoutParams;

    sget v3, Lcom/yuelan/dreampay/netmonitor/FloatWindowSmallView;->viewWidth:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    sget-object v2, Lcom/yuelan/dreampay/netmonitor/MyWindowMannager;->d:Landroid/view/WindowManager$LayoutParams;

    sget v3, Lcom/yuelan/dreampay/netmonitor/FloatWindowSmallView;->viewHeight:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    sget-object v2, Lcom/yuelan/dreampay/netmonitor/MyWindowMannager;->d:Landroid/view/WindowManager$LayoutParams;

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    sget-object v0, Lcom/yuelan/dreampay/netmonitor/MyWindowMannager;->d:Landroid/view/WindowManager$LayoutParams;

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    :goto_0
    sget-object v0, Lcom/yuelan/dreampay/netmonitor/MyWindowMannager;->c:Lcom/yuelan/dreampay/netmonitor/FloatWindowSmallView;

    sget-object v1, Lcom/yuelan/dreampay/netmonitor/MyWindowMannager;->d:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Lcom/yuelan/dreampay/netmonitor/FloatWindowSmallView;->setParams(Landroid/view/WindowManager$LayoutParams;)V

    sget-object v0, Lcom/yuelan/dreampay/netmonitor/MyWindowMannager;->h:Landroid/view/WindowManager;

    sget-object v1, Lcom/yuelan/dreampay/netmonitor/MyWindowMannager;->c:Lcom/yuelan/dreampay/netmonitor/FloatWindowSmallView;

    sget-object v2, Lcom/yuelan/dreampay/netmonitor/MyWindowMannager;->d:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void

    :cond_2
    sget-object v1, Lcom/yuelan/dreampay/netmonitor/MyWindowMannager;->d:Landroid/view/WindowManager$LayoutParams;

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_0
.end method

.method public static isWindowShowing()Z
    .locals 1

    sget-object v0, Lcom/yuelan/dreampay/netmonitor/MyWindowMannager;->c:Lcom/yuelan/dreampay/netmonitor/FloatWindowSmallView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static removeSmallWindow(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/yuelan/dreampay/netmonitor/MyWindowMannager;->c:Lcom/yuelan/dreampay/netmonitor/FloatWindowSmallView;

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/yuelan/dreampay/netmonitor/MyWindowMannager;->a(Landroid/content/Context;)Landroid/view/WindowManager;

    move-result-object v0

    sget-object v1, Lcom/yuelan/dreampay/netmonitor/MyWindowMannager;->c:Lcom/yuelan/dreampay/netmonitor/FloatWindowSmallView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/yuelan/dreampay/netmonitor/MyWindowMannager;->c:Lcom/yuelan/dreampay/netmonitor/FloatWindowSmallView;

    :cond_0
    return-void
.end method

.method public static removeWindowDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const/4 v7, 0x0

    sget-object v0, Lcom/yuelan/dreampay/netmonitor/MyWindowMannager;->g:Lcom/yuelan/dreampay/netmonitor/WindowDialogView;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/yuelan/codelib/utils/TimeUtil;->get24NowTime()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yuelan/dreampay/netmonitor/MyWindowMannager;->i:Ljava/lang/String;

    if-eqz p1, :cond_0

    sget-object v0, Lcom/yuelan/dreampay/netmonitor/MyWindowMannager;->i:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :try_start_1
    sget-object v2, Lcom/yuelan/dreampay/netmonitor/MyWindowMannager;->i:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sub-long v0, v2, v0

    const-wide/16 v2, 0x3e8

    div-long v4, v0, v2

    const/4 v1, 0x5

    sget-object v3, Lcom/yuelan/dreampay/netmonitor/MyWindowMannager;->i:Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object v0, p0

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lcom/yuelan/dreampay/common/AppDo;->CloseDialogTimesRecord(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {p0}, Lcom/yuelan/dreampay/netmonitor/MyWindowMannager;->a(Landroid/content/Context;)Landroid/view/WindowManager;

    move-result-object v0

    sget-object v1, Lcom/yuelan/dreampay/netmonitor/MyWindowMannager;->g:Lcom/yuelan/dreampay/netmonitor/WindowDialogView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    sput-object v7, Lcom/yuelan/dreampay/netmonitor/MyWindowMannager;->g:Lcom/yuelan/dreampay/netmonitor/WindowDialogView;

    :cond_1
    return-void

    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v7

    :goto_1
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    move-object v1, v0

    move-object v0, v7

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    goto :goto_1
.end method
