.class Lcom/unicom/dcLoader/Utils$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unicom/dcLoader/Utils;->initSDK(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unicom/dcLoader/Utils;


# direct methods
.method constructor <init>(Lcom/unicom/dcLoader/Utils;)V
    .locals 0

    iput-object p1, p0, Lcom/unicom/dcLoader/Utils$4;->this$0:Lcom/unicom/dcLoader/Utils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/unicom/dcLoader/Utils$4;->this$0:Lcom/unicom/dcLoader/Utils;

    # getter for: Lcom/unicom/dcLoader/Utils;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/unicom/dcLoader/Utils;->access$200(Lcom/unicom/dcLoader/Utils;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "sdk\u521d\u59cb\u5316\u5931\u8d25"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
