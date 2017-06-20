.class public Lcom/xingluo/platform/tsz/afinal/c$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xingluo/platform/tsz/afinal/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Z

.field private e:Lcom/xingluo/platform/tsz/afinal/c$b;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xingluo/platform/tsz/afinal/c$a;->a:Landroid/content/Context;

    const-string v0, "gameplus.db"

    iput-object v0, p0, Lcom/xingluo/platform/tsz/afinal/c$a;->b:Ljava/lang/String;

    iput v1, p0, Lcom/xingluo/platform/tsz/afinal/c$a;->c:I

    iput-boolean v1, p0, Lcom/xingluo/platform/tsz/afinal/c$a;->d:Z

    return-void
.end method


# virtual methods
.method public a()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/c$a;->a:Landroid/content/Context;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/xingluo/platform/tsz/afinal/c$a;->c:I

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/tsz/afinal/c$a;->a:Landroid/content/Context;

    return-void
.end method

.method public a(Lcom/xingluo/platform/tsz/afinal/c$b;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/tsz/afinal/c$a;->e:Lcom/xingluo/platform/tsz/afinal/c$b;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/tsz/afinal/c$a;->b:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xingluo/platform/tsz/afinal/c$a;->d:Z

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/c$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/tsz/afinal/c$a;->f:Ljava/lang/String;

    return-void
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/xingluo/platform/tsz/afinal/c$a;->c:I

    return v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xingluo/platform/tsz/afinal/c$a;->d:Z

    return v0
.end method

.method public e()Lcom/xingluo/platform/tsz/afinal/c$b;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/c$a;->e:Lcom/xingluo/platform/tsz/afinal/c$b;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/c$a;->f:Ljava/lang/String;

    return-object v0
.end method
