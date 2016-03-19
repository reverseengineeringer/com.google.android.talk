.class public final enum Lhyv;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lhyv;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lhyv;

.field public static final enum b:Lhyv;

.field private static final synthetic c:[Lhyv;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 17
    new-instance v0, Lhyv;

    const-string v1, "EXACT"

    invoke-direct {v0, v1, v2}, Lhyv;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhyv;->a:Lhyv;

    .line 18
    new-instance v0, Lhyv;

    const-string v1, "APPROXIMATE"

    invoke-direct {v0, v1, v3}, Lhyv;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhyv;->b:Lhyv;

    .line 16
    const/4 v0, 0x2

    new-array v0, v0, [Lhyv;

    sget-object v1, Lhyv;->a:Lhyv;

    aput-object v1, v0, v2

    sget-object v1, Lhyv;->b:Lhyv;

    aput-object v1, v0, v3

    sput-object v0, Lhyv;->c:[Lhyv;

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
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lhyv;
    .locals 1

    .prologue
    .line 16
    const-class v0, Lhyv;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lhyv;

    return-object v0
.end method

.method public static values()[Lhyv;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lhyv;->c:[Lhyv;

    invoke-virtual {v0}, [Lhyv;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lhyv;

    return-object v0
.end method
