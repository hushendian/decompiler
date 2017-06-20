.class final Lcom/yuelan/dreampay/service/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yuelan/dreampay/service/ShieldSmsService;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/yuelan/dreampay/service/ShieldSmsService;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/yuelan/dreampay/service/e;->a:Lcom/yuelan/dreampay/service/ShieldSmsService;

    iput-object p2, p0, Lcom/yuelan/dreampay/service/e;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/yuelan/dreampay/service/e;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/yuelan/dreampay/service/e;->d:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const/16 v4, 0x14

    const/16 v3, 0xa

    const/4 v2, 0x1

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/yuelan/dreampay/service/e;->b:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    if-ne v1, v2, :cond_1

    iget-object v0, p0, Lcom/yuelan/dreampay/service/e;->c:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/yuelan/codelib/cmread/CmreadUtil;->payChap(Ljava/lang/String;I)Lcom/yuelan/codelib/cmread/CmreadPayInfo;

    move-result-object v0

    :cond_0
    :goto_1
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    if-eqz v0, :cond_3

    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->what:I

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    :goto_2
    iget-object v0, p0, Lcom/yuelan/dreampay/service/e;->d:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move v1, v2

    goto :goto_0

    :cond_1
    if-ne v1, v3, :cond_2

    iget-object v0, p0, Lcom/yuelan/dreampay/service/e;->c:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/yuelan/codelib/cmread/CmreadUtil;->payChap(Ljava/lang/String;I)Lcom/yuelan/codelib/cmread/CmreadPayInfo;

    move-result-object v0

    goto :goto_1

    :cond_2
    if-ne v1, v4, :cond_0

    iget-object v0, p0, Lcom/yuelan/dreampay/service/e;->c:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/yuelan/codelib/cmread/CmreadUtil;->payChap(Ljava/lang/String;I)Lcom/yuelan/codelib/cmread/CmreadPayInfo;

    move-result-object v0

    goto :goto_1

    :cond_3
    const/4 v0, -0x1

    iput v0, v1, Landroid/os/Message;->what:I

    goto :goto_2
.end method
