.class public final enum Ldjd;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ldjd;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Ldjd;

.field public static final enum b:Ldjd;

.field private static final synthetic d:[Ldjd;


# instance fields
.field public final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 13
    new-instance v0, Ldjd;

    const-string v1, "TRANSPORT_SPINNER"

    const-string v2, "transport_spinner_promo_shown"

    invoke-direct {v0, v1, v3, v2}, Ldjd;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Ldjd;->a:Ldjd;

    .line 14
    new-instance v0, Ldjd;

    const-string v1, "AUTOSWITCH_TRANSPORT"

    const-string v2, "autoswitch_transport_promo_shown"

    invoke-direct {v0, v1, v4, v2}, Ldjd;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Ldjd;->b:Ldjd;

    .line 12
    const/4 v0, 0x2

    new-array v0, v0, [Ldjd;

    sget-object v1, Ldjd;->a:Ldjd;

    aput-object v1, v0, v3

    sget-object v1, Ldjd;->b:Ldjd;

    aput-object v1, v0, v4

    sput-object v0, Ldjd;->d:[Ldjd;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 19
    iput-object p3, p0, Ldjd;->c:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ldjd;
    .locals 1

    .prologue
    .line 12
    const-class v0, Ldjd;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ldjd;

    return-object v0
.end method

.method public static values()[Ldjd;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Ldjd;->d:[Ldjd;

    invoke-virtual {v0}, [Ldjd;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldjd;

    return-object v0
.end method
