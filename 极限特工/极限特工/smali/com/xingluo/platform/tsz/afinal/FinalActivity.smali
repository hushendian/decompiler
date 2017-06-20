.class public abstract Lcom/xingluo/platform/tsz/afinal/FinalActivity;
.super Landroid/app/Activity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xingluo/platform/tsz/afinal/FinalActivity$Method;
    }
.end annotation


# static fields
.field private static synthetic a:[I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/xingluo/platform/tsz/afinal/FinalActivity;->a(Ljava/lang/Object;Landroid/view/View;)V

    return-void
.end method

.method public static a(Ljava/lang/Object;Landroid/view/View;)V
    .locals 7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    if-eqz v2, :cond_0

    array-length v0, v2

    if-lez v0, :cond_0

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_1

    :cond_0
    return-void

    :cond_1
    aget-object v4, v2, v1

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {v4, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    :cond_2
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    const-class v0, Lcom/xingluo/platform/tsz/afinal/a/b/c;

    invoke-virtual {v4, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/tsz/afinal/a/b/c;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/xingluo/platform/tsz/afinal/a/b/c;->a()I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, p0, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/xingluo/platform/tsz/afinal/a/b/c;->b()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/xingluo/platform/tsz/afinal/FinalActivity$Method;->a:Lcom/xingluo/platform/tsz/afinal/FinalActivity$Method;

    invoke-static {p0, v4, v5, v6}, Lcom/xingluo/platform/tsz/afinal/FinalActivity;->a(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/String;Lcom/xingluo/platform/tsz/afinal/FinalActivity$Method;)V

    invoke-interface {v0}, Lcom/xingluo/platform/tsz/afinal/a/b/c;->c()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/xingluo/platform/tsz/afinal/FinalActivity$Method;->b:Lcom/xingluo/platform/tsz/afinal/FinalActivity$Method;

    invoke-static {p0, v4, v5, v6}, Lcom/xingluo/platform/tsz/afinal/FinalActivity;->a(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/String;Lcom/xingluo/platform/tsz/afinal/FinalActivity$Method;)V

    invoke-interface {v0}, Lcom/xingluo/platform/tsz/afinal/a/b/c;->d()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/xingluo/platform/tsz/afinal/FinalActivity$Method;->c:Lcom/xingluo/platform/tsz/afinal/FinalActivity$Method;

    invoke-static {p0, v4, v5, v6}, Lcom/xingluo/platform/tsz/afinal/FinalActivity;->a(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/String;Lcom/xingluo/platform/tsz/afinal/FinalActivity$Method;)V

    invoke-interface {v0}, Lcom/xingluo/platform/tsz/afinal/a/b/c;->e()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/xingluo/platform/tsz/afinal/FinalActivity$Method;->d:Lcom/xingluo/platform/tsz/afinal/FinalActivity$Method;

    invoke-static {p0, v4, v5, v6}, Lcom/xingluo/platform/tsz/afinal/FinalActivity;->a(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/String;Lcom/xingluo/platform/tsz/afinal/FinalActivity$Method;)V

    invoke-interface {v0}, Lcom/xingluo/platform/tsz/afinal/a/b/c;->f()Lcom/xingluo/platform/tsz/afinal/a/b/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/xingluo/platform/tsz/afinal/a/b/b;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-interface {v0}, Lcom/xingluo/platform/tsz/afinal/a/b/b;->a()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0}, Lcom/xingluo/platform/tsz/afinal/a/b/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v4, v5, v0}, Lcom/xingluo/platform/tsz/afinal/FinalActivity;->a(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/String;Lcom/xingluo/platform/tsz/afinal/FinalActivity$Method;)V
    .locals 3

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lcom/xingluo/platform/tsz/afinal/FinalActivity;->a()[I

    move-result-object v1

    invoke-virtual {p3}, Lcom/xingluo/platform/tsz/afinal/FinalActivity$Method;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/xingluo/platform/tsz/afinal/a/b/a;

    invoke-direct {v1, p0}, Lcom/xingluo/platform/tsz/afinal/a/b/a;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p2}, Lcom/xingluo/platform/tsz/afinal/a/b/a;->a(Ljava/lang/String;)Lcom/xingluo/platform/tsz/afinal/a/b/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :pswitch_1
    instance-of v1, v0, Landroid/widget/AbsListView;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/widget/AbsListView;

    new-instance v1, Lcom/xingluo/platform/tsz/afinal/a/b/a;

    invoke-direct {v1, p0}, Lcom/xingluo/platform/tsz/afinal/a/b/a;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p2}, Lcom/xingluo/platform/tsz/afinal/a/b/a;->d(Ljava/lang/String;)Lcom/xingluo/platform/tsz/afinal/a/b/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0

    :pswitch_2
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/xingluo/platform/tsz/afinal/a/b/a;

    invoke-direct {v1, p0}, Lcom/xingluo/platform/tsz/afinal/a/b/a;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p2}, Lcom/xingluo/platform/tsz/afinal/a/b/a;->b(Ljava/lang/String;)Lcom/xingluo/platform/tsz/afinal/a/b/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_0

    :pswitch_3
    instance-of v1, v0, Landroid/widget/AbsListView;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/widget/AbsListView;

    new-instance v1, Lcom/xingluo/platform/tsz/afinal/a/b/a;

    invoke-direct {v1, p0}, Lcom/xingluo/platform/tsz/afinal/a/b/a;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p2}, Lcom/xingluo/platform/tsz/afinal/a/b/a;->c(Ljava/lang/String;)Lcom/xingluo/platform/tsz/afinal/a/b/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/widget/AbsListView;

    new-instance v1, Lcom/xingluo/platform/tsz/afinal/a/b/a;

    invoke-direct {v1, p0}, Lcom/xingluo/platform/tsz/afinal/a/b/a;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p2}, Lcom/xingluo/platform/tsz/afinal/a/b/a;->e(Ljava/lang/String;)Lcom/xingluo/platform/tsz/afinal/a/b/a;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/xingluo/platform/tsz/afinal/a/b/a;->f(Ljava/lang/String;)Lcom/xingluo/platform/tsz/afinal/a/b/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    :cond_0
    return-void
.end method

.method static synthetic a()[I
    .locals 3

    sget-object v0, Lcom/xingluo/platform/tsz/afinal/FinalActivity;->a:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/xingluo/platform/tsz/afinal/FinalActivity$Method;->a()[Lcom/xingluo/platform/tsz/afinal/FinalActivity$Method;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/xingluo/platform/tsz/afinal/FinalActivity$Method;->a:Lcom/xingluo/platform/tsz/afinal/FinalActivity$Method;

    invoke-virtual {v1}, Lcom/xingluo/platform/tsz/afinal/FinalActivity$Method;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Lcom/xingluo/platform/tsz/afinal/FinalActivity$Method;->c:Lcom/xingluo/platform/tsz/afinal/FinalActivity$Method;

    invoke-virtual {v1}, Lcom/xingluo/platform/tsz/afinal/FinalActivity$Method;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Lcom/xingluo/platform/tsz/afinal/FinalActivity$Method;->b:Lcom/xingluo/platform/tsz/afinal/FinalActivity$Method;

    invoke-virtual {v1}, Lcom/xingluo/platform/tsz/afinal/FinalActivity$Method;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Lcom/xingluo/platform/tsz/afinal/FinalActivity$Method;->d:Lcom/xingluo/platform/tsz/afinal/FinalActivity$Method;

    invoke-virtual {v1}, Lcom/xingluo/platform/tsz/afinal/FinalActivity$Method;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Lcom/xingluo/platform/tsz/afinal/FinalActivity;->a:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public setContentView(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    invoke-static {p0}, Lcom/xingluo/platform/tsz/afinal/FinalActivity;->a(Landroid/app/Activity;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    invoke-static {p0}, Lcom/xingluo/platform/tsz/afinal/FinalActivity;->a(Landroid/app/Activity;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {p0}, Lcom/xingluo/platform/tsz/afinal/FinalActivity;->a(Landroid/app/Activity;)V

    return-void
.end method
