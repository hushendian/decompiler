.class Lcom/xingluo/platform/gameplus/a/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/xingluo/platform/gameplus/a/d;


# direct methods
.method constructor <init>(Lcom/xingluo/platform/gameplus/a/d;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/gameplus/a/f;->a:Lcom/xingluo/platform/gameplus/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    const-string v0, "GamePlusBusiness"

    const-string v1, "onServiceConnected"

    invoke-static {v0, v1}, Lcom/xingluo/platform/gameplus/utils/j;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/a/f;->a:Lcom/xingluo/platform/gameplus/a/d;

    invoke-static {p2}, Lcom/xingluo/platform/gameplus/service/c$a;->a(Landroid/os/IBinder;)Lcom/xingluo/platform/gameplus/service/c;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xingluo/platform/gameplus/a/d;->a(Lcom/xingluo/platform/gameplus/a/d;Lcom/xingluo/platform/gameplus/service/c;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4

    const-string v0, "GamePlusBusiness"

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Lcom/xingluo/platform/gameplus/utils/j;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/a/f;->a:Lcom/xingluo/platform/gameplus/a/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xingluo/platform/gameplus/a/d;->a(Lcom/xingluo/platform/gameplus/a/d;Lcom/xingluo/platform/gameplus/service/c;)V

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/a/f;->a:Lcom/xingluo/platform/gameplus/a/d;

    invoke-static {v0}, Lcom/xingluo/platform/gameplus/a/d;->b(Lcom/xingluo/platform/gameplus/a/d;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/a/f;->a:Lcom/xingluo/platform/gameplus/a/d;

    invoke-static {v0}, Lcom/xingluo/platform/gameplus/a/d;->b(Lcom/xingluo/platform/gameplus/a/d;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
