.class public final Llvx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Llvx",
        "<TT;>;>",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final a:Llwi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llwi",
            "<*>;"
        }
    .end annotation
.end field

.field final b:I

.field final c:Llxo;

.field final d:Z

.field final e:Z


# direct methods
.method public constructor <init>(Llwi;ILlxo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2864
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2865
    const/4 v0, 0x0

    iput-object v0, p0, Llvx;->a:Llwi;

    .line 2866
    const v0, 0x5cb87e

    iput v0, p0, Llvx;->b:I

    .line 2867
    iput-object p3, p0, Llvx;->c:Llxo;

    .line 2868
    iput-boolean v1, p0, Llvx;->d:Z

    .line 2869
    iput-boolean v1, p0, Llvx;->e:Z

    .line 2870
    return-void
.end method

.method private a(Llvx;)I
    .locals 2

    .prologue
    .line 2916
    iget v0, p0, Llvx;->b:I

    iget v1, p1, Llvx;->b:I

    sub-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 1879
    iget v0, p0, Llvx;->b:I

    return v0
.end method

.method public b()Llxo;
    .locals 1

    .prologue
    .line 1883
    iget-object v0, p0, Llvx;->c:Llxo;

    return-object v0
.end method

.method public c()Llxt;
    .locals 1

    .prologue
    .line 1887
    iget-object v0, p0, Llvx;->c:Llxo;

    invoke-virtual {v0}, Llxo;->a()Llxt;

    move-result-object v0

    return-object v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 3856
    check-cast p1, Llvx;

    invoke-direct {p0, p1}, Llvx;->a(Llvx;)I

    move-result v0

    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 1891
    iget-boolean v0, p0, Llvx;->d:Z

    return v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 1895
    iget-boolean v0, p0, Llvx;->e:Z

    return v0
.end method

.method public f()Llwi;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Llwi",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 2899
    iget-object v0, p0, Llvx;->a:Llwi;

    return-object v0
.end method
