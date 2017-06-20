.class public Lcom/xingluo/platform/tsz/afinal/c/b/c;
.super Lcom/xingluo/platform/tsz/afinal/c/b/e;


# instance fields
.field private a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/xingluo/platform/tsz/afinal/c/b/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/c/b/c;->a:Ljava/lang/Class;

    return-object v0
.end method

.method public a(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/xingluo/platform/tsz/afinal/c/b/c;->a:Ljava/lang/Class;

    return-void
.end method
