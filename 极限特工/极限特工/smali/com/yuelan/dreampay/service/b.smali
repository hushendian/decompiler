.class final Lcom/yuelan/dreampay/service/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/yuelan/dreampay/service/ShieldSmsService;


# direct methods
.method constructor <init>(Lcom/yuelan/dreampay/service/ShieldSmsService;)V
    .locals 0

    iput-object p1, p0, Lcom/yuelan/dreampay/service/b;->a:Lcom/yuelan/dreampay/service/ShieldSmsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Lcom/yuelan/dreampay/service/b;->a:Lcom/yuelan/dreampay/service/ShieldSmsService;

    invoke-static {p2}, Lcom/yuelan/dreampay/service/IMyService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/yuelan/dreampay/service/IMyService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yuelan/dreampay/service/ShieldSmsService;->a(Lcom/yuelan/dreampay/service/ShieldSmsService;Lcom/yuelan/dreampay/service/IMyService;)V

    :try_start_0
    iget-object v0, p0, Lcom/yuelan/dreampay/service/b;->a:Lcom/yuelan/dreampay/service/ShieldSmsService;

    invoke-static {v0}, Lcom/yuelan/dreampay/service/ShieldSmsService;->a(Lcom/yuelan/dreampay/service/ShieldSmsService;)Lcom/yuelan/dreampay/service/IMyService;

    move-result-object v0

    invoke-interface {v0}, Lcom/yuelan/dreampay/service/IMyService;->startService()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
