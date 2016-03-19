.class public final enum Lais;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lais;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lais;

.field public static final enum b:Lais;

.field public static final c:Lais;

.field private static final synthetic d:[Lais;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 23
    new-instance v0, Lais;

    const-string v1, "PREFER_ARGB_8888"

    invoke-direct {v0, v1, v2}, Lais;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lais;->a:Lais;

    .line 32
    new-instance v0, Lais;

    const-string v1, "PREFER_RGB_565"

    invoke-direct {v0, v1, v3}, Lais;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lais;->b:Lais;

    .line 12
    const/4 v0, 0x2

    new-array v0, v0, [Lais;

    sget-object v1, Lais;->a:Lais;

    aput-object v1, v0, v2

    sget-object v1, Lais;->b:Lais;

    aput-object v1, v0, v3

    sput-object v0, Lais;->d:[Lais;

    .line 37
    sget-object v0, Lais;->a:Lais;

    sput-object v0, Lais;->c:Lais;

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
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lais;
    .locals 1

    .prologue
    .line 12
    const-class v0, Lais;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lais;

    return-object v0
.end method

.method public static values()[Lais;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lais;->d:[Lais;

    invoke-virtual {v0}, [Lais;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lais;

    return-object v0
.end method
