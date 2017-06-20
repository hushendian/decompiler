.class public Lcom/yuelan/codelib/sim/SmsInfo;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yuelan/codelib/sim/SmsInfo;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yuelan/codelib/sim/SmsInfo;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yuelan/codelib/sim/SmsInfo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getSmsbody()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yuelan/codelib/sim/SmsInfo;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getSmsid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yuelan/codelib/sim/SmsInfo;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yuelan/codelib/sim/SmsInfo;->e:Ljava/lang/String;

    return-object v0
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yuelan/codelib/sim/SmsInfo;->c:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yuelan/codelib/sim/SmsInfo;->d:Ljava/lang/String;

    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yuelan/codelib/sim/SmsInfo;->b:Ljava/lang/String;

    return-void
.end method

.method public setSmsbody(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yuelan/codelib/sim/SmsInfo;->a:Ljava/lang/String;

    return-void
.end method

.method public setSmsid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yuelan/codelib/sim/SmsInfo;->f:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yuelan/codelib/sim/SmsInfo;->e:Ljava/lang/String;

    return-void
.end method
