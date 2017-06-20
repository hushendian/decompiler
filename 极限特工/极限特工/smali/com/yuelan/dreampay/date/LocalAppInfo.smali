.class public Lcom/yuelan/dreampay/date/LocalAppInfo;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/graphics/drawable/Drawable;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yuelan/dreampay/date/LocalAppInfo;->a:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lcom/yuelan/dreampay/date/LocalAppInfo;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/yuelan/dreampay/date/LocalAppInfo;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/yuelan/dreampay/date/LocalAppInfo;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAppFilePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yuelan/dreampay/date/LocalAppInfo;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yuelan/dreampay/date/LocalAppInfo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getAppPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yuelan/dreampay/date/LocalAppInfo;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/yuelan/dreampay/date/LocalAppInfo;->a:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public setAppFilePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yuelan/dreampay/date/LocalAppInfo;->d:Ljava/lang/String;

    return-void
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yuelan/dreampay/date/LocalAppInfo;->b:Ljava/lang/String;

    return-void
.end method

.method public setAppPackageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yuelan/dreampay/date/LocalAppInfo;->c:Ljava/lang/String;

    return-void
.end method

.method public setIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/yuelan/dreampay/date/LocalAppInfo;->a:Landroid/graphics/drawable/Drawable;

    return-void
.end method
