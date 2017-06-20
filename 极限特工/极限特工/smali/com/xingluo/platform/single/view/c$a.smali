.class Lcom/xingluo/platform/single/view/c$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xingluo/platform/single/view/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-static {}, Lcom/xingluo/platform/single/view/c;->d()Lcom/xingluo/platform/single/view/c;

    move-result-object v0

    invoke-static {v0}, Lcom/xingluo/platform/single/view/c;->a(Lcom/xingluo/platform/single/view/c;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xingluo/platform/single/view/c;->d()Lcom/xingluo/platform/single/view/c;

    move-result-object v0

    invoke-static {v0}, Lcom/xingluo/platform/single/view/c;->a(Lcom/xingluo/platform/single/view/c;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method
