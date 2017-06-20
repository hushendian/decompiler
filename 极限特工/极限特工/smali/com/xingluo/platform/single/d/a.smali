.class public Lcom/xingluo/platform/single/d/a;
.super Ljava/lang/Object;


# static fields
.field private static c:Lcom/xingluo/platform/single/d/a;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/xingluo/platform/single/callback/b;

.field private final d:Landroid/location/LocationListener;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/xingluo/platform/single/callback/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/xingluo/platform/single/d/b;

    invoke-direct {v0, p0}, Lcom/xingluo/platform/single/d/b;-><init>(Lcom/xingluo/platform/single/d/a;)V

    iput-object v0, p0, Lcom/xingluo/platform/single/d/a;->d:Landroid/location/LocationListener;

    iput-object p1, p0, Lcom/xingluo/platform/single/d/a;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/xingluo/platform/single/d/a;->b:Lcom/xingluo/platform/single/callback/b;

    invoke-virtual {p0}, Lcom/xingluo/platform/single/d/a;->a()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/xingluo/platform/single/callback/b;)Lcom/xingluo/platform/single/d/a;
    .locals 1

    sget-object v0, Lcom/xingluo/platform/single/d/a;->c:Lcom/xingluo/platform/single/d/a;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    new-instance v0, Lcom/xingluo/platform/single/d/a;

    invoke-direct {v0, p0, p1}, Lcom/xingluo/platform/single/d/a;-><init>(Landroid/content/Context;Lcom/xingluo/platform/single/callback/b;)V

    sput-object v0, Lcom/xingluo/platform/single/d/a;->c:Lcom/xingluo/platform/single/d/a;

    :cond_0
    sget-object v0, Lcom/xingluo/platform/single/d/a;->c:Lcom/xingluo/platform/single/d/a;

    return-object v0
.end method

.method private a(Landroid/location/Location;)V
    .locals 8

    const-wide/16 v3, 0x0

    const-string v6, ""

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v5, "#.###"

    invoke-direct {v0, v5}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    :goto_0
    const/4 v7, 0x0

    new-instance v0, Landroid/location/Geocoder;

    iget-object v5, p0, Lcom/xingluo/platform/single/d/a;->a:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x1

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v3, v0

    :goto_1
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    move v1, v0

    move-object v0, v6

    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    move-object v6, v0

    :cond_0
    iget-object v0, p0, Lcom/xingluo/platform/single/d/a;->b:Lcom/xingluo/platform/single/callback/b;

    invoke-interface {v0, v6}, Lcom/xingluo/platform/single/callback/b;->a(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v7

    goto :goto_1

    :cond_1
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    invoke-virtual {v0}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto :goto_2

    :cond_2
    move-wide v1, v3

    goto :goto_0
.end method

.method static synthetic a(Lcom/xingluo/platform/single/d/a;Landroid/location/Location;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xingluo/platform/single/d/a;->a(Landroid/location/Location;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v0, "location"

    iget-object v1, p0, Lcom/xingluo/platform/single/d/a;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    const-string v1, "network"

    new-instance v2, Landroid/location/Criteria;

    invoke-direct {v2}, Landroid/location/Criteria;-><init>()V

    invoke-virtual {v2, v3}, Landroid/location/Criteria;->setAccuracy(I)V

    invoke-virtual {v2, v4}, Landroid/location/Criteria;->setAltitudeRequired(Z)V

    invoke-virtual {v2, v4}, Landroid/location/Criteria;->setBearingRequired(Z)V

    invoke-virtual {v2, v3}, Landroid/location/Criteria;->setCostAllowed(Z)V

    invoke-virtual {v2, v3}, Landroid/location/Criteria;->setPowerRequirement(I)V

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/xingluo/platform/single/d/a;->a(Landroid/location/Location;)V

    const-wide/16 v2, 0x7d0

    const/high16 v4, 0x41200000    # 10.0f

    iget-object v5, p0, Lcom/xingluo/platform/single/d/a;->d:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    return-void
.end method
