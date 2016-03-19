.class public abstract Llvf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llwp;


# instance fields
.field public a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Llvf;->a:I

    return-void
.end method


# virtual methods
.method public a()[B
    .locals 3

    .prologue
    .line 36
    :try_start_0
    invoke-virtual {p0}, Llvf;->m()I

    move-result v0

    new-array v0, v0, [B

    .line 37
    invoke-static {v0}, Llvq;->a([B)Llvq;

    move-result-object v1

    .line 38
    invoke-virtual {p0, v1}, Llvf;->a(Llvq;)V

    .line 39
    invoke-virtual {v1}, Llvq;->h()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    return-object v0

    .line 41
    :catch_0
    move-exception v0

    .line 42
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Serializing to a byte array threw an IOException (should never happen)."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method b()Llxe;
    .locals 1

    .prologue
    .line 80
    new-instance v0, Llxe;

    invoke-direct {v0}, Llxe;-><init>()V

    return-object v0
.end method
