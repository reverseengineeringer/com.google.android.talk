.class public final enum Lian;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lian;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lian;

.field private static final synthetic b:[Lian;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 9
    new-instance v0, Lian;

    const-string v1, "ALLOWED"

    invoke-direct {v0, v1}, Lian;-><init>(Ljava/lang/String;)V

    sput-object v0, Lian;->a:Lian;

    .line 8
    const/4 v0, 0x1

    new-array v0, v0, [Lian;

    const/4 v1, 0x0

    sget-object v2, Lian;->a:Lian;

    aput-object v2, v0, v1

    sput-object v0, Lian;->b:[Lian;

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

.method public static valueOf(Ljava/lang/String;)Lian;
    .locals 1

    .prologue
    .line 8
    const-class v0, Lian;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lian;

    return-object v0
.end method

.method public static values()[Lian;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lian;->b:[Lian;

    invoke-virtual {v0}, [Lian;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lian;

    return-object v0
.end method
