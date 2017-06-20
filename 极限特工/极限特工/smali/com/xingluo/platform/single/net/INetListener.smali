.class public interface abstract Lcom/xingluo/platform/single/net/INetListener;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xingluo/platform/single/net/INetListener$DownLoadStatus;
    }
.end annotation


# virtual methods
.method public abstract onDownLoadProgressCurSize(JJI)V
.end method

.method public abstract onDownLoadStatus(Lcom/xingluo/platform/single/net/INetListener$DownLoadStatus;I)V
.end method

.method public abstract onNetResponse(ILcom/xingluo/platform/single/net/a/a;I)V
.end method

.method public abstract onNetResponseErr(IIILjava/lang/String;)V
.end method
