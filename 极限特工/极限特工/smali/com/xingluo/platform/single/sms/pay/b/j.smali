.class Lcom/xingluo/platform/single/sms/pay/b/j;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xingluo/platform/single/sms/pay/b/g;


# direct methods
.method constructor <init>(Lcom/xingluo/platform/single/sms/pay/b/g;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/sms/pay/b/j;->a:Lcom/xingluo/platform/single/sms/pay/b/g;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/j;->a:Lcom/xingluo/platform/single/sms/pay/b/g;

    invoke-static {v0}, Lcom/xingluo/platform/single/sms/pay/b/g;->h(Lcom/xingluo/platform/single/sms/pay/b/g;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/xingluo/platform/single/sms/pay/b/j;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
