.class public final enum Lbsq;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lbsq;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lbsq;

.field public static final enum b:Lbsq;

.field private static final synthetic c:[Lbsq;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 12
    new-instance v0, Lbsq;

    const-string v1, "VIDEO"

    invoke-direct {v0, v1, v2}, Lbsq;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbsq;->a:Lbsq;

    .line 13
    new-instance v0, Lbsq;

    const-string v1, "IMAGE"

    invoke-direct {v0, v1, v3}, Lbsq;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbsq;->b:Lbsq;

    .line 11
    const/4 v0, 0x2

    new-array v0, v0, [Lbsq;

    sget-object v1, Lbsq;->a:Lbsq;

    aput-object v1, v0, v2

    sget-object v1, Lbsq;->b:Lbsq;

    aput-object v1, v0, v3

    sput-object v0, Lbsq;->c:[Lbsq;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbsq;
    .locals 1

    .prologue
    .line 11
    const-class v0, Lbsq;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lbsq;

    return-object v0
.end method

.method public static values()[Lbsq;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lbsq;->c:[Lbsq;

    invoke-virtual {v0}, [Lbsq;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbsq;

    return-object v0
.end method
