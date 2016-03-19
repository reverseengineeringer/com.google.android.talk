.class public final Llvi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llwt;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType::",
        "Llwp;",
        ">",
        "Ljava/lang/Object;",
        "Llwt",
        "<TMessageType;>;"
    }
.end annotation


# static fields
.field private static final b:Llvt;


# instance fields
.field a:Llvy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 3069
    sget-object v0, Llvt;->a:Llvt;

    .line 57
    sput-object v0, Llvi;->b:Llvt;

    .line 56
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Llvy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 3203
    invoke-direct {p0}, Llvi;-><init>()V

    .line 3204
    iput-object p1, p0, Llvi;->a:Llvy;

    .line 3205
    return-void
.end method

.method private b(Llvp;Llvt;)Llvy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llvp;",
            "Llvt;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 3210
    iget-object v0, p0, Llvi;->a:Llvy;

    invoke-static {v0, p1, p2}, Llvy;->a(Llvy;Llvp;Llvt;)Llvy;

    move-result-object v0

    return-object v0
.end method

.method private b(Llvk;Llvt;)Llwp;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llvk;",
            "Llvt;",
            ")TMessageType;"
        }
    .end annotation

    .prologue
    .line 81
    :try_start_0
    invoke-virtual {p1}, Llvk;->c()Llvp;

    move-result-object v1

    .line 82
    invoke-virtual {p0, v1, p2}, Llvi;->a(Llvp;Llvt;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llwp;
    :try_end_0
    .catch Llwk; {:try_start_0 .. :try_end_0} :catch_1

    .line 84
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v1, v2}, Llvp;->a(I)V
    :try_end_1
    .catch Llwk; {:try_start_1 .. :try_end_1} :catch_0

    .line 88
    return-object v0

    .line 86
    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1, v0}, Llwk;->a(Llwp;)Llwk;

    move-result-object v0

    throw v0
    :try_end_2
    .catch Llwk; {:try_start_2 .. :try_end_2} :catch_1

    .line 90
    :catch_1
    move-exception v0

    throw v0
.end method

.method private c(Llvk;Llvt;)Llwp;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llvk;",
            "Llvt;",
            ")TMessageType;"
        }
    .end annotation

    .prologue
    .line 102
    invoke-direct {p0, p1, p2}, Llvi;->b(Llvk;Llvt;)Llwp;

    move-result-object v1

    .line 2048
    if-eqz v1, :cond_2

    invoke-interface {v1}, Llwp;->f()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3028
    instance-of v0, v1, Llvf;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 3029
    check-cast v0, Llvf;

    invoke-virtual {v0}, Llvf;->b()Llxe;

    move-result-object v0

    .line 2050
    :goto_0
    invoke-virtual {v0}, Llxe;->a()Llwk;

    move-result-object v0

    .line 2051
    invoke-virtual {v0, v1}, Llwk;->a(Llwp;)Llwk;

    move-result-object v0

    throw v0

    .line 3032
    :cond_0
    instance-of v0, v1, Llvh;

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 3033
    check-cast v0, Llvh;

    .line 3034
    invoke-virtual {v0}, Llvh;->ab_()Llxe;

    move-result-object v0

    goto :goto_0

    .line 3037
    :cond_1
    new-instance v0, Llxe;

    invoke-direct {v0}, Llxe;-><init>()V

    goto :goto_0

    .line 102
    :cond_2
    return-object v1
.end method


# virtual methods
.method public synthetic a(Llvk;Llvt;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Llvi;->c(Llvk;Llvt;)Llwp;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Llvp;Llvt;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 4198
    invoke-direct {p0, p1, p2}, Llvi;->b(Llvp;Llvt;)Llvy;

    move-result-object v0

    return-object v0
.end method
