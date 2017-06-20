.class public final Lcom/tendcloud/tenddata/TDGAAccount;
.super Ljava/lang/Object;
.source "td"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tendcloud/tenddata/TDGAAccount$a;,
        Lcom/tendcloud/tenddata/TDGAAccount$Gender;,
        Lcom/tendcloud/tenddata/TDGAAccount$AccountType;
    }
.end annotation


# static fields
.field public static a:Lcom/tendcloud/tenddata/TDGAAccount; = null

.field private static final l:Ljava/lang/String; = "accountId"

.field private static final m:Ljava/lang/String; = "userLevel"

.field private static final n:Ljava/lang/String; = "gender"

.field private static final o:Ljava/lang/String; = "accountName"

.field private static final p:Ljava/lang/String; = "age"

.field private static final q:Ljava/lang/String; = "accountType"

.field private static final r:Ljava/lang/String; = "account_file"

.field private static final s:Ljava/lang/String; = "levelup_duration"

.field private static final t:Ljava/lang/String; = "game_duration"

.field private static final u:Ljava/lang/String; = "mission_duration"

.field private static final v:I


# instance fields
.field b:Ljava/lang/String;

.field c:Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

.field d:Ljava/lang/String;

.field e:I

.field f:Lcom/tendcloud/tenddata/TDGAAccount$Gender;

.field g:I

.field h:Ljava/lang/String;

.field public i:J

.field public j:Ljava/util/concurrent/atomic/AtomicLong;

.field k:J


# direct methods
.method protected constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const-string v0, ""

    iput-object v0, p0, Lcom/tendcloud/tenddata/TDGAAccount;->b:Ljava/lang/String;

    .line 91
    sget-object v0, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;->ANONYMOUS:Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    iput-object v0, p0, Lcom/tendcloud/tenddata/TDGAAccount;->c:Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    .line 93
    const-string v0, ""

    iput-object v0, p0, Lcom/tendcloud/tenddata/TDGAAccount;->d:Ljava/lang/String;

    .line 95
    iput v1, p0, Lcom/tendcloud/tenddata/TDGAAccount;->e:I

    .line 97
    sget-object v0, Lcom/tendcloud/tenddata/TDGAAccount$Gender;->UNKNOW:Lcom/tendcloud/tenddata/TDGAAccount$Gender;

    iput-object v0, p0, Lcom/tendcloud/tenddata/TDGAAccount;->f:Lcom/tendcloud/tenddata/TDGAAccount$Gender;

    .line 99
    iput v1, p0, Lcom/tendcloud/tenddata/TDGAAccount;->g:I

    .line 101
    const-string v0, ""

    iput-object v0, p0, Lcom/tendcloud/tenddata/TDGAAccount;->h:Ljava/lang/String;

    .line 103
    iput-wide v2, p0, Lcom/tendcloud/tenddata/TDGAAccount;->i:J

    .line 105
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/tendcloud/tenddata/TDGAAccount;->j:Ljava/util/concurrent/atomic/AtomicLong;

    .line 107
    iput-wide v2, p0, Lcom/tendcloud/tenddata/TDGAAccount;->k:J

    .line 224
    return-void
.end method

.method static final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/tendcloud/tenddata/TDGAAccount;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 171
    invoke-static {p0, p1, p2}, Lcom/tendcloud/tenddata/TDGAAccount;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 172
    new-instance v1, Lcom/tendcloud/tenddata/TDGAAccount;

    invoke-direct {v1}, Lcom/tendcloud/tenddata/TDGAAccount;-><init>()V

    .line 173
    iput-object p1, v1, Lcom/tendcloud/tenddata/TDGAAccount;->b:Ljava/lang/String;

    .line 174
    iput-object p2, v1, Lcom/tendcloud/tenddata/TDGAAccount;->h:Ljava/lang/String;

    .line 175
    if-eqz v0, :cond_1

    .line 176
    const-string v2, "accountType"

    sget-object v3, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;->ANONYMOUS:Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    .line 177
    invoke-virtual {v3}, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;->name()Ljava/lang/String;

    move-result-object v3

    .line 176
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;->valueOf(Ljava/lang/String;)Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    move-result-object v2

    iput-object v2, v1, Lcom/tendcloud/tenddata/TDGAAccount;->c:Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    .line 178
    const-string v2, "accountName"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tendcloud/tenddata/TDGAAccount;->d:Ljava/lang/String;

    .line 179
    const-string v2, "userLevel"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/tendcloud/tenddata/TDGAAccount;->e:I

    .line 180
    const-string v2, "age"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/tendcloud/tenddata/TDGAAccount;->g:I

    .line 181
    const-string v2, "gender"

    sget-object v3, Lcom/tendcloud/tenddata/TDGAAccount$Gender;->UNKNOW:Lcom/tendcloud/tenddata/TDGAAccount$Gender;

    .line 182
    invoke-virtual {v3}, Lcom/tendcloud/tenddata/TDGAAccount$Gender;->name()Ljava/lang/String;

    move-result-object v3

    .line 181
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tendcloud/tenddata/TDGAAccount$Gender;->valueOf(Ljava/lang/String;)Lcom/tendcloud/tenddata/TDGAAccount$Gender;

    move-result-object v2

    iput-object v2, v1, Lcom/tendcloud/tenddata/TDGAAccount;->f:Lcom/tendcloud/tenddata/TDGAAccount$Gender;

    .line 185
    const-string v2, "game_duration"

    const-wide/16 v3, 0x0

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 188
    :cond_0
    iget-object v0, v1, Lcom/tendcloud/tenddata/TDGAAccount;->j:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    .line 189
    iget-object v0, v1, Lcom/tendcloud/tenddata/TDGAAccount;->j:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v4, v5, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v0

    .line 190
    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {v1}, Lcom/tendcloud/tenddata/TDGAAccount;->b()V

    .line 195
    :cond_1
    return-object v1
.end method

.method static final a(Landroid/content/Context;Lcom/tendcloud/tenddata/TDGAAccount;)V
    .locals 3

    .prologue
    .line 199
    iget-object v0, p1, Lcom/tendcloud/tenddata/TDGAAccount;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/tendcloud/tenddata/TDGAAccount;->h:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/tendcloud/tenddata/TDGAAccount;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 201
    if-eqz v0, :cond_0

    .line 202
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 203
    const-string v1, "accountId"

    iget-object v2, p1, Lcom/tendcloud/tenddata/TDGAAccount;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 204
    const-string v1, "accountType"

    iget-object v2, p1, Lcom/tendcloud/tenddata/TDGAAccount;->c:Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    invoke-virtual {v2}, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 205
    const-string v1, "accountName"

    iget-object v2, p1, Lcom/tendcloud/tenddata/TDGAAccount;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 206
    const-string v1, "userLevel"

    iget v2, p1, Lcom/tendcloud/tenddata/TDGAAccount;->e:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 207
    const-string v1, "age"

    iget v2, p1, Lcom/tendcloud/tenddata/TDGAAccount;->g:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 208
    const-string v1, "gender"

    iget-object v2, p1, Lcom/tendcloud/tenddata/TDGAAccount;->f:Lcom/tendcloud/tenddata/TDGAAccount$Gender;

    invoke-virtual {v2}, Lcom/tendcloud/tenddata/TDGAAccount$Gender;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 209
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 211
    :cond_0
    return-void
.end method

.method private static final b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 216
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "account_file"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 220
    return-object v0
.end method

.method private final c()J
    .locals 7

    .prologue
    const-wide/16 v0, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 378
    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "TDGAAccount.getLevelUpDuration() called."

    aput-object v3, v2, v4

    invoke-static {v2}, Lcom/tendcloud/tenddata/game/q;->dForInternal([Ljava/lang/String;)V

    .line 379
    invoke-static {}, Lcom/tendcloud/tenddata/TalkingDataGA;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 380
    if-nez v2, :cond_0

    .line 381
    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "TalkingDataGA.getContext() == null."

    aput-object v3, v2, v4

    invoke-static {v2}, Lcom/tendcloud/tenddata/game/q;->dForInternal([Ljava/lang/String;)V

    .line 392
    :goto_0
    return-wide v0

    .line 384
    :cond_0
    invoke-virtual {p0}, Lcom/tendcloud/tenddata/TDGAAccount;->a()J

    move-result-wide v3

    .line 385
    iget-object v5, p0, Lcom/tendcloud/tenddata/TDGAAccount;->b:Ljava/lang/String;

    iget-object v6, p0, Lcom/tendcloud/tenddata/TDGAAccount;->h:Ljava/lang/String;

    invoke-static {v2, v5, v6}, Lcom/tendcloud/tenddata/TDGAAccount;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 386
    const-string v5, "levelup_duration"

    invoke-interface {v2, v5, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 388
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 389
    const-string v5, "levelup_duration"

    invoke-interface {v2, v5, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 390
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 392
    sub-long v0, v3, v0

    goto :goto_0
.end method

.method private final d()V
    .locals 1

    .prologue
    .line 396
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/tendcloud/tenddata/TDGAAccount;->a(Landroid/content/Context;Lcom/tendcloud/tenddata/TDGAAccount;)V

    .line 397
    sget-object v0, Lcom/tendcloud/tenddata/game/a;->e:Lcom/tendcloud/tenddata/game/a;

    invoke-static {p0, v0}, Lcom/tendcloud/tenddata/game/ac;->b(Lcom/tendcloud/tenddata/TDGAAccount;Lcom/tendcloud/tenddata/game/a;)V

    .line 398
    return-void
.end method

.method private final e()V
    .locals 2

    .prologue
    .line 401
    invoke-direct {p0}, Lcom/tendcloud/tenddata/TDGAAccount;->f()V

    .line 402
    new-instance v1, Lcom/tendcloud/tenddata/TDGAAccount$a;

    invoke-direct {v1}, Lcom/tendcloud/tenddata/TDGAAccount$a;-><init>()V

    .line 403
    sget-object v0, Lcom/tendcloud/tenddata/TDGAAccount;->a:Lcom/tendcloud/tenddata/TDGAAccount;

    iput-object v0, v1, Lcom/tendcloud/tenddata/TDGAAccount$a;->a:Lcom/tendcloud/tenddata/TDGAAccount;

    .line 404
    invoke-virtual {p0}, Lcom/tendcloud/tenddata/TDGAAccount;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tendcloud/tenddata/TDGAAccount;

    iput-object v0, v1, Lcom/tendcloud/tenddata/TDGAAccount$a;->b:Lcom/tendcloud/tenddata/TDGAAccount;

    .line 405
    sget-object v0, Lcom/tendcloud/tenddata/game/a;->e:Lcom/tendcloud/tenddata/game/a;

    invoke-static {v1, v0}, Lcom/tendcloud/tenddata/game/ac;->a(Lcom/tendcloud/tenddata/TDGAAccount$a;Lcom/tendcloud/tenddata/game/a;)V

    .line 407
    return-void
.end method

.method private final f()V
    .locals 2

    .prologue
    .line 409
    iget-object v0, p0, Lcom/tendcloud/tenddata/TDGAAccount;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/tendcloud/tenddata/TDGAAccount;->h:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tendcloud/tenddata/game/r;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/tendcloud/tenddata/TDGAAccount;->a(Landroid/content/Context;Lcom/tendcloud/tenddata/TDGAAccount;)V

    .line 411
    return-void
.end method

.method public static final getTDGAccount(Landroid/content/Context;)Lcom/tendcloud/tenddata/TDGAAccount;
    .locals 2

    .prologue
    .line 160
    invoke-static {}, Lcom/tendcloud/tenddata/game/r;->o()Ljava/lang/String;

    move-result-object v0

    .line 163
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/r;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 166
    invoke-static {p0, v0, v1}, Lcom/tendcloud/tenddata/TDGAAccount;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/tendcloud/tenddata/TDGAAccount;

    move-result-object v0

    return-object v0
.end method

.method public static setAccount(Ljava/lang/String;)Lcom/tendcloud/tenddata/TDGAAccount;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 110
    sget-boolean v1, Lcom/tendcloud/tenddata/game/zz;->v:Z

    if-nez v1, :cond_0

    .line 111
    const-string v1, "TDGAAccount.setAccount()#SDK not initialized. "

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/q;->eForDeveloper(Ljava/lang/String;)V

    .line 155
    :goto_0
    return-object v0

    .line 115
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 116
    const-string v1, "TDGAAccount.setAccount()#accountid is null, please check it."

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/q;->eForDeveloper(Ljava/lang/String;)V

    goto :goto_0

    .line 120
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TDGAAccount.setAccount()#accountid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/q;->iForDeveloper(Ljava/lang/String;)V

    .line 123
    sget-object v0, Lcom/tendcloud/tenddata/TDGAAccount;->a:Lcom/tendcloud/tenddata/TDGAAccount;

    if-nez v0, :cond_2

    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 124
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/tendcloud/tenddata/TDGAAccount;->getTDGAccount(Landroid/content/Context;)Lcom/tendcloud/tenddata/TDGAAccount;

    move-result-object v0

    sput-object v0, Lcom/tendcloud/tenddata/TDGAAccount;->a:Lcom/tendcloud/tenddata/TDGAAccount;

    .line 127
    :cond_2
    sget-object v0, Lcom/tendcloud/tenddata/TDGAAccount;->a:Lcom/tendcloud/tenddata/TDGAAccount;

    iget-object v0, v0, Lcom/tendcloud/tenddata/TDGAAccount;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 128
    sget-object v0, Lcom/tendcloud/tenddata/TDGAAccount;->a:Lcom/tendcloud/tenddata/TDGAAccount;

    iput-object p0, v0, Lcom/tendcloud/tenddata/TDGAAccount;->b:Ljava/lang/String;

    .line 129
    sget-object v0, Lcom/tendcloud/tenddata/TDGAAccount;->a:Lcom/tendcloud/tenddata/TDGAAccount;

    .line 150
    :goto_1
    invoke-static {}, Lcom/tendcloud/tenddata/game/r;->o()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 151
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/r;->setAccountId(Ljava/lang/String;)V

    .line 153
    :cond_3
    sget-object v1, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/tendcloud/tenddata/TDGAAccount;->a(Landroid/content/Context;Lcom/tendcloud/tenddata/TDGAAccount;)V

    .line 154
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/r;->setAccountId(Ljava/lang/String;)V

    goto :goto_0

    .line 130
    :cond_4
    sget-object v0, Lcom/tendcloud/tenddata/TDGAAccount;->a:Lcom/tendcloud/tenddata/TDGAAccount;

    iget-object v0, v0, Lcom/tendcloud/tenddata/TDGAAccount;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 131
    sget-object v0, Lcom/tendcloud/tenddata/TDGAAccount;->a:Lcom/tendcloud/tenddata/TDGAAccount;

    goto :goto_1

    .line 134
    :cond_5
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/r;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 137
    sget-object v1, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    invoke-static {v1, p0, v0}, Lcom/tendcloud/tenddata/TDGAAccount;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/tendcloud/tenddata/TDGAAccount;

    move-result-object v0

    .line 140
    sget-object v1, Lcom/tendcloud/tenddata/TDGAAccount;->a:Lcom/tendcloud/tenddata/TDGAAccount;

    invoke-virtual {v1}, Lcom/tendcloud/tenddata/TDGAAccount;->updateGameDuration()V

    .line 142
    new-instance v1, Lcom/tendcloud/tenddata/TDGAAccount$a;

    invoke-direct {v1}, Lcom/tendcloud/tenddata/TDGAAccount$a;-><init>()V

    .line 143
    sget-object v2, Lcom/tendcloud/tenddata/TDGAAccount;->a:Lcom/tendcloud/tenddata/TDGAAccount;

    iput-object v2, v1, Lcom/tendcloud/tenddata/TDGAAccount$a;->a:Lcom/tendcloud/tenddata/TDGAAccount;

    .line 144
    iput-object v0, v1, Lcom/tendcloud/tenddata/TDGAAccount$a;->b:Lcom/tendcloud/tenddata/TDGAAccount;

    .line 145
    sput-object v0, Lcom/tendcloud/tenddata/TDGAAccount;->a:Lcom/tendcloud/tenddata/TDGAAccount;

    .line 147
    sget-object v1, Lcom/tendcloud/tenddata/game/a;->e:Lcom/tendcloud/tenddata/game/a;

    invoke-static {v0, v1}, Lcom/tendcloud/tenddata/game/ac;->a(Lcom/tendcloud/tenddata/TDGAAccount;Lcom/tendcloud/tenddata/game/a;)V

    goto :goto_1
.end method


# virtual methods
.method final a()J
    .locals 4

    .prologue
    .line 361
    iget-object v0, p0, Lcom/tendcloud/tenddata/TDGAAccount;->j:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/tendcloud/tenddata/TDGAAccount;->k:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method final a(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 333
    invoke-static {}, Lcom/tendcloud/tenddata/TalkingDataGA;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 334
    if-nez v0, :cond_0

    .line 335
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "TalkingDataGA.getContext() == null."

    aput-object v1, v0, v5

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/q;->dForInternal([Ljava/lang/String;)V

    .line 346
    :goto_0
    return-void

    .line 338
    :cond_0
    invoke-virtual {p0}, Lcom/tendcloud/tenddata/TDGAAccount;->a()J

    move-result-wide v1

    .line 340
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "TDGAAccount.setMissionStart() called. missionId="

    aput-object v4, v3, v5

    aput-object p1, v3, v6

    const/4 v4, 0x2

    const-string v5, "   gameduration="

    aput-object v5, v3, v4

    const/4 v4, 0x3

    .line 341
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 340
    invoke-static {v3}, Lcom/tendcloud/tenddata/game/q;->dForInternal([Ljava/lang/String;)V

    .line 342
    iget-object v3, p0, Lcom/tendcloud/tenddata/TDGAAccount;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/tendcloud/tenddata/TDGAAccount;->h:Ljava/lang/String;

    invoke-static {v0, v3, v4}, Lcom/tendcloud/tenddata/TDGAAccount;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 343
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 344
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mission_duration_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 345
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method final b(Ljava/lang/String;)J
    .locals 7

    .prologue
    const-wide/16 v0, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 349
    new-array v2, v6, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TDGAAccount.getMissionDuration() called. missionId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/tendcloud/tenddata/game/q;->dForInternal([Ljava/lang/String;)V

    .line 350
    sget-object v2, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    if-nez v2, :cond_0

    .line 351
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "TalkingDataGA.getContext() == null."

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/tendcloud/tenddata/game/q;->dForInternal([Ljava/lang/String;)V

    .line 357
    :goto_0
    return-wide v0

    .line 354
    :cond_0
    invoke-virtual {p0}, Lcom/tendcloud/tenddata/TDGAAccount;->a()J

    move-result-wide v2

    .line 355
    sget-object v4, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    iget-object v5, p0, Lcom/tendcloud/tenddata/TDGAAccount;->b:Ljava/lang/String;

    iget-object v6, p0, Lcom/tendcloud/tenddata/TDGAAccount;->h:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Lcom/tendcloud/tenddata/TDGAAccount;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 356
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mission_duration_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 357
    sub-long v0, v2, v0

    goto :goto_0
.end method

.method final b()V
    .locals 2

    .prologue
    .line 365
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tendcloud/tenddata/TDGAAccount;->k:J

    .line 366
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 370
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 373
    :goto_0
    return-object p0

    .line 371
    :catch_0
    move-exception v0

    .line 372
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Cloning not allowed."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final getAccountId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/tendcloud/tenddata/TDGAAccount;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final getAccountName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/tendcloud/tenddata/TDGAAccount;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final getAccountType()Lcom/tendcloud/tenddata/TDGAAccount$AccountType;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/tendcloud/tenddata/TDGAAccount;->c:Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    return-object v0
.end method

.method public final getAge()I
    .locals 1

    .prologue
    .line 280
    iget v0, p0, Lcom/tendcloud/tenddata/TDGAAccount;->g:I

    return v0
.end method

.method public final getGameServer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/tendcloud/tenddata/TDGAAccount;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final getGender()Lcom/tendcloud/tenddata/TDGAAccount$Gender;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/tendcloud/tenddata/TDGAAccount;->f:Lcom/tendcloud/tenddata/TDGAAccount$Gender;

    return-object v0
.end method

.method public final getLevel()I
    .locals 1

    .prologue
    .line 253
    iget v0, p0, Lcom/tendcloud/tenddata/TDGAAccount;->e:I

    return v0
.end method

.method public final setAccountName(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 245
    if-eqz p1, :cond_0

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TDGAAccount.setAccountName()#setAccountName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/q;->iForDeveloper(Ljava/lang/String;)V

    .line 248
    :cond_0
    iput-object p1, p0, Lcom/tendcloud/tenddata/TDGAAccount;->d:Ljava/lang/String;

    .line 249
    invoke-direct {p0}, Lcom/tendcloud/tenddata/TDGAAccount;->d()V

    .line 250
    return-void
.end method

.method public final setAccountType(Lcom/tendcloud/tenddata/TDGAAccount$AccountType;)V
    .locals 2

    .prologue
    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TDGAAccount.setAccountType()#accountType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/q;->iForDeveloper(Ljava/lang/String;)V

    .line 236
    iput-object p1, p0, Lcom/tendcloud/tenddata/TDGAAccount;->c:Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    .line 237
    invoke-direct {p0}, Lcom/tendcloud/tenddata/TDGAAccount;->d()V

    .line 238
    return-void
.end method

.method public final setAge(I)V
    .locals 2

    .prologue
    .line 284
    iget v0, p0, Lcom/tendcloud/tenddata/TDGAAccount;->g:I

    if-ne v0, p1, :cond_0

    .line 290
    :goto_0
    return-void

    .line 287
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TDGAAccount.setAge()#age:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/q;->iForDeveloper(Ljava/lang/String;)V

    .line 288
    iput p1, p0, Lcom/tendcloud/tenddata/TDGAAccount;->g:I

    .line 289
    invoke-direct {p0}, Lcom/tendcloud/tenddata/TDGAAccount;->d()V

    goto :goto_0
.end method

.method public final setGameServer(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 297
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tendcloud/tenddata/TDGAAccount;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TDGAAccount.setGameServer()#gameServer:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/q;->iForDeveloper(Ljava/lang/String;)V

    .line 299
    iget-object v0, p0, Lcom/tendcloud/tenddata/TDGAAccount;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 301
    iput-object p1, p0, Lcom/tendcloud/tenddata/TDGAAccount;->h:Ljava/lang/String;

    .line 302
    invoke-direct {p0}, Lcom/tendcloud/tenddata/TDGAAccount;->e()V

    .line 308
    :cond_0
    :goto_0
    return-void

    .line 304
    :cond_1
    iput-object p1, p0, Lcom/tendcloud/tenddata/TDGAAccount;->h:Ljava/lang/String;

    .line 305
    invoke-direct {p0}, Lcom/tendcloud/tenddata/TDGAAccount;->f()V

    goto :goto_0
.end method

.method public final setGender(Lcom/tendcloud/tenddata/TDGAAccount$Gender;)V
    .locals 2

    .prologue
    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TDGAAccount.setGender()#setGender:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/q;->iForDeveloper(Ljava/lang/String;)V

    .line 275
    iput-object p1, p0, Lcom/tendcloud/tenddata/TDGAAccount;->f:Lcom/tendcloud/tenddata/TDGAAccount$Gender;

    .line 276
    invoke-direct {p0}, Lcom/tendcloud/tenddata/TDGAAccount;->d()V

    .line 277
    return-void
.end method

.method public final setLevel(I)V
    .locals 7

    .prologue
    .line 257
    iget v0, p0, Lcom/tendcloud/tenddata/TDGAAccount;->e:I

    if-ne v0, p1, :cond_0

    .line 267
    :goto_0
    return-void

    .line 260
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TDGAAccount.setLevel()#setLevel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/q;->iForDeveloper(Ljava/lang/String;)V

    .line 261
    iget v1, p0, Lcom/tendcloud/tenddata/TDGAAccount;->e:I

    .line 262
    iput p1, p0, Lcom/tendcloud/tenddata/TDGAAccount;->e:I

    .line 264
    invoke-direct {p0}, Lcom/tendcloud/tenddata/TDGAAccount;->c()J

    move-result-wide v4

    .line 265
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/tendcloud/tenddata/TDGAAccount;->a(Landroid/content/Context;Lcom/tendcloud/tenddata/TDGAAccount;)V

    .line 266
    sget-object v3, Lcom/tendcloud/tenddata/TDGAMission;->a:Ljava/lang/String;

    sget-object v6, Lcom/tendcloud/tenddata/game/a;->e:Lcom/tendcloud/tenddata/game/a;

    move-object v0, p0

    move v2, p1

    invoke-static/range {v0 .. v6}, Lcom/tendcloud/tenddata/game/ac;->a(Lcom/tendcloud/tenddata/TDGAAccount;IILjava/lang/String;JLcom/tendcloud/tenddata/game/a;)V

    goto :goto_0
.end method

.method public final updateGameDuration()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 311
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "TDGAAccount.updateGameDuration() called."

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/q;->dForInternal([Ljava/lang/String;)V

    .line 312
    invoke-static {}, Lcom/tendcloud/tenddata/TalkingDataGA;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 313
    if-nez v0, :cond_0

    .line 314
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "TalkingDataGA.getContext() == null."

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/q;->eForInternal([Ljava/lang/String;)V

    .line 330
    :goto_0
    return-void

    .line 320
    :cond_0
    iget-object v1, p0, Lcom/tendcloud/tenddata/TDGAAccount;->j:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    .line 321
    invoke-virtual {p0}, Lcom/tendcloud/tenddata/TDGAAccount;->a()J

    move-result-wide v3

    .line 322
    iget-object v5, p0, Lcom/tendcloud/tenddata/TDGAAccount;->j:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5, v1, v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v1

    .line 323
    if-eqz v1, :cond_0

    .line 325
    iget-object v1, p0, Lcom/tendcloud/tenddata/TDGAAccount;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/tendcloud/tenddata/TDGAAccount;->h:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/tendcloud/tenddata/TDGAAccount;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 326
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 327
    const-string v1, "game_duration"

    iget-object v2, p0, Lcom/tendcloud/tenddata/TDGAAccount;->j:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 328
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 329
    invoke-virtual {p0}, Lcom/tendcloud/tenddata/TDGAAccount;->b()V

    goto :goto_0
.end method
