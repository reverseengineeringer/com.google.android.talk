.class public final enum Llxt;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Llxt;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Llxt;

.field public static final enum b:Llxt;

.field public static final enum c:Llxt;

.field public static final enum d:Llxt;

.field public static final enum e:Llxt;

.field public static final enum f:Llxt;

.field public static final enum g:Llxt;

.field public static final enum h:Llxt;

.field public static final enum i:Llxt;

.field private static final synthetic k:[Llxt;


# instance fields
.field private final j:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 52
    new-instance v0, Llxt;

    const-string v1, "INT"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v4, v2}, Llxt;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Llxt;->a:Llxt;

    .line 53
    new-instance v0, Llxt;

    const-string v1, "LONG"

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v1, v5, v2}, Llxt;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Llxt;->b:Llxt;

    .line 54
    new-instance v0, Llxt;

    const-string v1, "FLOAT"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {v0, v1, v6, v2}, Llxt;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Llxt;->c:Llxt;

    .line 55
    new-instance v0, Llxt;

    const-string v1, "DOUBLE"

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v0, v1, v7, v2}, Llxt;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Llxt;->d:Llxt;

    .line 56
    new-instance v0, Llxt;

    const-string v1, "BOOLEAN"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v8, v2}, Llxt;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Llxt;->e:Llxt;

    .line 57
    new-instance v0, Llxt;

    const-string v1, "STRING"

    const/4 v2, 0x5

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Llxt;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Llxt;->f:Llxt;

    .line 58
    new-instance v0, Llxt;

    const-string v1, "BYTE_STRING"

    const/4 v2, 0x6

    sget-object v3, Llvk;->a:Llvk;

    invoke-direct {v0, v1, v2, v3}, Llxt;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Llxt;->g:Llxt;

    .line 59
    new-instance v0, Llxt;

    const-string v1, "ENUM"

    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Llxt;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Llxt;->h:Llxt;

    .line 60
    new-instance v0, Llxt;

    const-string v1, "MESSAGE"

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Llxt;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Llxt;->i:Llxt;

    .line 51
    const/16 v0, 0x9

    new-array v0, v0, [Llxt;

    sget-object v1, Llxt;->a:Llxt;

    aput-object v1, v0, v4

    sget-object v1, Llxt;->b:Llxt;

    aput-object v1, v0, v5

    sget-object v1, Llxt;->c:Llxt;

    aput-object v1, v0, v6

    sget-object v1, Llxt;->d:Llxt;

    aput-object v1, v0, v7

    sget-object v1, Llxt;->e:Llxt;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Llxt;->f:Llxt;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Llxt;->g:Llxt;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Llxt;->h:Llxt;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Llxt;->i:Llxt;

    aput-object v2, v0, v1

    sput-object v0, Llxt;->k:[Llxt;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 63
    iput-object p3, p0, Llxt;->j:Ljava/lang/Object;

    .line 64
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Llxt;
    .locals 1

    .prologue
    .line 51
    const-class v0, Llxt;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Llxt;

    return-object v0
.end method

.method public static values()[Llxt;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Llxt;->k:[Llxt;

    invoke-virtual {v0}, [Llxt;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Llxt;

    return-object v0
.end method
