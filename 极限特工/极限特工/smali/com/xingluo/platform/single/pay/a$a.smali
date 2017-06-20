.class Lcom/xingluo/platform/single/pay/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xingluo/platform/single/pay/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static a:Lcom/xingluo/platform/single/pay/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xingluo/platform/single/pay/a;

    invoke-direct {v0}, Lcom/xingluo/platform/single/pay/a;-><init>()V

    sput-object v0, Lcom/xingluo/platform/single/pay/a$a;->a:Lcom/xingluo/platform/single/pay/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
