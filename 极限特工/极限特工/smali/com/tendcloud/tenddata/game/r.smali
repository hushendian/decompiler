.class public Lcom/tendcloud/tenddata/game/r;
.super Ljava/lang/Object;
.source "td"


# static fields
.field private static final A:Ljava/lang/String; = "TDtd_role_id"

.field private static final B:Ljava/lang/String; = "TDpref.accountid.key"

.field private static final C:Ljava/lang/String; = "TDpref.accountgame.key"

.field private static final D:Ljava/lang/String; = "TDpref.missionid.key"

.field private static final E:Ljava/lang/String; = "TDpref.activesessionid.key"

.field private static final F:Ljava/lang/String; = "TDpref.game.session.start.key"

.field private static final G:Ljava/lang/String; = "TDpref.game.session.end.key"

.field private static final H:Ljava/lang/String; = "TDpref.game.session.startsystem.key"

.field public static final a:Ljava/lang/String; = "TDpref.profile.key"

.field public static final b:Ljava/lang/String; = "TDpref.session.key"

.field public static final c:Ljava/lang/String; = "TDpref.lastactivity.key"

.field public static final d:Ljava/lang/String; = "TDpref.start.key"

.field public static final e:Ljava/lang/String; = "TDpref.init.key"

.field public static final f:Ljava/lang/String; = "TDpref.actstart.key"

.field public static final g:Ljava/lang/String; = "TDpref.end.key"

.field public static final h:Ljava/lang/String; = "TDpref.ip"

.field public static final i:Ljava/lang/String; = "TD_CHANNEL_ID"

.field public static final j:Ljava/lang/String; = "TDappcontext_push"

.field public static final k:Ljava/lang/String; = "TDpref.tokensync.key"

.field public static final l:Ljava/lang/String; = "TDpref.push.msgid.key"

.field public static final m:Ljava/lang/String; = "TDpref.running.app.key"

.field public static final n:Ljava/lang/String; = "TDpref_longtime"

.field public static final o:Ljava/lang/String; = "TDpref_shorttime"

.field public static final p:Ljava/lang/String; = "TDaes_key"

.field public static final q:Ljava/lang/String; = "TDpref_game"

.field public static final r:Ljava/lang/String; = "TD_push_pref_file"

.field static final s:Ljava/lang/String; = "TDisAppQuiting"

.field public static final t:Ljava/lang/String; = "TDpref.last.sdk.check"

.field public static final u:Ljava/lang/String; = "TDadditionalVersionName"

.field public static final v:Ljava/lang/String; = "TDadditionalVersionCode"

.field public static final w:J = 0x364L

.field public static final x:J = 0x0L

.field private static final y:Ljava/lang/String; = "TDtime_set_collect_net"

.field private static final z:Ljava/lang/String; = "TDdeep_link_url"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 70
    sget-object v1, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 76
    :goto_0
    return-object v0

    .line 73
    :cond_0
    :try_start_0
    sget-object v1, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    const-string v2, "TDpref_longtime"

    const-string v3, "TDaes_key"

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/tendcloud/tenddata/game/ah;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 75
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static a(Lcom/tendcloud/tenddata/game/a;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 93
    sget-object v1, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    if-eqz v1, :cond_0

    if-nez p0, :cond_1

    .line 99
    :cond_0
    :goto_0
    return-object v0

    .line 96
    :cond_1
    :try_start_0
    sget-object v1, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TDpref_longtime"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/tendcloud/tenddata/game/a;->c()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TDpref.session.key"

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/tendcloud/tenddata/game/ah;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 98
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 409
    sget-object v1, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 414
    :goto_0
    return-object v0

    .line 412
    :cond_0
    :try_start_0
    sget-object v1, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    const-string v2, "TDpref_shorttime"

    const/4 v3, 0x0

    invoke-static {v1, v2, p0, v3}, Lcom/tendcloud/tenddata/game/ah;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 413
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static a(JLcom/tendcloud/tenddata/game/a;)V
    .locals 3

    .prologue
    .line 177
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TDpref_longtime"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/tendcloud/tenddata/game/a;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TDpref.start.key"

    invoke-static {v0, v1, v2, p0, p1}, Lcom/tendcloud/tenddata/game/ah;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 183
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V
    .locals 3

    .prologue
    .line 104
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TDpref_longtime"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/game/a;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TDpref.session.key"

    invoke-static {v0, v1, v2, p0}, Lcom/tendcloud/tenddata/game/ah;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 109
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 400
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 407
    :goto_0
    return-void

    .line 403
    :cond_0
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    const-string v1, "TDpref_shorttime"

    invoke-static {v0, v1, p0, p1}, Lcom/tendcloud/tenddata/game/ah;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 404
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static b(Lcom/tendcloud/tenddata/game/a;)J
    .locals 7

    .prologue
    const-wide/16 v0, 0x0

    .line 165
    sget-object v2, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    if-eqz v2, :cond_0

    if-nez p0, :cond_1

    .line 172
    :cond_0
    :goto_0
    return-wide v0

    .line 169
    :cond_1
    :try_start_0
    sget-object v2, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TDpref_longtime"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/tendcloud/tenddata/game/a;->c()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TDpref.start.key"

    const-wide/16 v5, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Lcom/tendcloud/tenddata/game/ah;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    .line 171
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 427
    sget-object v1, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 432
    :goto_0
    return-object v0

    .line 430
    :cond_0
    :try_start_0
    sget-object v1, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    const-string v2, "TDpref_shorttime"

    const/4 v3, 0x0

    invoke-static {v1, v2, p0, v3}, Lcom/tendcloud/tenddata/game/ah;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 431
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static b()V
    .locals 3

    .prologue
    .line 115
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 125
    :goto_0
    return-void

    .line 119
    :cond_0
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    const-string v1, "TD_CHANNEL_ID"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 121
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "location_called"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 122
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static b(JLcom/tendcloud/tenddata/game/a;)V
    .locals 3

    .prologue
    .line 246
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    .line 254
    :cond_0
    :goto_0
    return-void

    .line 250
    :cond_1
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TDpref_shorttime"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/tendcloud/tenddata/game/a;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TDpref.end.key"

    invoke-static {v0, v1, v2, p0, p1}, Lcom/tendcloud/tenddata/game/ah;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 251
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V
    .locals 3

    .prologue
    .line 291
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 299
    :cond_0
    :goto_0
    return-void

    .line 295
    :cond_1
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TDpref_longtime"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/game/a;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TDisAppQuiting"

    invoke-static {v0, v1, v2, p0}, Lcom/tendcloud/tenddata/game/ah;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 296
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 418
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 425
    :goto_0
    return-void

    .line 421
    :cond_0
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    const-string v1, "TDpref_shorttime"

    invoke-static {v0, v1, p0, p1}, Lcom/tendcloud/tenddata/game/ah;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 422
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static c(Lcom/tendcloud/tenddata/game/a;)J
    .locals 7

    .prologue
    const-wide/16 v0, 0x0

    .line 234
    sget-object v2, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    if-eqz v2, :cond_0

    if-nez p0, :cond_1

    .line 241
    :cond_0
    :goto_0
    return-wide v0

    .line 238
    :cond_1
    :try_start_0
    sget-object v2, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TDpref_shorttime"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/tendcloud/tenddata/game/a;->c()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TDpref.end.key"

    const-wide/16 v5, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Lcom/tendcloud/tenddata/game/ah;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    .line 240
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 528
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 529
    const-string v0, ""

    .line 533
    :goto_0
    return-object v0

    .line 531
    :cond_0
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    const-string v1, "TDpref_game"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "TDpref.accountgame.key"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/tendcloud/tenddata/game/ah;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 532
    :catch_0
    move-exception v0

    .line 533
    const-string v0, ""

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 539
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 546
    :goto_0
    return-void

    .line 542
    :cond_0
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    const-string v1, "TDpref_game"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "TDpref.accountgame.key"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, p1}, Lcom/tendcloud/tenddata/game/ah;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 543
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static c()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 128
    sget-object v1, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 136
    :goto_0
    return v0

    .line 132
    :cond_0
    :try_start_0
    sget-object v1, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    const-string v2, "TD_CHANNEL_ID"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 134
    const-string v2, "location_called"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 135
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static d()Ljava/lang/String;
    .locals 4

    .prologue
    .line 153
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 154
    const-string v0, ""

    .line 160
    :goto_0
    return-object v0

    .line 157
    :cond_0
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    const-string v1, "TDpref_shorttime"

    const-string v2, "TDpref.lastactivity.key"

    const-string v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/tendcloud/tenddata/game/ah;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 159
    :catch_0
    move-exception v0

    .line 160
    const-string v0, ""

    goto :goto_0
.end method

.method public static d(Lcom/tendcloud/tenddata/game/a;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 302
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    if-eqz v0, :cond_0

    if-nez p0, :cond_1

    .line 303
    :cond_0
    const-string v0, "-1"

    .line 308
    :goto_0
    return-object v0

    .line 306
    :cond_1
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TDpref_longtime"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tendcloud/tenddata/game/a;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TDisAppQuiting"

    const-string v3, "-1"

    invoke-static {v0, v1, v2, v3}, Lcom/tendcloud/tenddata/game/ah;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 307
    :catch_0
    move-exception v0

    .line 308
    const-string v0, "-1"

    goto :goto_0
.end method

.method public static e()J
    .locals 7

    .prologue
    const-wide/16 v0, 0x0

    .line 199
    sget-object v2, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    if-nez v2, :cond_0

    .line 206
    :goto_0
    return-wide v0

    .line 203
    :cond_0
    :try_start_0
    sget-object v2, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    const-string v3, "TDpref_longtime"

    const-string v4, "TDpref.init.key"

    const-wide/16 v5, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Lcom/tendcloud/tenddata/game/ah;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    .line 205
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static f()J
    .locals 7

    .prologue
    const-wide/16 v0, 0x0

    .line 222
    sget-object v2, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    if-nez v2, :cond_0

    .line 229
    :goto_0
    return-wide v0

    .line 226
    :cond_0
    :try_start_0
    sget-object v2, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    const-string v3, "TDpref_shorttime"

    const-string v4, "TDpref.actstart.key"

    const-wide/16 v5, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Lcom/tendcloud/tenddata/game/ah;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    .line 228
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static g()J
    .locals 7

    .prologue
    const-wide/16 v0, 0x0

    .line 273
    sget-object v2, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    if-nez v2, :cond_0

    .line 279
    :goto_0
    return-wide v0

    .line 277
    :cond_0
    :try_start_0
    sget-object v2, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    const-string v3, "TDpref_longtime"

    const-string v4, "TDpref.running.app.key"

    const-wide/16 v5, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Lcom/tendcloud/tenddata/game/ah;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    .line 278
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static h()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 334
    sget-object v1, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 340
    :goto_0
    return-object v0

    .line 338
    :cond_0
    :try_start_0
    sget-object v1, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    const-string v2, "TDpref_longtime"

    const-string v3, "TDadditionalVersionName"

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/tendcloud/tenddata/game/ah;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 339
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static i()J
    .locals 7

    .prologue
    const-wide/16 v0, -0x1

    .line 356
    sget-object v2, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    if-nez v2, :cond_0

    .line 362
    :goto_0
    return-wide v0

    .line 360
    :cond_0
    :try_start_0
    sget-object v2, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    const-string v3, "TDpref_longtime"

    const-string v4, "TDadditionalVersionCode"

    const-wide/16 v5, -0x1

    invoke-static {v2, v3, v4, v5, v6}, Lcom/tendcloud/tenddata/game/ah;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    .line 361
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static j()I
    .locals 4

    .prologue
    .line 371
    :try_start_0
    invoke-static {}, Lcom/tendcloud/tenddata/game/r;->i()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 372
    invoke-static {}, Lcom/tendcloud/tenddata/game/r;->i()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 378
    :goto_0
    return v0

    .line 374
    :cond_0
    invoke-static {}, Lcom/tendcloud/tenddata/game/p;->a()Lcom/tendcloud/tenddata/game/p;

    move-result-object v0

    sget-object v1, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/tendcloud/tenddata/game/p;->b(Landroid/content/Context;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 375
    :catch_0
    move-exception v0

    .line 378
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static k()Ljava/lang/String;
    .locals 2

    .prologue
    .line 384
    :try_start_0
    invoke-static {}, Lcom/tendcloud/tenddata/game/r;->h()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 385
    invoke-static {}, Lcom/tendcloud/tenddata/game/r;->h()Ljava/lang/String;

    move-result-object v0

    .line 391
    :goto_0
    return-object v0

    .line 387
    :cond_0
    invoke-static {}, Lcom/tendcloud/tenddata/game/p;->a()Lcom/tendcloud/tenddata/game/p;

    move-result-object v0

    sget-object v1, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/tendcloud/tenddata/game/p;->c(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 388
    :catch_0
    move-exception v0

    .line 391
    const-string v0, "unknown"

    goto :goto_0
.end method

.method public static l()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 446
    sget-object v1, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 451
    :goto_0
    return-object v0

    .line 449
    :cond_0
    :try_start_0
    sget-object v1, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    const-string v2, "TDpref_shorttime"

    const-string v3, "TDtd_role_id"

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/tendcloud/tenddata/game/ah;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 450
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static m()J
    .locals 7

    .prologue
    const-wide/16 v0, 0x0

    .line 456
    sget-object v2, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    if-nez v2, :cond_0

    .line 462
    :goto_0
    return-wide v0

    .line 460
    :cond_0
    :try_start_0
    sget-object v2, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    const-string v3, "TDpref_shorttime"

    const-string v4, "TDtime_set_collect_net"

    const-wide/16 v5, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Lcom/tendcloud/tenddata/game/ah;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    .line 461
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static n()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 476
    sget-object v1, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 481
    :goto_0
    return-object v0

    .line 479
    :cond_0
    :try_start_0
    sget-object v1, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    const-string v2, "TDpref_shorttime"

    const-string v3, "TDdeep_link_url"

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/tendcloud/tenddata/game/ah;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 480
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static o()Ljava/lang/String;
    .locals 4

    .prologue
    .line 507
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 508
    const-string v0, ""

    .line 512
    :goto_0
    return-object v0

    .line 510
    :cond_0
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    const-string v1, "TDpref_game"

    const-string v2, "TDpref.accountid.key"

    const-string v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/tendcloud/tenddata/game/ah;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 511
    :catch_0
    move-exception v0

    .line 512
    const-string v0, ""

    goto :goto_0
.end method

.method public static p()Ljava/lang/String;
    .locals 4

    .prologue
    .line 558
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 559
    const-string v0, ""

    .line 563
    :goto_0
    return-object v0

    .line 561
    :cond_0
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    const-string v1, "TDpref_game"

    const-string v2, "TDpref.missionid.key"

    const-string v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/tendcloud/tenddata/game/ah;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 562
    :catch_0
    move-exception v0

    .line 563
    const-string v0, ""

    goto :goto_0
.end method

.method public static q()V
    .locals 5

    .prologue
    .line 568
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 575
    :goto_0
    return-void

    .line 571
    :cond_0
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    const-string v1, "TDpref_game"

    const-string v2, "TDpref.game.session.startsystem.key"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/tendcloud/tenddata/game/ah;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 572
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static r()Ljava/lang/String;
    .locals 4

    .prologue
    .line 588
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 589
    const-string v0, ""

    .line 593
    :goto_0
    return-object v0

    .line 591
    :cond_0
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    const-string v1, "TD_push_pref_file"

    const-string v2, "TDappcontext_push"

    const-string v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/tendcloud/tenddata/game/ah;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 592
    :catch_0
    move-exception v0

    .line 593
    const-string v0, ""

    goto :goto_0
.end method

.method public static s()J
    .locals 7

    .prologue
    const-wide/16 v0, 0x0

    .line 608
    sget-object v2, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    if-nez v2, :cond_0

    .line 613
    :goto_0
    return-wide v0

    .line 611
    :cond_0
    :try_start_0
    sget-object v2, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    const-string v3, "TD_push_pref_file"

    const-string v4, "TDpref.tokensync.key"

    const-wide/16 v5, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Lcom/tendcloud/tenddata/game/ah;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    .line 612
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static setAESKey(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 81
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 90
    :goto_0
    return-void

    .line 85
    :cond_0
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    const-string v1, "TDpref_longtime"

    const-string v2, "TDaes_key"

    invoke-static {v0, v1, v2, p0}, Lcom/tendcloud/tenddata/game/ah;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 87
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static setAccountId(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 517
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 525
    :goto_0
    return-void

    .line 520
    :cond_0
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    const-string v1, "TDpref_game"

    const-string v2, "TDpref.accountid.key"

    invoke-static {v0, v1, v2, p0}, Lcom/tendcloud/tenddata/game/ah;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 521
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static setActivityStartTime(J)V
    .locals 3

    .prologue
    .line 211
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 220
    :goto_0
    return-void

    .line 215
    :cond_0
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    const-string v1, "TDpref_shorttime"

    const-string v2, "TDpref.actstart.key"

    invoke-static {v0, v1, v2, p0, p1}, Lcom/tendcloud/tenddata/game/ah;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 217
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static setAdditionalVersionCode(J)V
    .locals 3

    .prologue
    .line 345
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 353
    :goto_0
    return-void

    .line 349
    :cond_0
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    const-string v1, "TDpref_longtime"

    const-string v2, "TDadditionalVersionCode"

    invoke-static {v0, v1, v2, p0, p1}, Lcom/tendcloud/tenddata/game/ah;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 350
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static setAdditionalVersionName(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 323
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 331
    :goto_0
    return-void

    .line 327
    :cond_0
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    const-string v1, "TDpref_longtime"

    const-string v2, "TDadditionalVersionName"

    invoke-static {v0, v1, v2, p0}, Lcom/tendcloud/tenddata/game/ah;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 328
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static setCollectNetInfoTime(J)V
    .locals 3

    .prologue
    .line 466
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 473
    :goto_0
    return-void

    .line 469
    :cond_0
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    const-string v1, "TDpref_shorttime"

    const-string v2, "TDtime_set_collect_net"

    invoke-static {v0, v1, v2, p0, p1}, Lcom/tendcloud/tenddata/game/ah;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 470
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static setCollectRunningTime(J)V
    .locals 3

    .prologue
    .line 266
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    const-string v1, "TDpref_longtime"

    const-string v2, "TDpref.running.app.key"

    invoke-static {v0, v1, v2, p0, p1}, Lcom/tendcloud/tenddata/game/ah;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    :goto_0
    return-void

    .line 268
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static setDeepLink(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 486
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 493
    :goto_0
    return-void

    .line 489
    :cond_0
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    const-string v1, "TDpref_shorttime"

    const-string v2, "TDdeep_link_url"

    invoke-static {v0, v1, v2, p0}, Lcom/tendcloud/tenddata/game/ah;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 490
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static setInitTime(J)V
    .locals 3

    .prologue
    .line 189
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 196
    :goto_0
    return-void

    .line 192
    :cond_0
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    const-string v1, "TDpref_longtime"

    const-string v2, "TDpref.init.key"

    invoke-static {v0, v1, v2, p0, p1}, Lcom/tendcloud/tenddata/game/ah;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 193
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static setLastActivity(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 141
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 150
    :goto_0
    return-void

    .line 145
    :cond_0
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    const-string v1, "TDpref_shorttime"

    const-string v2, "TDpref.lastactivity.key"

    invoke-static {v0, v1, v2, p0}, Lcom/tendcloud/tenddata/game/ah;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 147
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static setLastRoleName(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 436
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 443
    :goto_0
    return-void

    .line 439
    :cond_0
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    const-string v1, "TDpref_shorttime"

    const-string v2, "TDtd_role_id"

    invoke-static {v0, v1, v2, p0}, Lcom/tendcloud/tenddata/game/ah;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 440
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static setMissionId(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 549
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 556
    :goto_0
    return-void

    .line 552
    :cond_0
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    const-string v1, "TDpref_game"

    const-string v2, "TDpref.missionid.key"

    invoke-static {v0, v1, v2, p0}, Lcom/tendcloud/tenddata/game/ah;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 553
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static setPostProfile(Z)V
    .locals 5

    .prologue
    .line 258
    :try_start_0
    sget-object v2, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    const-string v3, "TDpref_longtime"

    const-string v4, "TDpref.profile.key"

    if-eqz p0, :cond_0

    const-wide/16 v0, 0x1

    :goto_0
    invoke-static {v2, v3, v4, v0, v1}, Lcom/tendcloud/tenddata/game/ah;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    :goto_1
    return-void

    .line 258
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 260
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public static setPushAppContext(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 578
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 585
    :goto_0
    return-void

    .line 581
    :cond_0
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    const-string v1, "TD_push_pref_file"

    const-string v2, "TDappcontext_push"

    invoke-static {v0, v1, v2, p0}, Lcom/tendcloud/tenddata/game/ah;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 582
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static setPushLastMsgId(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 618
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 625
    :goto_0
    return-void

    .line 621
    :cond_0
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    const-string v1, "TD_push_pref_file"

    const-string v2, "TDpref.push.msgid.key"

    invoke-static {v0, v1, v2, p0}, Lcom/tendcloud/tenddata/game/ah;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 622
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static setPushSyncTokenLastTime(J)V
    .locals 3

    .prologue
    .line 598
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 605
    :goto_0
    return-void

    .line 601
    :cond_0
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    const-string v1, "TD_push_pref_file"

    const-string v2, "TDpref.tokensync.key"

    invoke-static {v0, v1, v2, p0, p1}, Lcom/tendcloud/tenddata/game/ah;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 602
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static t()Ljava/lang/String;
    .locals 4

    .prologue
    .line 628
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 629
    const-string v0, ""

    .line 633
    :goto_0
    return-object v0

    .line 631
    :cond_0
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    const-string v1, "TD_push_pref_file"

    const-string v2, "TDpref.push.msgid.key"

    const-string v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/tendcloud/tenddata/game/ah;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 632
    :catch_0
    move-exception v0

    .line 633
    const-string v0, ""

    goto :goto_0
.end method
