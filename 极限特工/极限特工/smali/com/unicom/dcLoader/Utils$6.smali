.class Lcom/unicom/dcLoader/Utils$6;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unicom/dcLoader/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unicom/dcLoader/Utils;


# direct methods
.method constructor <init>(Lcom/unicom/dcLoader/Utils;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/unicom/dcLoader/Utils$6;->this$0:Lcom/unicom/dcLoader/Utils;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    :try_start_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v1, ""

    const-string v0, ""

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v0, 0x0

    const-string v1, "["

    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v0, "[paycode="

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string v3, "[paycode="

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v0, v3

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget v2, p1, Landroid/os/Message;->arg1:I

    const v3, 0x186b5

    if-ne v2, v3, :cond_1

    iget-object v0, p0, Lcom/unicom/dcLoader/Utils$6;->this$0:Lcom/unicom/dcLoader/Utils;

    const/4 v1, -0x1

    # setter for: Lcom/unicom/dcLoader/Utils;->isInit:I
    invoke-static {v0, v1}, Lcom/unicom/dcLoader/Utils;->access$802(Lcom/unicom/dcLoader/Utils;I)I

    iget-object v0, p0, Lcom/unicom/dcLoader/Utils$6;->this$0:Lcom/unicom/dcLoader/Utils;

    iget-object v1, p0, Lcom/unicom/dcLoader/Utils$6;->this$0:Lcom/unicom/dcLoader/Utils;

    # getter for: Lcom/unicom/dcLoader/Utils;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/unicom/dcLoader/Utils;->access$200(Lcom/unicom/dcLoader/Utils;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/unicom/dcLoader/Utils;->initSDK(Landroid/content/Context;I)V

    :goto_0
    return-void

    :cond_1
    # getter for: Lcom/unicom/dcLoader/Utils;->listener:Lcom/unicom/dcLoader/Utils$UnipayPayResultListener;
    invoke-static {}, Lcom/unicom/dcLoader/Utils;->access$900()Lcom/unicom/dcLoader/Utils$UnipayPayResultListener;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v0, v3, v1}, Lcom/unicom/dcLoader/Utils$UnipayPayResultListener;->PayResult(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
