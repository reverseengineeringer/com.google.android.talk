.class public final enum Lhpy;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lhpy;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lhpy;

.field private static final synthetic b:[Lhpy;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 9
    new-instance v0, Lhpy;

    const-string v1, "ALLOWED"

    invoke-direct {v0, v1}, Lhpy;-><init>(Ljava/lang/String;)V

    sput-object v0, Lhpy;->a:Lhpy;

    .line 8
    const/4 v0, 0x1

    new-array v0, v0, [Lhpy;

    const/4 v1, 0x0

    sget-object v2, Lhpy;->a:Lhpy;

    aput-object v2, v0, v1

    sput-object v0, Lhpy;->b:[Lhpy;

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
    .line 8
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lhpy;
    .locals 1

    .prologue
    .line 8
    const-class v0, Lhpy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lhpy;

    return-object v0
.end method

.method public static values()[Lhpy;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lhpy;->b:[Lhpy;

    invoke-virtual {v0}, [Lhpy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lhpy;

    return-object v0
.end method
