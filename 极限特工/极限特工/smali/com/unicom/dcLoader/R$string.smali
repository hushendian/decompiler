.class public final Lcom/unicom/dcLoader/R$string;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unicom/dcLoader/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "string"
.end annotation


# static fields
.field public static action_settings:I

.field public static app_name:I

.field public static hello_world:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x7f060001

    sput v0, Lcom/unicom/dcLoader/R$string;->action_settings:I

    const/high16 v0, 0x7f060000

    sput v0, Lcom/unicom/dcLoader/R$string;->app_name:I

    const v0, 0x7f060002

    sput v0, Lcom/unicom/dcLoader/R$string;->hello_world:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
