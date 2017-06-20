.class public final Lcom/unicom/dcLoader/R$id;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unicom/dcLoader/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "id"
.end annotation


# static fields
.field public static action_settings:I

.field public static test1:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x7f080001

    sput v0, Lcom/unicom/dcLoader/R$id;->action_settings:I

    const/high16 v0, 0x7f080000

    sput v0, Lcom/unicom/dcLoader/R$id;->test1:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
