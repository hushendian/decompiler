.class public Lcom/xingluo/platform/tsz/afinal/b/a/g$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xingluo/platform/tsz/afinal/b/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:[B

.field public b:I

.field public c:I


# direct methods
.method private constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p1, [B

    iput-object v0, p0, Lcom/xingluo/platform/tsz/afinal/b/a/g$a;->a:[B

    return-void
.end method

.method synthetic constructor <init>(ILcom/xingluo/platform/tsz/afinal/b/a/g$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xingluo/platform/tsz/afinal/b/a/g$a;-><init>(I)V

    return-void
.end method
