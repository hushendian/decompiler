.class public Lcom/xingluo/platform/single/order/Order;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xingluo/platform/single/callback/a;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Runnable;


# static fields
.field public static a:Ljava/lang/String; = null

.field public static b:Ljava/lang/String; = null

.field public static c:Ljava/lang/String; = null

.field public static d:Ljava/lang/String; = null

.field public static e:Ljava/lang/String; = null

.field public static f:Ljava/lang/String; = null

.field public static g:Ljava/lang/String; = null

.field public static h:Ljava/lang/String; = null

.field public static i:J = 0x0L

.field public static j:Z = false

.field public static k:Z = false

.field public static l:Z = false

.field public static m:Landroid/content/Context; = null

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public abstractOrder:Lcom/xingluo/platform/single/order/a;

.field private merchant_id:Ljava/lang/String;

.field private modify_time:J

.field private order_time:Ljava/lang/String;

.field private query_latest:J

.field private timeout:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const-string v0, ""

    sput-object v0, Lcom/xingluo/platform/single/order/Order;->g:Ljava/lang/String;

    sput-boolean v1, Lcom/xingluo/platform/single/order/Order;->j:Z

    sput-boolean v1, Lcom/xingluo/platform/single/order/Order;->k:Z

    sput-boolean v1, Lcom/xingluo/platform/single/order/Order;->l:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/xingluo/platform/single/order/Order;->m:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xingluo/platform/single/order/Order;->timeout:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xingluo/platform/single/order/Order;->timeout:Z

    sput-object p1, Lcom/xingluo/platform/single/order/Order;->m:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/xingluo/platform/single/order/Order;->timeout:Z

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xingluo/platform/single/order/Order;->a:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xingluo/platform/single/order/Order;->d:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xingluo/platform/single/order/Order;->e:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xingluo/platform/single/order/Order;->f:Ljava/lang/String;

    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xingluo/platform/single/order/Order;->h:Ljava/lang/String;

    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xingluo/platform/single/order/Order;->c:Ljava/lang/String;

    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xingluo/platform/single/order/Order;->b:Ljava/lang/String;

    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/single/order/Order;->order_time:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/xingluo/platform/single/order/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xingluo/platform/single/order/Order;->timeout:Z

    iput-object p1, p0, Lcom/xingluo/platform/single/order/Order;->abstractOrder:Lcom/xingluo/platform/single/order/a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xingluo/platform/single/order/Order;->timeout:Z

    return-void
.end method


# virtual methods
.method public a(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/order/Order;->abstractOrder:Lcom/xingluo/platform/single/order/a;

    invoke-virtual {v0, p1, p2}, Lcom/xingluo/platform/single/order/a;->a(IZ)V

    return-void
.end method

.method public a(J)V
    .locals 0

    sput-wide p1, Lcom/xingluo/platform/single/order/Order;->i:J

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    sput-object p1, Lcom/xingluo/platform/single/order/Order;->a:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xingluo/platform/single/order/Order;->timeout:Z

    return-void
.end method

.method public a(ZZ)V
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/order/Order;->abstractOrder:Lcom/xingluo/platform/single/order/a;

    invoke-virtual {v0, p1, p2}, Lcom/xingluo/platform/single/order/a;->a(ZZ)V

    return-void
.end method

.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/order/Order;->abstractOrder:Lcom/xingluo/platform/single/order/a;

    invoke-virtual {v0}, Lcom/xingluo/platform/single/order/a;->c()Z

    const/4 v0, 0x0

    return v0
.end method

.method public b(J)V
    .locals 0

    iput-wide p1, p0, Lcom/xingluo/platform/single/order/Order;->modify_time:J

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    sput-object p1, Lcom/xingluo/platform/single/order/Order;->b:Ljava/lang/String;

    return-void
.end method

.method public b(Z)V
    .locals 0

    sput-boolean p1, Lcom/xingluo/platform/single/order/Order;->j:Z

    return-void
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/order/Order;->abstractOrder:Lcom/xingluo/platform/single/order/a;

    invoke-virtual {v0}, Lcom/xingluo/platform/single/order/a;->b()Z

    const/4 v0, 0x0

    return v0
.end method

.method public c()Landroid/content/ContentValues;
    .locals 3

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "channel"

    sget-object v2, Lcom/xingluo/platform/single/order/Order;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "orderid"

    sget-object v2, Lcom/xingluo/platform/single/order/Order;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "itemid"

    sget-object v2, Lcom/xingluo/platform/single/order/Order;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "itemname"

    sget-object v2, Lcom/xingluo/platform/single/order/Order;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "status"

    sget-object v2, Lcom/xingluo/platform/single/order/Order;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "desc"

    sget-object v2, Lcom/xingluo/platform/single/order/Order;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "price"

    sget-object v2, Lcom/xingluo/platform/single/order/Order;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "order_time"

    invoke-static {}, Lcom/xingluo/platform/single/util/y;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "create_time"

    invoke-static {}, Lcom/xingluo/platform/single/util/y;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public c(J)V
    .locals 0

    iput-wide p1, p0, Lcom/xingluo/platform/single/order/Order;->query_latest:J

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/order/Order;->order_time:Ljava/lang/String;

    return-void
.end method

.method public c(Z)V
    .locals 0

    sput-boolean p1, Lcom/xingluo/platform/single/order/Order;->k:Z

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/xingluo/platform/single/order/Order;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    sput-object p1, Lcom/xingluo/platform/single/order/Order;->c:Ljava/lang/String;

    return-void
.end method

.method public d(Z)V
    .locals 0

    sput-boolean p1, Lcom/xingluo/platform/single/order/Order;->l:Z

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/xingluo/platform/single/order/Order;->b:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    sput-object p1, Lcom/xingluo/platform/single/order/Order;->d:Ljava/lang/String;

    return-void
.end method

.method public e(Z)V
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/order/Order;->abstractOrder:Lcom/xingluo/platform/single/order/a;

    invoke-virtual {v0, p1}, Lcom/xingluo/platform/single/order/a;->a(Z)V

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/order/Order;->order_time:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    sput-object p1, Lcom/xingluo/platform/single/order/Order;->e:Ljava/lang/String;

    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/xingluo/platform/single/order/Order;->c:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    sput-object p1, Lcom/xingluo/platform/single/order/Order;->f:Ljava/lang/String;

    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/xingluo/platform/single/order/Order;->d:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    sput-object p1, Lcom/xingluo/platform/single/order/Order;->g:Ljava/lang/String;

    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/xingluo/platform/single/order/Order;->e:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    sput-object p1, Lcom/xingluo/platform/single/order/Order;->h:Ljava/lang/String;

    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/xingluo/platform/single/order/Order;->f:Ljava/lang/String;

    return-object v0
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/order/Order;->merchant_id:Ljava/lang/String;

    return-void
.end method

.method public k()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/xingluo/platform/single/order/Order;->g:Ljava/lang/String;

    return-object v0
.end method

.method public k(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/order/Order;->abstractOrder:Lcom/xingluo/platform/single/order/a;

    invoke-virtual {v0, p1}, Lcom/xingluo/platform/single/order/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public l()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/xingluo/platform/single/order/Order;->h:Ljava/lang/String;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/order/Order;->merchant_id:Ljava/lang/String;

    return-object v0
.end method

.method public n()J
    .locals 2

    sget-wide v0, Lcom/xingluo/platform/single/order/Order;->i:J

    return-wide v0
.end method

.method public o()J
    .locals 2

    iget-wide v0, p0, Lcom/xingluo/platform/single/order/Order;->modify_time:J

    return-wide v0
.end method

.method public p()J
    .locals 2

    iget-wide v0, p0, Lcom/xingluo/platform/single/order/Order;->query_latest:J

    return-wide v0
.end method

.method public q()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xingluo/platform/single/order/Order;->timeout:Z

    return v0
.end method

.method public r()Z
    .locals 1

    sget-boolean v0, Lcom/xingluo/platform/single/order/Order;->j:Z

    return v0
.end method

.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/order/Order;->abstractOrder:Lcom/xingluo/platform/single/order/a;

    invoke-virtual {v0}, Lcom/xingluo/platform/single/order/a;->a()V

    return-void
.end method

.method public s()Z
    .locals 1

    sget-boolean v0, Lcom/xingluo/platform/single/order/Order;->k:Z

    return v0
.end method

.method public t()Z
    .locals 1

    sget-boolean v0, Lcom/xingluo/platform/single/order/Order;->l:Z

    return v0
.end method

.method public u()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/xingluo/platform/single/order/Order;->m:Landroid/content/Context;

    return-object v0
.end method
