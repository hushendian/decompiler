.class Lcom/xingluo/platform/single/util/j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xingluo/platform/single/util/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xingluo/platform/single/util/j$a;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/xingluo/platform/single/util/j;
    .locals 1

    sget-object v0, Lcom/xingluo/platform/single/util/j$a;->a:Lcom/xingluo/platform/single/util/j;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    return v0
.end method
