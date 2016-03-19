.class public final enum Lhoa;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lhoa;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lhoa;

.field public static final enum b:Lhoa;

.field public static final enum c:Lhoa;

.field public static final enum d:Lhoa;

.field public static final enum e:Lhoa;

.field private static final synthetic f:[Lhoa;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 26
    new-instance v0, Lhoa;

    const-string v1, "INVALID_COUNTRY_CODE"

    invoke-direct {v0, v1, v2}, Lhoa;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhoa;->a:Lhoa;

    .line 30
    new-instance v0, Lhoa;

    const-string v1, "NOT_A_NUMBER"

    invoke-direct {v0, v1, v3}, Lhoa;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhoa;->b:Lhoa;

    .line 34
    new-instance v0, Lhoa;

    const-string v1, "TOO_SHORT_AFTER_IDD"

    invoke-direct {v0, v1, v4}, Lhoa;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhoa;->c:Lhoa;

    .line 37
    new-instance v0, Lhoa;

    const-string v1, "TOO_SHORT_NSN"

    invoke-direct {v0, v1, v5}, Lhoa;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhoa;->d:Lhoa;

    .line 39
    new-instance v0, Lhoa;

    const-string v1, "TOO_LONG"

    invoke-direct {v0, v1, v6}, Lhoa;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhoa;->e:Lhoa;

    .line 25
    const/4 v0, 0x5

    new-array v0, v0, [Lhoa;

    sget-object v1, Lhoa;->a:Lhoa;

    aput-object v1, v0, v2

    sget-object v1, Lhoa;->b:Lhoa;

    aput-object v1, v0, v3

    sget-object v1, Lhoa;->c:Lhoa;

    aput-object v1, v0, v4

    sget-object v1, Lhoa;->d:Lhoa;

    aput-object v1, v0, v5

    sget-object v1, Lhoa;->e:Lhoa;

    aput-object v1, v0, v6

    sput-object v0, Lhoa;->f:[Lhoa;

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
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lhoa;
    .locals 1

    .prologue
    .line 25
    const-class v0, Lhoa;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lhoa;

    return-object v0
.end method

.method public static values()[Lhoa;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lhoa;->f:[Lhoa;

    invoke-virtual {v0}, [Lhoa;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lhoa;

    return-object v0
.end method
