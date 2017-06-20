.class Lcom/unicom/dcLoader/Utils$loaderTask;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unicom/dcLoader/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "loaderTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unicom/dcLoader/Utils;

.field private totaltimes:I


# direct methods
.method private constructor <init>(Lcom/unicom/dcLoader/Utils;)V
    .locals 1

    iput-object p1, p0, Lcom/unicom/dcLoader/Utils$loaderTask;->this$0:Lcom/unicom/dcLoader/Utils;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/unicom/dcLoader/Utils$loaderTask;->totaltimes:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/unicom/dcLoader/Utils;Lcom/unicom/dcLoader/Utils$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/unicom/dcLoader/Utils$loaderTask;-><init>(Lcom/unicom/dcLoader/Utils;)V

    return-void
.end method

.method private runsInner()V
    .locals 7

    const/4 v1, 0x0

    iget v0, p0, Lcom/unicom/dcLoader/Utils$loaderTask;->totaltimes:I

    add-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/unicom/dcLoader/Utils$loaderTask;->totaltimes:I

    iget v0, p0, Lcom/unicom/dcLoader/Utils$loaderTask;->totaltimes:I

    const/16 v2, 0x1388

    if-lt v0, v2, :cond_7

    iget-object v0, p0, Lcom/unicom/dcLoader/Utils$loaderTask;->this$0:Lcom/unicom/dcLoader/Utils;

    invoke-static {}, Lcom/unicom/dcLoader/DynProcessUtil;->getProcessIdList()[I

    move-result-object v2

    # setter for: Lcom/unicom/dcLoader/Utils;->afterPids:[I
    invoke-static {v0, v2}, Lcom/unicom/dcLoader/Utils;->access$302(Lcom/unicom/dcLoader/Utils;[I)[I

    iget-object v0, p0, Lcom/unicom/dcLoader/Utils$loaderTask;->this$0:Lcom/unicom/dcLoader/Utils;

    # getter for: Lcom/unicom/dcLoader/Utils;->afterPids:[I
    invoke-static {v0}, Lcom/unicom/dcLoader/Utils;->access$300(Lcom/unicom/dcLoader/Utils;)[I

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/unicom/dcLoader/Utils$loaderTask;->this$0:Lcom/unicom/dcLoader/Utils;

    # getter for: Lcom/unicom/dcLoader/Utils;->afterPids:[I
    invoke-static {v0}, Lcom/unicom/dcLoader/Utils;->access$300(Lcom/unicom/dcLoader/Utils;)[I

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/unicom/dcLoader/Utils$loaderTask;->this$0:Lcom/unicom/dcLoader/Utils;

    iget-object v2, p0, Lcom/unicom/dcLoader/Utils$loaderTask;->this$0:Lcom/unicom/dcLoader/Utils;

    # getter for: Lcom/unicom/dcLoader/Utils;->afterPids:[I
    invoke-static {v2}, Lcom/unicom/dcLoader/Utils;->access$300(Lcom/unicom/dcLoader/Utils;)[I

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    # setter for: Lcom/unicom/dcLoader/Utils;->difPids:[I
    invoke-static {v0, v2}, Lcom/unicom/dcLoader/Utils;->access$402(Lcom/unicom/dcLoader/Utils;[I)[I

    move v0, v1

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/unicom/dcLoader/Utils$loaderTask;->this$0:Lcom/unicom/dcLoader/Utils;

    # getter for: Lcom/unicom/dcLoader/Utils;->afterPids:[I
    invoke-static {v3}, Lcom/unicom/dcLoader/Utils;->access$300(Lcom/unicom/dcLoader/Utils;)[I

    move-result-object v3

    array-length v3, v3

    if-ge v0, v3, :cond_3

    const/4 v4, 0x1

    iget-object v3, p0, Lcom/unicom/dcLoader/Utils$loaderTask;->this$0:Lcom/unicom/dcLoader/Utils;

    # getter for: Lcom/unicom/dcLoader/Utils;->prePids:[I
    invoke-static {v3}, Lcom/unicom/dcLoader/Utils;->access$500(Lcom/unicom/dcLoader/Utils;)[I

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/unicom/dcLoader/Utils$loaderTask;->this$0:Lcom/unicom/dcLoader/Utils;

    # getter for: Lcom/unicom/dcLoader/Utils;->prePids:[I
    invoke-static {v3}, Lcom/unicom/dcLoader/Utils;->access$500(Lcom/unicom/dcLoader/Utils;)[I

    move-result-object v3

    array-length v3, v3

    if-nez v3, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_2
    iget-object v5, p0, Lcom/unicom/dcLoader/Utils$loaderTask;->this$0:Lcom/unicom/dcLoader/Utils;

    # getter for: Lcom/unicom/dcLoader/Utils;->prePids:[I
    invoke-static {v5}, Lcom/unicom/dcLoader/Utils;->access$500(Lcom/unicom/dcLoader/Utils;)[I

    move-result-object v5

    array-length v5, v5

    if-ge v3, v5, :cond_8

    iget-object v5, p0, Lcom/unicom/dcLoader/Utils$loaderTask;->this$0:Lcom/unicom/dcLoader/Utils;

    # getter for: Lcom/unicom/dcLoader/Utils;->afterPids:[I
    invoke-static {v5}, Lcom/unicom/dcLoader/Utils;->access$300(Lcom/unicom/dcLoader/Utils;)[I

    move-result-object v5

    aget v5, v5, v0

    iget-object v6, p0, Lcom/unicom/dcLoader/Utils$loaderTask;->this$0:Lcom/unicom/dcLoader/Utils;

    # getter for: Lcom/unicom/dcLoader/Utils;->prePids:[I
    invoke-static {v6}, Lcom/unicom/dcLoader/Utils;->access$500(Lcom/unicom/dcLoader/Utils;)[I

    move-result-object v6

    aget v6, v6, v3

    if-ne v5, v6, :cond_2

    move v3, v1

    :goto_3
    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/unicom/dcLoader/Utils$loaderTask;->this$0:Lcom/unicom/dcLoader/Utils;

    # getter for: Lcom/unicom/dcLoader/Utils;->difPids:[I
    invoke-static {v3}, Lcom/unicom/dcLoader/Utils;->access$400(Lcom/unicom/dcLoader/Utils;)[I

    move-result-object v4

    add-int/lit8 v3, v2, 0x1

    iget-object v5, p0, Lcom/unicom/dcLoader/Utils$loaderTask;->this$0:Lcom/unicom/dcLoader/Utils;

    # getter for: Lcom/unicom/dcLoader/Utils;->afterPids:[I
    invoke-static {v5}, Lcom/unicom/dcLoader/Utils;->access$300(Lcom/unicom/dcLoader/Utils;)[I

    move-result-object v5

    aget v5, v5, v0

    aput v5, v4, v2

    move v2, v3

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_4
    if-ge v1, v2, :cond_5

    iget-object v3, p0, Lcom/unicom/dcLoader/Utils$loaderTask;->this$0:Lcom/unicom/dcLoader/Utils;

    # getter for: Lcom/unicom/dcLoader/Utils;->difPids:[I
    invoke-static {v3}, Lcom/unicom/dcLoader/Utils;->access$400(Lcom/unicom/dcLoader/Utils;)[I

    move-result-object v3

    aget v3, v3, v1

    if-le v3, v0, :cond_4

    iget-object v0, p0, Lcom/unicom/dcLoader/Utils$loaderTask;->this$0:Lcom/unicom/dcLoader/Utils;

    # getter for: Lcom/unicom/dcLoader/Utils;->difPids:[I
    invoke-static {v0}, Lcom/unicom/dcLoader/Utils;->access$400(Lcom/unicom/dcLoader/Utils;)[I

    move-result-object v0

    aget v0, v0, v1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_5
    if-eqz v0, :cond_6

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "kill pid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unicom/dcLoader/Logger;->e(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_5
    invoke-virtual {p0}, Lcom/unicom/dcLoader/Utils$loaderTask;->cancel()Z

    iget-object v0, p0, Lcom/unicom/dcLoader/Utils$loaderTask;->this$0:Lcom/unicom/dcLoader/Utils;

    # getter for: Lcom/unicom/dcLoader/Utils;->loadertimes:I
    invoke-static {v0}, Lcom/unicom/dcLoader/Utils;->access$600(Lcom/unicom/dcLoader/Utils;)I

    move-result v0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loader "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/unicom/dcLoader/Utils$loaderTask;->this$0:Lcom/unicom/dcLoader/Utils;

    # getter for: Lcom/unicom/dcLoader/Utils;->loadertimes:I
    invoke-static {v1}, Lcom/unicom/dcLoader/Utils;->access$600(Lcom/unicom/dcLoader/Utils;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " times"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unicom/dcLoader/Logger;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unicom/dcLoader/Utils$loaderTask;->this$0:Lcom/unicom/dcLoader/Utils;

    iget-object v1, p0, Lcom/unicom/dcLoader/Utils$loaderTask;->this$0:Lcom/unicom/dcLoader/Utils;

    # getter for: Lcom/unicom/dcLoader/Utils;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/unicom/dcLoader/Utils;->access$200(Lcom/unicom/dcLoader/Utils;)Landroid/content/Context;

    move-result-object v1

    # invokes: Lcom/unicom/dcLoader/Utils;->createDCl(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/unicom/dcLoader/Utils;->access$000(Lcom/unicom/dcLoader/Utils;Landroid/content/Context;)V

    :cond_7
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    :cond_8
    move v3, v4

    goto/16 :goto_3
.end method


# virtual methods
.method public run()V
    .locals 1

    :try_start_0
    invoke-direct {p0}, Lcom/unicom/dcLoader/Utils$loaderTask;->runsInner()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "loadertask error"

    invoke-static {v0}, Lcom/unicom/dcLoader/Logger;->e(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/unicom/dcLoader/Utils$loaderTask;->cancel()Z

    goto :goto_0
.end method
