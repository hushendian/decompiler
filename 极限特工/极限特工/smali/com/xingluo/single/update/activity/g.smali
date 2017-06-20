.class Lcom/xingluo/single/update/activity/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xingluo/single/update/activity/d;

.field private final synthetic b:Landroid/widget/TextView;

.field private final synthetic c:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Lcom/xingluo/single/update/activity/d;Landroid/widget/TextView;Ljava/lang/StringBuilder;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/single/update/activity/g;->a:Lcom/xingluo/single/update/activity/d;

    iput-object p2, p0, Lcom/xingluo/single/update/activity/g;->b:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/xingluo/single/update/activity/g;->c:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/xingluo/single/update/activity/g;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/xingluo/single/update/activity/g;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/xingluo/single/update/activity/g;->a:Lcom/xingluo/single/update/activity/d;

    invoke-static {v0}, Lcom/xingluo/single/update/activity/d;->a(Lcom/xingluo/single/update/activity/d;)Lcom/xingluo/single/update/activity/CheckUpdateAcitivty;

    move-result-object v0

    # getter for: Lcom/xingluo/single/update/activity/CheckUpdateAcitivty;->dialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/xingluo/single/update/activity/CheckUpdateAcitivty;->access$0(Lcom/xingluo/single/update/activity/CheckUpdateAcitivty;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/single/update/activity/g;->a:Lcom/xingluo/single/update/activity/d;

    invoke-static {v0}, Lcom/xingluo/single/update/activity/d;->a(Lcom/xingluo/single/update/activity/d;)Lcom/xingluo/single/update/activity/CheckUpdateAcitivty;

    move-result-object v0

    # getter for: Lcom/xingluo/single/update/activity/CheckUpdateAcitivty;->dialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/xingluo/single/update/activity/CheckUpdateAcitivty;->access$0(Lcom/xingluo/single/update/activity/CheckUpdateAcitivty;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lcom/xingluo/single/update/activity/g;->a:Lcom/xingluo/single/update/activity/d;

    invoke-static {v0}, Lcom/xingluo/single/update/activity/d;->a(Lcom/xingluo/single/update/activity/d;)Lcom/xingluo/single/update/activity/CheckUpdateAcitivty;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/single/update/activity/CheckUpdateAcitivty;->finish()V

    :cond_0
    return-void
.end method
