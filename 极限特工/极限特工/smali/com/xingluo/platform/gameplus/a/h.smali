.class Lcom/xingluo/platform/gameplus/a/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xingluo/platform/gameplus/a/d;


# direct methods
.method constructor <init>(Lcom/xingluo/platform/gameplus/a/d;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/gameplus/a/h;->a:Lcom/xingluo/platform/gameplus/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/xingluo/platform/gameplus/a/h;)Lcom/xingluo/platform/gameplus/a/d;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/a/h;->a:Lcom/xingluo/platform/gameplus/a/d;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Landroid/os/Looper;->prepare()V

    invoke-static {}, Lcom/xingluo/platform/gameplus/a/c;->a()Lcom/xingluo/platform/gameplus/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/platform/gameplus/a/c;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xingluo/platform/gameplus/utils/b;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/xingluo/platform/gameplus/utils/b;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {}, Lcom/xingluo/platform/gameplus/net/a;->a()Lcom/xingluo/platform/gameplus/net/a;

    move-result-object v2

    new-instance v3, Lcom/xingluo/platform/gameplus/a/i;

    invoke-direct {v3, p0, v1}, Lcom/xingluo/platform/gameplus/a/i;-><init>(Lcom/xingluo/platform/gameplus/a/h;Ljava/util/List;)V

    invoke-virtual {v2, v0, v3}, Lcom/xingluo/platform/gameplus/net/a;->a(Ljava/util/List;Lcom/xingluo/platform/gameplus/net/a$a;)I

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
