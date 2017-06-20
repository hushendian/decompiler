.class Lcom/xingluo/platform/tsz/afinal/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# instance fields
.field final synthetic a:Lcom/xingluo/platform/tsz/afinal/a;


# direct methods
.method constructor <init>(Lcom/xingluo/platform/tsz/afinal/a;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/tsz/afinal/b;->a:Lcom/xingluo/platform/tsz/afinal/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    return-object v0
.end method
