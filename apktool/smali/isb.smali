.class public final enum Lisb;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lisb;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lisb;

.field private static final synthetic b:[Lisb;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 71
    new-instance v0, Lisb;

    const-string v1, "IGNORE_CASE"

    invoke-direct {v0, v1}, Lisb;-><init>(Ljava/lang/String;)V

    sput-object v0, Lisb;->a:Lisb;

    .line 68
    const/4 v0, 0x1

    new-array v0, v0, [Lisb;

    const/4 v1, 0x0

    sget-object v2, Lisb;->a:Lisb;

    aput-object v2, v0, v1

    sput-object v0, Lisb;->b:[Lisb;

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
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lisb;
    .locals 1

    .prologue
    .line 68
    const-class v0, Lisb;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lisb;

    return-object v0
.end method

.method public static values()[Lisb;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lisb;->b:[Lisb;

    invoke-virtual {v0}, [Lisb;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lisb;

    return-object v0
.end method
