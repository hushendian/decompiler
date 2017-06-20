.class Lcom/xingluo/platform/ad/suspend/XLSuspensionService$a;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xingluo/platform/ad/suspend/XLSuspensionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/xingluo/platform/ad/suspend/XLSuspensionService;


# direct methods
.method public constructor <init>(Lcom/xingluo/platform/ad/suspend/XLSuspensionService;)V
    .locals 1

    iput-object p1, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionService$a;->a:Lcom/xingluo/platform/ad/suspend/XLSuspensionService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/xingluo/platform/ad/suspend/XLSuspensionService;->access$0(Lcom/xingluo/platform/ad/suspend/XLSuspensionService;Z)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionService$a;->a:Lcom/xingluo/platform/ad/suspend/XLSuspensionService;

    # getter for: Lcom/xingluo/platform/ad/suspend/XLSuspensionService;->suspensionWindow:Lcom/xingluo/platform/ad/suspend/s;
    invoke-static {v0}, Lcom/xingluo/platform/ad/suspend/XLSuspensionService;->access$1(Lcom/xingluo/platform/ad/suspend/XLSuspensionService;)Lcom/xingluo/platform/ad/suspend/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/platform/ad/suspend/s;->b()V

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionService$a;->a:Lcom/xingluo/platform/ad/suspend/XLSuspensionService;

    # invokes: Lcom/xingluo/platform/ad/suspend/XLSuspensionService;->isHomeShow()Z
    invoke-static {v0}, Lcom/xingluo/platform/ad/suspend/XLSuspensionService;->access$2(Lcom/xingluo/platform/ad/suspend/XLSuspensionService;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionService$a;->a:Lcom/xingluo/platform/ad/suspend/XLSuspensionService;

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionService$a;->a:Lcom/xingluo/platform/ad/suspend/XLSuspensionService;

    # invokes: Lcom/xingluo/platform/ad/suspend/XLSuspensionService;->isAppOnForeground(Landroid/content/Context;)Z
    invoke-static {v0, v1}, Lcom/xingluo/platform/ad/suspend/XLSuspensionService;->access$3(Lcom/xingluo/platform/ad/suspend/XLSuspensionService;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionService$a;->a:Lcom/xingluo/platform/ad/suspend/XLSuspensionService;

    invoke-static {v0}, Lcom/xingluo/platform/ad/suspend/d;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionService$a;->a:Lcom/xingluo/platform/ad/suspend/XLSuspensionService;

    # getter for: Lcom/xingluo/platform/ad/suspend/XLSuspensionService;->suspensionWindow:Lcom/xingluo/platform/ad/suspend/s;
    invoke-static {v0}, Lcom/xingluo/platform/ad/suspend/XLSuspensionService;->access$1(Lcom/xingluo/platform/ad/suspend/XLSuspensionService;)Lcom/xingluo/platform/ad/suspend/s;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionService$a;->a:Lcom/xingluo/platform/ad/suspend/XLSuspensionService;

    # getter for: Lcom/xingluo/platform/ad/suspend/XLSuspensionService;->suspensionWindow:Lcom/xingluo/platform/ad/suspend/s;
    invoke-static {v0}, Lcom/xingluo/platform/ad/suspend/XLSuspensionService;->access$1(Lcom/xingluo/platform/ad/suspend/XLSuspensionService;)Lcom/xingluo/platform/ad/suspend/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/platform/ad/suspend/s;->c()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionService$a;->a:Lcom/xingluo/platform/ad/suspend/XLSuspensionService;

    # getter for: Lcom/xingluo/platform/ad/suspend/XLSuspensionService;->suspensionWindow:Lcom/xingluo/platform/ad/suspend/s;
    invoke-static {v0}, Lcom/xingluo/platform/ad/suspend/XLSuspensionService;->access$1(Lcom/xingluo/platform/ad/suspend/XLSuspensionService;)Lcom/xingluo/platform/ad/suspend/s;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionService$a;->a:Lcom/xingluo/platform/ad/suspend/XLSuspensionService;

    # getter for: Lcom/xingluo/platform/ad/suspend/XLSuspensionService;->suspensionWindow:Lcom/xingluo/platform/ad/suspend/s;
    invoke-static {v0}, Lcom/xingluo/platform/ad/suspend/XLSuspensionService;->access$1(Lcom/xingluo/platform/ad/suspend/XLSuspensionService;)Lcom/xingluo/platform/ad/suspend/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/platform/ad/suspend/s;->b()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionService$a;->a:Lcom/xingluo/platform/ad/suspend/XLSuspensionService;

    # getter for: Lcom/xingluo/platform/ad/suspend/XLSuspensionService;->suspensionWindow:Lcom/xingluo/platform/ad/suspend/s;
    invoke-static {v0}, Lcom/xingluo/platform/ad/suspend/XLSuspensionService;->access$1(Lcom/xingluo/platform/ad/suspend/XLSuspensionService;)Lcom/xingluo/platform/ad/suspend/s;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionService$a;->a:Lcom/xingluo/platform/ad/suspend/XLSuspensionService;

    # getter for: Lcom/xingluo/platform/ad/suspend/XLSuspensionService;->suspensionWindow:Lcom/xingluo/platform/ad/suspend/s;
    invoke-static {v0}, Lcom/xingluo/platform/ad/suspend/XLSuspensionService;->access$1(Lcom/xingluo/platform/ad/suspend/XLSuspensionService;)Lcom/xingluo/platform/ad/suspend/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/platform/ad/suspend/s;->c()V

    goto :goto_0
.end method
