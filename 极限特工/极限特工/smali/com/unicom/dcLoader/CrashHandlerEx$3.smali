.class Lcom/unicom/dcLoader/CrashHandlerEx$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unicom/dcLoader/CrashHandlerEx;->uploadCrashLog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unicom/dcLoader/CrashHandlerEx;


# direct methods
.method constructor <init>(Lcom/unicom/dcLoader/CrashHandlerEx;)V
    .locals 0

    iput-object p1, p0, Lcom/unicom/dcLoader/CrashHandlerEx$3;->this$0:Lcom/unicom/dcLoader/CrashHandlerEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 3

    const-string v0, "unipaysdk-crash-"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unicom/dcLoader/CrashHandlerEx$3;->this$0:Lcom/unicom/dcLoader/CrashHandlerEx;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Find local crash file:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/unicom/dcLoader/CrashHandlerEx;->log_e(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/unicom/dcLoader/CrashHandlerEx;->access$100(Lcom/unicom/dcLoader/CrashHandlerEx;Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
