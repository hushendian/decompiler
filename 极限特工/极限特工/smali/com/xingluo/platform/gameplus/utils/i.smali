.class public Lcom/xingluo/platform/gameplus/utils/i;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xingluo/platform/gameplus/utils/i$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "tim"

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field private static d:Landroid/location/LocationManager;

.field private static e:Landroid/location/LocationListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;I)D
    .locals 4

    const-wide/16 v1, 0x0

    sget-object v0, Lcom/xingluo/platform/gameplus/utils/i;->d:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    const-string v0, "location"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    sput-object v0, Lcom/xingluo/platform/gameplus/utils/i;->d:Landroid/location/LocationManager;

    :cond_0
    sget-object v0, Lcom/xingluo/platform/gameplus/utils/i;->d:Landroid/location/LocationManager;

    const-string v3, "network"

    invoke-virtual {v0, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/xingluo/platform/gameplus/utils/i;->d:Landroid/location/LocationManager;

    const-string v3, "network"

    invoke-virtual {v0, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    :goto_0
    const/4 v3, 0x1

    if-ne p1, v3, :cond_2

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    :goto_1
    return-wide v0

    :cond_1
    sget-object v0, Lcom/xingluo/platform/gameplus/utils/i;->d:Landroid/location/LocationManager;

    const-string v3, "gps"

    invoke-virtual {v0, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/xingluo/platform/gameplus/utils/i;->d:Landroid/location/LocationManager;

    const-string v3, "gps"

    invoke-virtual {v0, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    if-ne p1, v3, :cond_3

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    goto :goto_1

    :cond_3
    move-wide v0, v1

    goto :goto_1
.end method

.method public static a()V
    .locals 6

    sget-object v0, Lcom/xingluo/platform/gameplus/utils/i;->d:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/xingluo/platform/gameplus/a/c;->a()Lcom/xingluo/platform/gameplus/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/platform/gameplus/a/c;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    sput-object v0, Lcom/xingluo/platform/gameplus/utils/i;->d:Landroid/location/LocationManager;

    :cond_0
    new-instance v0, Lcom/xingluo/platform/gameplus/utils/i$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xingluo/platform/gameplus/utils/i$a;-><init>(Lcom/xingluo/platform/gameplus/utils/i$a;)V

    sput-object v0, Lcom/xingluo/platform/gameplus/utils/i;->e:Landroid/location/LocationListener;

    :try_start_0
    sget-object v0, Lcom/xingluo/platform/gameplus/utils/i;->d:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/xingluo/platform/gameplus/utils/i;->d:Landroid/location/LocationManager;

    const-string v1, "network"

    const-wide/16 v2, 0xbb8

    const/high16 v4, 0x3f800000    # 1.0f

    sget-object v5, Lcom/xingluo/platform/gameplus/utils/i;->e:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-object v0, Lcom/xingluo/platform/gameplus/utils/i;->d:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/xingluo/platform/gameplus/utils/i;->d:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0xbb8

    const/high16 v4, 0x3f800000    # 1.0f

    sget-object v5, Lcom/xingluo/platform/gameplus/utils/i;->e:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static b()V
    .locals 2

    sget-object v0, Lcom/xingluo/platform/gameplus/utils/i;->d:Landroid/location/LocationManager;

    sget-object v1, Lcom/xingluo/platform/gameplus/utils/i;->e:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    return-void
.end method

.method public static c()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/xingluo/platform/gameplus/a/c;->a()Lcom/xingluo/platform/gameplus/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/platform/gameplus/a/c;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, "location"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "location"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
