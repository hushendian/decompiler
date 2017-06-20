.class public final Lcom/unicom/dcLoader/R$dimen;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unicom/dcLoader/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "dimen"
.end annotation


# static fields
.field public static activity_horizontal_margin:I

.field public static activity_vertical_margin:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x7f040000

    sput v0, Lcom/unicom/dcLoader/R$dimen;->activity_horizontal_margin:I

    const v0, 0x7f040001

    sput v0, Lcom/unicom/dcLoader/R$dimen;->activity_vertical_margin:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
