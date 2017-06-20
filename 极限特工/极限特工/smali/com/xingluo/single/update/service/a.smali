.class abstract Lcom/xingluo/single/update/service/a;
.super Landroid/app/IntentService;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected abstract onAbstractHandleIntent(Landroid/content/Intent;)V
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/xingluo/single/update/service/a;->onAbstractHandleIntent(Landroid/content/Intent;)V

    return-void
.end method
