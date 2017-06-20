.class Lcom/xingluo/platform/single/d/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field final synthetic a:Lcom/xingluo/platform/single/d/a;


# direct methods
.method constructor <init>(Lcom/xingluo/platform/single/d/a;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/d/b;->a:Lcom/xingluo/platform/single/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/d/b;->a:Lcom/xingluo/platform/single/d/a;

    invoke-static {v0, p1}, Lcom/xingluo/platform/single/d/a;->a(Lcom/xingluo/platform/single/d/a;Landroid/location/Location;)V

    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/xingluo/platform/single/d/b;->a:Lcom/xingluo/platform/single/d/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xingluo/platform/single/d/a;->a(Lcom/xingluo/platform/single/d/a;Landroid/location/Location;)V

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
