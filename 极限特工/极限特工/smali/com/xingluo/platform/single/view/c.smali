.class public Lcom/xingluo/platform/single/view/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xingluo/platform/single/view/c$a;
    }
.end annotation


# static fields
.field private static final g:Ljava/lang/String; = "{\"isButtonStyleFlip\":false,\"isButtonShow\":true}"

.field private static h:Lcom/xingluo/platform/single/view/c;

.field private static i:Lcom/xingluo/platform/single/util/i;


# instance fields
.field private a:Landroid/app/Dialog;

.field private b:Landroid/content/Context;

.field private c:Landroid/view/View$OnClickListener;

.field private d:Landroid/view/View$OnClickListener;

.field private e:Landroid/content/DialogInterface$OnDismissListener;

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/xingluo/platform/single/view/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xingluo/platform/single/util/i;->a(Ljava/lang/String;)Lcom/xingluo/platform/single/util/i;

    move-result-object v0

    sput-object v0, Lcom/xingluo/platform/single/view/c;->i:Lcom/xingluo/platform/single/util/i;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xingluo/platform/single/view/c;->c:Landroid/view/View$OnClickListener;

    iput-object v0, p0, Lcom/xingluo/platform/single/view/c;->d:Landroid/view/View$OnClickListener;

    iput-object v0, p0, Lcom/xingluo/platform/single/view/c;->e:Landroid/content/DialogInterface$OnDismissListener;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xingluo/platform/single/view/c;->f:Z

    return-void
.end method

.method static synthetic a(Lcom/xingluo/platform/single/view/c;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/view/c;->a:Landroid/app/Dialog;

    return-object v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/xingluo/platform/single/view/c;
    .locals 3

    const-class v1, Lcom/xingluo/platform/single/view/c;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/xingluo/platform/single/view/c;

    invoke-direct {v0}, Lcom/xingluo/platform/single/view/c;-><init>()V

    iput-object p0, v0, Lcom/xingluo/platform/single/view/c;->b:Landroid/content/Context;

    new-instance v2, Lcom/xingluo/platform/single/view/c$a;

    invoke-direct {v2}, Lcom/xingluo/platform/single/view/c$a;-><init>()V

    iput-object v2, v0, Lcom/xingluo/platform/single/view/c;->c:Landroid/view/View$OnClickListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xf

    if-le v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "      "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0
.end method

.method public static declared-synchronized b(Landroid/content/Context;)Lcom/xingluo/platform/single/view/c;
    .locals 3

    const-class v1, Lcom/xingluo/platform/single/view/c;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xingluo/platform/single/view/c;->h:Lcom/xingluo/platform/single/view/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xingluo/platform/single/view/c;

    invoke-direct {v0}, Lcom/xingluo/platform/single/view/c;-><init>()V

    sput-object v0, Lcom/xingluo/platform/single/view/c;->h:Lcom/xingluo/platform/single/view/c;

    :cond_0
    sget-object v0, Lcom/xingluo/platform/single/view/c;->h:Lcom/xingluo/platform/single/view/c;

    iput-object p0, v0, Lcom/xingluo/platform/single/view/c;->b:Landroid/content/Context;

    sget-object v0, Lcom/xingluo/platform/single/view/c;->h:Lcom/xingluo/platform/single/view/c;

    new-instance v2, Lcom/xingluo/platform/single/view/c$a;

    invoke-direct {v2}, Lcom/xingluo/platform/single/view/c$a;-><init>()V

    iput-object v2, v0, Lcom/xingluo/platform/single/view/c;->c:Landroid/view/View$OnClickListener;

    sget-object v0, Lcom/xingluo/platform/single/view/c;->h:Lcom/xingluo/platform/single/view/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic d()Lcom/xingluo/platform/single/view/c;
    .locals 1

    sget-object v0, Lcom/xingluo/platform/single/view/c;->h:Lcom/xingluo/platform/single/view/c;

    return-object v0
.end method

.method private e()V
    .locals 0

    return-void
.end method


# virtual methods
.method public a()Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/view/c;->a:Landroid/app/Dialog;

    return-object v0
.end method

.method public a(Landroid/content/DialogInterface$OnDismissListener;)Lcom/xingluo/platform/single/view/c;
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/view/c;->e:Landroid/content/DialogInterface$OnDismissListener;

    return-object p0
.end method

.method public a(Landroid/view/View$OnClickListener;)Lcom/xingluo/platform/single/view/c;
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/view/c;->d:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/xingluo/platform/single/view/c;
    .locals 6

    const/4 v5, 0x1

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "isButtonStyleFlip"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/single/view/c;->a:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/xingluo/platform/single/view/c;->b:Landroid/content/Context;

    const-string v3, "xl_dialog_btn1"

    invoke-static {v1, v3}, Lcom/xingluo/platform/single/util/r;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/xingluo/platform/single/view/c;->a:Landroid/app/Dialog;

    iget-object v3, p0, Lcom/xingluo/platform/single/view/c;->b:Landroid/content/Context;

    const-string v4, "xl_dialog_btn2"

    invoke-static {v3, v4}, Lcom/xingluo/platform/single/util/r;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const-string v3, "isButtonStyleFlip"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget v3, Lcom/xingluo/platform/single/util/a;->c:I

    if-ne v3, v5, :cond_2

    iget-object v3, p0, Lcom/xingluo/platform/single/view/c;->b:Landroid/content/Context;

    const-string v4, "bd_btn_pointer_game_selector"

    invoke-static {v3, v4}, Lcom/xingluo/platform/single/util/r;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v3, p0, Lcom/xingluo/platform/single/view/c;->b:Landroid/content/Context;

    const-string v4, "bd_btn_confirm_quit_selector"

    invoke-static {v3, v4}, Lcom/xingluo/platform/single/util/r;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    :goto_0
    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lcom/xingluo/platform/single/view/c;->b:Landroid/content/Context;

    const-string v3, "xl_color_333333"

    invoke-static {v0, v3}, Lcom/xingluo/platform/single/util/r;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTextColor(I)V

    :cond_0
    :goto_1
    const-string v0, "isButtonShow"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "isButtonShow"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xingluo/platform/single/view/c;->b(Z)V

    :cond_1
    :goto_2
    return-object p0

    :cond_2
    iget-object v3, p0, Lcom/xingluo/platform/single/view/c;->b:Landroid/content/Context;

    const-string v4, "xl_btn_pointer_game_selector"

    invoke-static {v3, v4}, Lcom/xingluo/platform/single/util/r;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v3, p0, Lcom/xingluo/platform/single/view/c;->b:Landroid/content/Context;

    const-string v4, "xl_btn_confirm_quit_selector"

    invoke-static {v3, v4}, Lcom/xingluo/platform/single/util/r;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setBackgroundResource(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    :cond_3
    :try_start_1
    sget v3, Lcom/xingluo/platform/single/util/a;->c:I

    if-ne v3, v5, :cond_4

    iget-object v3, p0, Lcom/xingluo/platform/single/view/c;->b:Landroid/content/Context;

    const-string v4, "bd_btn_confirm_quit_selector"

    invoke-static {v3, v4}, Lcom/xingluo/platform/single/util/r;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v3, p0, Lcom/xingluo/platform/single/view/c;->b:Landroid/content/Context;

    const-string v4, "bd_btn_pointer_game_selector"

    invoke-static {v3, v4}, Lcom/xingluo/platform/single/util/r;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    :goto_3
    iget-object v3, p0, Lcom/xingluo/platform/single/view/c;->b:Landroid/content/Context;

    const-string v4, "xl_color_333333"

    invoke-static {v3, v4}, Lcom/xingluo/platform/single/util/r;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTextColor(I)V

    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/xingluo/platform/single/view/c;->b:Landroid/content/Context;

    const-string v4, "xl_btn_confirm_quit_selector"

    invoke-static {v3, v4}, Lcom/xingluo/platform/single/util/r;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v3, p0, Lcom/xingluo/platform/single/view/c;->b:Landroid/content/Context;

    const-string v4, "xl_btn_pointer_game_selector"

    invoke-static {v3, v4}, Lcom/xingluo/platform/single/util/r;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xingluo/platform/single/view/c;->b(Z)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;ZLjava/lang/String;Z)Lcom/xingluo/platform/single/view/c;
    .locals 3

    sget-object v0, Lcom/xingluo/platform/single/view/c;->i:Lcom/xingluo/platform/single/util/i;

    invoke-virtual {v0, p8}, Lcom/xingluo/platform/single/util/i;->c(Ljava/lang/String;)V

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-virtual {p0}, Lcom/xingluo/platform/single/view/c;->b()V

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/xingluo/platform/single/view/c;->a:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/xingluo/platform/single/view/c;->b:Landroid/content/Context;

    const-string v2, "xlMainHeadTxt"

    invoke-static {v1, v2}, Lcom/xingluo/platform/single/util/r;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v0, p0, Lcom/xingluo/platform/single/view/c;->a:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/xingluo/platform/single/view/c;->b:Landroid/content/Context;

    const-string v2, "xlMainHeadImage"

    invoke-static {v1, v2}, Lcom/xingluo/platform/single/util/r;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget-boolean v1, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->GHOST_IS_SUPPORT:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/xingluo/platform/single/view/c;->a:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/xingluo/platform/single/view/c;->b:Landroid/content/Context;

    const-string v2, "xl_dialog_tv_main"

    invoke-static {v1, v2}, Lcom/xingluo/platform/single/util/r;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {p0, v0, p2}, Lcom/xingluo/platform/single/view/c;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xingluo/platform/single/view/c;->a:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/xingluo/platform/single/view/c;->b:Landroid/content/Context;

    const-string v2, "xl_dialog_btn1"

    invoke-static {v1, v2}, Lcom/xingluo/platform/single/util/r;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    if-eqz p3, :cond_4

    invoke-virtual {v0, p3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    new-instance v1, Lcom/xingluo/platform/single/view/d;

    invoke-direct {v1, p0, p4}, Lcom/xingluo/platform/single/view/d;-><init>(Lcom/xingluo/platform/single/view/c;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/xingluo/platform/single/view/c;->a:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/xingluo/platform/single/view/c;->b:Landroid/content/Context;

    const-string v2, "xl_dialog_btn2"

    invoke-static {v1, v2}, Lcom/xingluo/platform/single/util/r;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz p5, :cond_5

    invoke-virtual {v0, p5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    new-instance v1, Lcom/xingluo/platform/single/view/e;

    invoke-direct {v1, p0, p6}, Lcom/xingluo/platform/single/view/e;-><init>(Lcom/xingluo/platform/single/view/c;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-nez p9, :cond_6

    invoke-direct {p0}, Lcom/xingluo/platform/single/view/c;->e()V

    :cond_6
    if-nez p7, :cond_7

    iget-object v0, p0, Lcom/xingluo/platform/single/view/c;->a:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/xingluo/platform/single/view/c;->b:Landroid/content/Context;

    const-string v2, "xlMainHeadClose"

    invoke-static {v1, v2}, Lcom/xingluo/platform/single/util/r;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    iget-object v0, p0, Lcom/xingluo/platform/single/view/c;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/single/view/c;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;ZLjava/lang/String;)Lcom/xingluo/platform/single/view/c;
    .locals 4

    const/16 v3, 0x8

    sget-object v0, Lcom/xingluo/platform/single/view/c;->i:Lcom/xingluo/platform/single/util/i;

    invoke-virtual {v0, p6}, Lcom/xingluo/platform/single/util/i;->c(Ljava/lang/String;)V

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-virtual {p0}, Lcom/xingluo/platform/single/view/c;->b()V

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/xingluo/platform/single/view/c;->a:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/xingluo/platform/single/view/c;->b:Landroid/content/Context;

    const-string v2, "xlMainHeadTxt"

    invoke-static {v1, v2}, Lcom/xingluo/platform/single/util/r;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v0, p0, Lcom/xingluo/platform/single/view/c;->a:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/xingluo/platform/single/view/c;->b:Landroid/content/Context;

    const-string v2, "xlMainHeadImage"

    invoke-static {v1, v2}, Lcom/xingluo/platform/single/util/r;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget-boolean v1, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->GHOST_IS_SUPPORT:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/xingluo/platform/single/view/c;->a:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/xingluo/platform/single/view/c;->b:Landroid/content/Context;

    const-string v2, "xl_dialog_btn1"

    invoke-static {v1, v2}, Lcom/xingluo/platform/single/util/r;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/xingluo/platform/single/view/c;->a:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/xingluo/platform/single/view/c;->b:Landroid/content/Context;

    const-string v2, "xl_dialog_btn2"

    invoke-static {v1, v2}, Lcom/xingluo/platform/single/util/r;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz p3, :cond_4

    invoke-virtual {v0, p3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    new-instance v1, Lcom/xingluo/platform/single/view/f;

    invoke-direct {v1, p0, p4}, Lcom/xingluo/platform/single/view/f;-><init>(Lcom/xingluo/platform/single/view/c;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-nez p5, :cond_5

    iget-object v0, p0, Lcom/xingluo/platform/single/view/c;->a:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/xingluo/platform/single/view/c;->b:Landroid/content/Context;

    const-string v2, "xlMainHeadClose"

    invoke-static {v1, v2}, Lcom/xingluo/platform/single/util/r;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    iget-object v0, p0, Lcom/xingluo/platform/single/view/c;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/single/view/c;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/single/view/c;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0
.end method

.method public a(Z)Lcom/xingluo/platform/single/view/c;
    .locals 0

    iput-boolean p1, p0, Lcom/xingluo/platform/single/view/c;->f:Z

    return-object p0
.end method

.method protected b()V
    .locals 3

    iget-object v0, p0, Lcom/xingluo/platform/single/view/c;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/xingluo/platform/single/util/d;->a(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/single/view/c;->a:Landroid/app/Dialog;

    iget-boolean v0, p0, Lcom/xingluo/platform/single/view/c;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/single/view/c;->a:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/xingluo/platform/single/view/c;->b:Landroid/content/Context;

    const-string v2, "xl_viewcontainer"

    invoke-static {v1, v2}, Lcom/xingluo/platform/single/util/r;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/xingluo/platform/single/view/c;->b:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v1, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    :cond_0
    const-string v0, "{\"isButtonStyleFlip\":false,\"isButtonShow\":true}"

    invoke-virtual {p0, v0}, Lcom/xingluo/platform/single/view/c;->a(Ljava/lang/String;)Lcom/xingluo/platform/single/view/c;

    iget-object v0, p0, Lcom/xingluo/platform/single/view/c;->d:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xingluo/platform/single/view/c;->a:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/xingluo/platform/single/view/c;->b:Landroid/content/Context;

    const-string v2, "xl_dialog_btn1"

    invoke-static {v1, v2}, Lcom/xingluo/platform/single/util/r;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/xingluo/platform/single/view/c;->d:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/xingluo/platform/single/view/c;->a:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/xingluo/platform/single/view/c;->b:Landroid/content/Context;

    const-string v2, "xlMainHeadBack"

    invoke-static {v1, v2}, Lcom/xingluo/platform/single/util/r;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/xingluo/platform/single/view/c;->d:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/xingluo/platform/single/view/c;->a:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/xingluo/platform/single/view/c;->b:Landroid/content/Context;

    const-string v2, "xlMainHeadClose"

    invoke-static {v1, v2}, Lcom/xingluo/platform/single/util/r;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/xingluo/platform/single/view/c;->d:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    iget-object v0, p0, Lcom/xingluo/platform/single/view/c;->e:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xingluo/platform/single/view/c;->a:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/xingluo/platform/single/view/c;->e:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xingluo/platform/single/view/c;->e:Landroid/content/DialogInterface$OnDismissListener;

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/xingluo/platform/single/view/c;->a:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/xingluo/platform/single/view/c;->b:Landroid/content/Context;

    const-string v2, "xl_dialog_btn1"

    invoke-static {v1, v2}, Lcom/xingluo/platform/single/util/r;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/xingluo/platform/single/view/c;->c:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/xingluo/platform/single/view/c;->a:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/xingluo/platform/single/view/c;->b:Landroid/content/Context;

    const-string v2, "xlMainHeadBack"

    invoke-static {v1, v2}, Lcom/xingluo/platform/single/util/r;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/xingluo/platform/single/view/c;->c:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/xingluo/platform/single/view/c;->a:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/xingluo/platform/single/view/c;->b:Landroid/content/Context;

    const-string v2, "xlMainHeadClose"

    invoke-static {v1, v2}, Lcom/xingluo/platform/single/util/r;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/xingluo/platform/single/view/c;->c:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method protected b(Z)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/single/view/c;->a:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/xingluo/platform/single/view/c;->b:Landroid/content/Context;

    const-string v2, "btnContainer"

    invoke-static {v1, v2}, Lcom/xingluo/platform/single/util/r;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/xingluo/platform/single/view/c;->a:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/xingluo/platform/single/view/c;->b:Landroid/content/Context;

    const-string v2, "btnContainer"

    invoke-static {v1, v2}, Lcom/xingluo/platform/single/util/r;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/view/c;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/single/view/c;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/single/view/c;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method
