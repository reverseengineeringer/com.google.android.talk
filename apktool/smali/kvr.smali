.class public abstract enum Lkvr;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lkvr;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lkvr;

.field public static final enum b:Lkvr;

.field public static final enum c:Lkvr;

.field private static final synthetic d:[Lkvr;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 299
    new-instance v0, Lkvs;

    const-string v1, "STRONG"

    invoke-direct {v0, v1}, Lkvs;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkvr;->a:Lkvr;

    .line 312
    new-instance v0, Lkvt;

    const-string v1, "SOFT"

    invoke-direct {v0, v1}, Lkvt;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkvr;->b:Lkvr;

    .line 325
    new-instance v0, Lkvu;

    const-string v1, "WEAK"

    invoke-direct {v0, v1}, Lkvu;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkvr;->c:Lkvr;

    .line 293
    const/4 v0, 0x3

    new-array v0, v0, [Lkvr;

    const/4 v1, 0x0

    sget-object v2, Lkvr;->a:Lkvr;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lkvr;->b:Lkvr;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lkvr;->c:Lkvr;

    aput-object v2, v0, v1

    sput-object v0, Lkvr;->d:[Lkvr;

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
    .line 293
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lkvr;
    .locals 1

    .prologue
    .line 293
    const-class v0, Lkvr;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lkvr;

    return-object v0
.end method

.method public static values()[Lkvr;
    .locals 1

    .prologue
    .line 293
    sget-object v0, Lkvr;->d:[Lkvr;

    invoke-virtual {v0}, [Lkvr;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkvr;

    return-object v0
.end method


# virtual methods
.method public abstract a()Lkng;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkng",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method abstract a(Lkvo;Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;Ljava/lang/Object;)Lkwb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lkvo",
            "<TK;TV;>;",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;TV;)",
            "Lkwb",
            "<TK;TV;>;"
        }
    .end annotation
.end method
