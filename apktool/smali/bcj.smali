.class public final enum Lbcj;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lbcj;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lbcj;

.field public static final enum b:Lbcj;

.field public static final enum c:Lbcj;

.field private static final synthetic d:[Lbcj;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8
    new-instance v0, Lbcj;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lbcj;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbcj;->a:Lbcj;

    .line 11
    new-instance v0, Lbcj;

    const-string v1, "REPLACE_OLD"

    invoke-direct {v0, v1, v3}, Lbcj;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbcj;->b:Lbcj;

    .line 14
    new-instance v0, Lbcj;

    const-string v1, "USE_OLD"

    invoke-direct {v0, v1, v4}, Lbcj;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbcj;->c:Lbcj;

    .line 6
    const/4 v0, 0x3

    new-array v0, v0, [Lbcj;

    sget-object v1, Lbcj;->a:Lbcj;

    aput-object v1, v0, v2

    sget-object v1, Lbcj;->b:Lbcj;

    aput-object v1, v0, v3

    sget-object v1, Lbcj;->c:Lbcj;

    aput-object v1, v0, v4

    sput-object v0, Lbcj;->d:[Lbcj;

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
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbcj;
    .locals 1

    .prologue
    .line 6
    const-class v0, Lbcj;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lbcj;

    return-object v0
.end method

.method public static values()[Lbcj;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lbcj;->d:[Lbcj;

    invoke-virtual {v0}, [Lbcj;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbcj;

    return-object v0
.end method
