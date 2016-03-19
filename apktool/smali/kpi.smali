.class public abstract enum Lkpi;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lkpi;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lkpi;

.field public static final enum b:Lkpi;

.field public static final enum c:Lkpi;

.field private static final synthetic d:[Lkpi;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 381
    new-instance v0, Lkpj;

    const-string v1, "STRONG"

    invoke-direct {v0, v1}, Lkpj;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkpi;->a:Lkpi;

    .line 396
    new-instance v0, Lkpk;

    const-string v1, "SOFT"

    invoke-direct {v0, v1}, Lkpk;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkpi;->b:Lkpi;

    .line 412
    new-instance v0, Lkpl;

    const-string v1, "WEAK"

    invoke-direct {v0, v1}, Lkpl;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkpi;->c:Lkpi;

    .line 375
    const/4 v0, 0x3

    new-array v0, v0, [Lkpi;

    const/4 v1, 0x0

    sget-object v2, Lkpi;->a:Lkpi;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lkpi;->b:Lkpi;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lkpi;->c:Lkpi;

    aput-object v2, v0, v1

    sput-object v0, Lkpi;->d:[Lkpi;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 375
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lkpi;
    .locals 1

    .prologue
    .line 375
    const-class v0, Lkpi;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lkpi;

    return-object v0
.end method

.method public static values()[Lkpi;
    .locals 1

    .prologue
    .line 375
    sget-object v0, Lkpi;->d:[Lkpi;

    invoke-virtual {v0}, [Lkpi;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkpi;

    return-object v0
.end method


# virtual methods
.method abstract a(Lkpf;Lcom/google/common/cache/LocalCache$ReferenceEntry;Ljava/lang/Object;I)Lkps;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lkpf",
            "<TK;TV;>;",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;TV;I)",
            "Lkps",
            "<TK;TV;>;"
        }
    .end annotation
.end method
