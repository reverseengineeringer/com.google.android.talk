.class public final enum Ljrw;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljrw;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Ljrw;

.field private static final synthetic b:[Ljrw;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 5
    new-instance v0, Ljrw;

    const-string v1, "I_AM_THE_FRAMEWORK"

    invoke-direct {v0, v1}, Ljrw;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljrw;->a:Ljrw;

    .line 4
    const/4 v0, 0x1

    new-array v0, v0, [Ljrw;

    const/4 v1, 0x0

    sget-object v2, Ljrw;->a:Ljrw;

    aput-object v2, v0, v1

    sput-object v0, Ljrw;->b:[Ljrw;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 4
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljrw;
    .locals 1

    .prologue
    .line 4
    const-class v0, Ljrw;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljrw;

    return-object v0
.end method

.method public static values()[Ljrw;
    .locals 1

    .prologue
    .line 4
    sget-object v0, Ljrw;->b:[Ljrw;

    invoke-virtual {v0}, [Ljrw;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljrw;

    return-object v0
.end method
