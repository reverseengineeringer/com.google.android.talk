.class public final enum Lhoo;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lhoo;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lhoo;

.field public static final enum b:Lhoo;

.field public static final enum c:Lhoo;

.field public static final enum d:Lhoo;

.field public static final enum e:Lhoo;

.field private static final synthetic f:[Lhoo;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 413
    new-instance v0, Lhoo;

    const-string v1, "NOT_A_NUMBER"

    invoke-direct {v0, v1, v2}, Lhoo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhoo;->a:Lhoo;

    .line 414
    new-instance v0, Lhoo;

    const-string v1, "NO_MATCH"

    invoke-direct {v0, v1, v3}, Lhoo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhoo;->b:Lhoo;

    .line 415
    new-instance v0, Lhoo;

    const-string v1, "SHORT_NSN_MATCH"

    invoke-direct {v0, v1, v4}, Lhoo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhoo;->c:Lhoo;

    .line 416
    new-instance v0, Lhoo;

    const-string v1, "NSN_MATCH"

    invoke-direct {v0, v1, v5}, Lhoo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhoo;->d:Lhoo;

    .line 417
    new-instance v0, Lhoo;

    const-string v1, "EXACT_MATCH"

    invoke-direct {v0, v1, v6}, Lhoo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhoo;->e:Lhoo;

    .line 412
    const/4 v0, 0x5

    new-array v0, v0, [Lhoo;

    sget-object v1, Lhoo;->a:Lhoo;

    aput-object v1, v0, v2

    sget-object v1, Lhoo;->b:Lhoo;

    aput-object v1, v0, v3

    sget-object v1, Lhoo;->c:Lhoo;

    aput-object v1, v0, v4

    sget-object v1, Lhoo;->d:Lhoo;

    aput-object v1, v0, v5

    sget-object v1, Lhoo;->e:Lhoo;

    aput-object v1, v0, v6

    sput-object v0, Lhoo;->f:[Lhoo;

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
    .line 412
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lhoo;
    .locals 1

    .prologue
    .line 412
    const-class v0, Lhoo;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lhoo;

    return-object v0
.end method

.method public static values()[Lhoo;
    .locals 1

    .prologue
    .line 412
    sget-object v0, Lhoo;->f:[Lhoo;

    invoke-virtual {v0}, [Lhoo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lhoo;

    return-object v0
.end method
