.class public Lcom/xingluo/single/update/b/h$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xingluo/single/update/b/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/xingluo/single/update/b/h$a;->a:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/xingluo/single/update/b/h$a;->a:I

    iput-object p2, p0, Lcom/xingluo/single/update/b/h$a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/xingluo/single/update/b/h$a;->c:Ljava/lang/String;

    return-void
.end method
