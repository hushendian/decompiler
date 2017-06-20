.class Lcom/xingluo/platform/single/third/activity/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/xingluo/platform/single/third/activity/ThirdPayActivity;


# direct methods
.method constructor <init>(Lcom/xingluo/platform/single/third/activity/ThirdPayActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/third/activity/a;->a:Lcom/xingluo/platform/single/third/activity/ThirdPayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/third/activity/a;->a:Lcom/xingluo/platform/single/third/activity/ThirdPayActivity;

    invoke-virtual {v0}, Lcom/xingluo/platform/single/third/activity/ThirdPayActivity;->backDialog()V

    return-void
.end method
