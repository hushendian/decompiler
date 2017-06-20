.class public Lcom/xingluo/single/update/receiver/DownloadResultReceiver;
.super Landroid/os/ResultReceiver;

# interfaces
.implements Lcom/xingluo/single/update/listener/b;


# instance fields
.field private a:Lcom/xingluo/single/update/listener/b;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/xingluo/single/update/listener/b;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/xingluo/single/update/receiver/DownloadResultReceiver;->a:Lcom/xingluo/single/update/listener/b;

    return-void
.end method


# virtual methods
.method public a(Lcom/xingluo/single/update/AppInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/xingluo/single/update/receiver/DownloadResultReceiver;->a:Lcom/xingluo/single/update/listener/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/single/update/receiver/DownloadResultReceiver;->a:Lcom/xingluo/single/update/listener/b;

    invoke-interface {v0, p1}, Lcom/xingluo/single/update/listener/b;->a(Lcom/xingluo/single/update/AppInfo;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/xingluo/single/update/AppInfo;JJ)V
    .locals 6

    iget-object v0, p0, Lcom/xingluo/single/update/receiver/DownloadResultReceiver;->a:Lcom/xingluo/single/update/listener/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/single/update/receiver/DownloadResultReceiver;->a:Lcom/xingluo/single/update/listener/b;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/xingluo/single/update/listener/b;->a(Lcom/xingluo/single/update/AppInfo;JJ)V

    :cond_0
    return-void
.end method

.method public a(Lcom/xingluo/single/update/AppInfo;ZLandroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/xingluo/single/update/receiver/DownloadResultReceiver;->a:Lcom/xingluo/single/update/listener/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/single/update/receiver/DownloadResultReceiver;->a:Lcom/xingluo/single/update/listener/b;

    invoke-interface {v0, p1, p2, p3}, Lcom/xingluo/single/update/listener/b;->a(Lcom/xingluo/single/update/AppInfo;ZLandroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 6

    const/4 v0, 0x1

    const-string v1, "appInfo"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/xingluo/single/update/AppInfo;

    const-string v2, "progress"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string v4, "max"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    if-nez p1, :cond_1

    invoke-virtual {p0, v1}, Lcom/xingluo/single/update/receiver/DownloadResultReceiver;->a(Lcom/xingluo/single/update/AppInfo;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ne p1, v0, :cond_2

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/xingluo/single/update/receiver/DownloadResultReceiver;->a(Lcom/xingluo/single/update/AppInfo;JJ)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    const-string v2, "error_code"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    :goto_1
    invoke-virtual {p0, v1, v0, p2}, Lcom/xingluo/single/update/receiver/DownloadResultReceiver;->a(Lcom/xingluo/single/update/AppInfo;ZLandroid/os/Bundle;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method
