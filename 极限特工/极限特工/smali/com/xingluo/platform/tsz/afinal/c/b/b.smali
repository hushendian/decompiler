.class public Lcom/xingluo/platform/tsz/afinal/c/b/b;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xingluo/platform/tsz/afinal/c/b/b;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/xingluo/platform/tsz/afinal/c/b/b;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/c/b/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/tsz/afinal/c/b/b;->b:Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/tsz/afinal/c/b/b;->a:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/c/b/b;->b:Ljava/lang/Object;

    instance-of v0, v0, Ljava/util/Date;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/c/b/b;->b:Ljava/lang/Object;

    instance-of v0, v0, Ljava/sql/Date;

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/xingluo/platform/tsz/afinal/d/b;->a:Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/xingluo/platform/tsz/afinal/c/b/b;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/c/b/b;->b:Ljava/lang/Object;

    goto :goto_0
.end method
