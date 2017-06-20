.class Lcom/ms/ezqx/Game01$2;
.super Ljava/lang/Object;
.source "Game01.java"

# interfaces
.implements Lcom/yuelan/dreampay/listen/PayCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ms/ezqx/Game01;->egta(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$paramInt:I

.field private final synthetic val$paramString:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput p1, p0, Lcom/ms/ezqx/Game01$2;->val$paramInt:I

    iput-object p2, p0, Lcom/ms/ezqx/Game01$2;->val$paramString:Ljava/lang/String;

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public payEnd(I)V
    .locals 4
    .param p1, "payResult"    # I

    .prologue
    const/4 v3, 0x1

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "payResult"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yuelan/codelib/utils/LogUtil;->v(Ljava/lang/String;)V

    .line 108
    const/16 v1, 0x2328

    if-ne p1, v1, :cond_0

    .line 110
    sget-object v1, Lcom/ms/ezqx/Game01;->fishActivity:Landroid/app/Activity;

    const-string v2, "\u652f\u4ed8\u6210\u529f"

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 111
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 112
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 113
    .local v0, "msg":Landroid/os/Message;
    iget v1, p0, Lcom/ms/ezqx/Game01$2;->val$paramInt:I

    iput v1, v0, Landroid/os/Message;->what:I

    .line 114
    iget-object v1, p0, Lcom/ms/ezqx/Game01$2;->val$paramString:Ljava/lang/String;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 115
    const/4 v1, 0x2

    sput v1, Lcom/ms/ezqx/Game01;->num:I

    .line 116
    # getter for: Lcom/ms/ezqx/Game01;->mHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/ms/ezqx/Game01;->access$0()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 135
    :goto_0
    return-void

    .line 121
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    sget-object v1, Lcom/ms/ezqx/Game01;->fishActivity:Landroid/app/Activity;

    .line 122
    invoke-static {p1}, Lcom/yuelan/dreampay/date/Result;->getPayErrorLog(I)Ljava/lang/String;

    move-result-object v2

    .line 121
    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 123
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 124
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 125
    .restart local v0    # "msg":Landroid/os/Message;
    iget v1, p0, Lcom/ms/ezqx/Game01$2;->val$paramInt:I

    iput v1, v0, Landroid/os/Message;->what:I

    .line 126
    iget-object v1, p0, Lcom/ms/ezqx/Game01$2;->val$paramString:Ljava/lang/String;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 127
    const/4 v1, 0x3

    sput v1, Lcom/ms/ezqx/Game01;->num:I

    .line 128
    # getter for: Lcom/ms/ezqx/Game01;->mHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/ms/ezqx/Game01;->access$0()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public payStart()V
    .locals 0

    .prologue
    .line 144
    return-void
.end method
