.class Lcom/unicom/dcLoader/Utils$3;
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

.field final synthetic val$mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/unicom/dcLoader/Utils;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/unicom/dcLoader/Utils$3;->this$0:Lcom/unicom/dcLoader/Utils;

    iput-object p2, p0, Lcom/unicom/dcLoader/Utils$3;->val$mContext:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/unicom/dcLoader/Utils$3;->this$0:Lcom/unicom/dcLoader/Utils;

    iget-object v1, p0, Lcom/unicom/dcLoader/Utils$3;->val$mContext:Landroid/content/Context;

    # invokes: Lcom/unicom/dcLoader/Utils;->init(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/unicom/dcLoader/Utils;->access$100(Lcom/unicom/dcLoader/Utils;Landroid/content/Context;)V

    return-void
.end method
