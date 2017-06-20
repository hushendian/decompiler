.class public Lcom/xingluo/platform/single/util/t;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String; = "xl_remember_login_state"

.field public static final b:Ljava/lang/String; = "xl_bind_phone_verifycode"

.field public static final c:Ljava/lang/String; = "xl_bind_phone_verifycode_last_accesstime"

.field public static final d:Ljava/lang/String; = "xl_bind_phone_verifycode_phone_number"

.field public static final e:Ljava/lang/String; = "xl_modify_phone_verifycode_for_pre_phone"

.field public static final f:Ljava/lang/String; = "xl_modify_phone_verifycode_for_pre_phone_phone_number"

.field public static final g:Ljava/lang/String; = "xl_modify_phone_verifycode_for_pre_phone_last_accesstime"

.field public static final h:Ljava/lang/String; = "xl_modify_phone_verifycode_for_new_phone"

.field public static final i:Ljava/lang/String; = "xl_modify_phone_verifycode_for_new_phone_last_accesstime"

.field public static final j:Ljava/lang/String; = "xl_modify_phone_verifycode_for_new_phone_phone_number"

.field public static final k:Ljava/lang/String; = "xl_extra_gost_info"

.field public static final l:Ljava/lang/String; = "xl_extra_gostswitch"

.field public static final m:Ljava/lang/String; = "xl_extra_gost_deleteswitch"

.field public static final n:Ljava/lang/String; = "xl_extra_gost_isLegal"

.field public static final o:Ljava/lang/String; = "xl_extra_gost_netSwitch"

.field public static final p:Ljava/lang/String; = "xl_extra_gost_isPaying"

.field public static final q:Ljava/lang/String; = "xl_extra_gostMoney"

.field public static final r:Ljava/lang/String; = "xl_extra_gostTargets"

.field public static final s:Ljava/lang/String; = "xl_extra_gost_targetsVerifys"

.field public static final t:Ljava/lang/String; = "xl_extra_hd_billing_data"

.field private static u:Lcom/xingluo/platform/single/util/t; = null

.field private static final x:Ljava/lang/String; = "com_xl_shared_preferences"


# instance fields
.field private final v:I

.field private final w:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/xingluo/platform/single/util/t;->v:I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/single/util/t;->w:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static a()Lcom/xingluo/platform/single/util/t;
    .locals 1

    sget-object v0, Lcom/xingluo/platform/single/util/t;->u:Lcom/xingluo/platform/single/util/t;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/xingluo/platform/single/util/t;
    .locals 2

    sget-object v0, Lcom/xingluo/platform/single/util/t;->u:Lcom/xingluo/platform/single/util/t;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xingluo/platform/single/util/t;

    const-string v1, "com_xl_shared_preferences"

    invoke-direct {v0, p0, v1}, Lcom/xingluo/platform/single/util/t;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/xingluo/platform/single/util/t;->u:Lcom/xingluo/platform/single/util/t;

    :cond_0
    sget-object v0, Lcom/xingluo/platform/single/util/t;->u:Lcom/xingluo/platform/single/util/t;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/xingluo/platform/single/net/a/c;)V
    .locals 4

    invoke-static {p0}, Lcom/xingluo/platform/single/util/t;->a(Landroid/content/Context;)Lcom/xingluo/platform/single/util/t;

    move-result-object v0

    const-string v1, "xl_extra_gost_info"

    invoke-virtual {p1}, Lcom/xingluo/platform/single/net/a/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xingluo/platform/single/util/t;->a(Ljava/lang/String;Ljava/lang/String;)Z

    invoke-static {p0}, Lcom/xingluo/platform/single/util/t;->a(Landroid/content/Context;)Lcom/xingluo/platform/single/util/t;

    move-result-object v0

    const-string v1, "xl_extra_gostswitch"

    invoke-virtual {p1}, Lcom/xingluo/platform/single/net/a/c;->b()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/xingluo/platform/single/util/t;->a(Ljava/lang/String;Z)Z

    invoke-static {p0}, Lcom/xingluo/platform/single/util/t;->a(Landroid/content/Context;)Lcom/xingluo/platform/single/util/t;

    move-result-object v0

    const-string v1, "xl_extra_gost_deleteswitch"

    invoke-virtual {p1}, Lcom/xingluo/platform/single/net/a/c;->c()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/xingluo/platform/single/util/t;->a(Ljava/lang/String;Z)Z

    invoke-static {p0}, Lcom/xingluo/platform/single/util/t;->a(Landroid/content/Context;)Lcom/xingluo/platform/single/util/t;

    move-result-object v0

    const-string v1, "xl_extra_gost_netSwitch"

    invoke-virtual {p1}, Lcom/xingluo/platform/single/net/a/c;->e()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/xingluo/platform/single/util/t;->a(Ljava/lang/String;Z)Z

    invoke-static {p0}, Lcom/xingluo/platform/single/util/t;->a(Landroid/content/Context;)Lcom/xingluo/platform/single/util/t;

    move-result-object v0

    const-string v1, "xl_extra_gostMoney"

    invoke-virtual {p1}, Lcom/xingluo/platform/single/net/a/c;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xingluo/platform/single/util/t;->a(Ljava/lang/String;Ljava/lang/String;)Z

    invoke-static {p0}, Lcom/xingluo/platform/single/util/t;->a(Landroid/content/Context;)Lcom/xingluo/platform/single/util/t;

    move-result-object v0

    const-string v1, "xl_extra_gostTargets"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/xingluo/platform/single/net/a/c;->h()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xingluo/platform/single/util/t;->a(Ljava/lang/String;Ljava/lang/String;)Z

    invoke-static {p0}, Lcom/xingluo/platform/single/util/t;->a(Landroid/content/Context;)Lcom/xingluo/platform/single/util/t;

    move-result-object v0

    const-string v1, "xl_extra_gost_targetsVerifys"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/xingluo/platform/single/net/a/c;->i()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xingluo/platform/single/util/t;->a(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/xingluo/platform/single/util/t;->a(Landroid/content/Context;)Lcom/xingluo/platform/single/util/t;

    move-result-object v0

    const-string v1, "xl_extra_gostswitch"

    invoke-virtual {v0, v1, v2}, Lcom/xingluo/platform/single/util/t;->a(Ljava/lang/String;Z)Z

    invoke-static {p0}, Lcom/xingluo/platform/single/util/t;->a(Landroid/content/Context;)Lcom/xingluo/platform/single/util/t;

    move-result-object v0

    const-string v1, "xl_extra_gost_deleteswitch"

    invoke-virtual {v0, v1, v2}, Lcom/xingluo/platform/single/util/t;->a(Ljava/lang/String;Z)Z

    invoke-static {p0}, Lcom/xingluo/platform/single/util/t;->a(Landroid/content/Context;)Lcom/xingluo/platform/single/util/t;

    move-result-object v0

    const-string v1, "xl_extra_gost_netSwitch"

    invoke-virtual {v0, v1, v2}, Lcom/xingluo/platform/single/util/t;->a(Ljava/lang/String;Z)Z

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;I)I
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/util/t;->w:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public a(Lcom/xingluo/platform/single/util/x;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/xingluo/platform/single/util/t;->w:Landroid/content/SharedPreferences;

    invoke-virtual {p1}, Lcom/xingluo/platform/single/util/x;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xingluo/platform/single/util/x;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/xingluo/platform/single/util/y;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/xingluo/platform/single/util/t;->w:Landroid/content/SharedPreferences;

    const-string v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/xingluo/platform/single/util/x;Lcom/xingluo/platform/single/util/z;)Z
    .locals 3

    iget-object v0, p0, Lcom/xingluo/platform/single/util/t;->w:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {p2}, Lcom/xingluo/platform/single/util/z;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/xingluo/platform/single/util/z;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Lcom/xingluo/platform/single/util/y;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/xingluo/platform/single/util/x;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Integer;)Z
    .locals 2

    iget-object v0, p0, Lcom/xingluo/platform/single/util/t;->w:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Long;)Z
    .locals 3

    iget-object v0, p0, Lcom/xingluo/platform/single/util/t;->w:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/util/t;->w:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Z)Z
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/util/t;->w:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/Long;
    .locals 3

    iget-object v0, p0, Lcom/xingluo/platform/single/util/t;->w:Landroid/content/SharedPreferences;

    const-wide/16 v1, 0x0

    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/util/t;->w:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;I)Z
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/util/t;->w:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method

.method public c(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2

    iget-object v0, p0, Lcom/xingluo/platform/single/util/t;->w:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/xingluo/platform/single/util/t;->w:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public e(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/util/t;->w:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method

.method public f(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/xingluo/platform/single/util/t;->w:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method

.method public g(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/xingluo/platform/single/util/t;->w:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method
