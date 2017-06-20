.class Lcom/unicom/dcLoader/CrashHandlerEx$2;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unicom/dcLoader/CrashHandlerEx;->sendLoacalCrashLogToServer(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unicom/dcLoader/CrashHandlerEx;

.field final synthetic val$content:Ljava/lang/String;

.field final synthetic val$filename:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/unicom/dcLoader/CrashHandlerEx;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unicom/dcLoader/CrashHandlerEx$2;->this$0:Lcom/unicom/dcLoader/CrashHandlerEx;

    iput-object p2, p0, Lcom/unicom/dcLoader/CrashHandlerEx$2;->val$content:Ljava/lang/String;

    iput-object p3, p0, Lcom/unicom/dcLoader/CrashHandlerEx$2;->val$filename:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/unicom/dcLoader/CrashHandlerEx$2;->this$0:Lcom/unicom/dcLoader/CrashHandlerEx;

    const-string v1, "http://unilog.wostore.cn:8061/logserver/unipay/unipaycash"

    iget-object v2, p0, Lcom/unicom/dcLoader/CrashHandlerEx$2;->val$content:Ljava/lang/String;

    # invokes: Lcom/unicom/dcLoader/CrashHandlerEx;->updateNewLog(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, v1, v2}, Lcom/unicom/dcLoader/CrashHandlerEx;->access$000(Lcom/unicom/dcLoader/CrashHandlerEx;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SUCCESS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unicom/dcLoader/CrashHandlerEx$2;->this$0:Lcom/unicom/dcLoader/CrashHandlerEx;

    iget-object v1, p0, Lcom/unicom/dcLoader/CrashHandlerEx$2;->val$filename:Ljava/lang/String;

    # invokes: Lcom/unicom/dcLoader/CrashHandlerEx;->deleteCrashFile(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/unicom/dcLoader/CrashHandlerEx;->access$300(Lcom/unicom/dcLoader/CrashHandlerEx;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
