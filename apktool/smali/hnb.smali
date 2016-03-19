.class public final enum Lhnb;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lhnb;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lhnb;

.field public static final enum b:Lhnb;

.field private static final synthetic c:[Lhnb;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11
    new-instance v0, Lhnb;

    const-string v1, "FOREGROUND"

    invoke-direct {v0, v1, v2}, Lhnb;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhnb;->a:Lhnb;

    new-instance v0, Lhnb;

    const-string v1, "BACKGROUND"

    invoke-direct {v0, v1, v3}, Lhnb;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhnb;->b:Lhnb;

    const/4 v0, 0x2

    new-array v0, v0, [Lhnb;

    sget-object v1, Lhnb;->a:Lhnb;

    aput-object v1, v0, v2

    sget-object v1, Lhnb;->b:Lhnb;

    aput-object v1, v0, v3

    sput-object v0, Lhnb;->c:[Lhnb;

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

.method public static valueOf(Ljava/lang/String;)Lhnb;
    .locals 1

    .prologue
    .line 11
    const-class v0, Lhnb;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lhnb;

    return-object v0
.end method

.method public static values()[Lhnb;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lhnb;->c:[Lhnb;

    invoke-virtual {v0}, [Lhnb;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lhnb;

    return-object v0
.end method
