.class public final Llvs;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ContainingType::",
        "Llwp;",
        "Type:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final a:Llwp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TContainingType;"
        }
    .end annotation
.end field

.field final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TType;"
        }
    .end annotation
.end field

.field final c:Llwp;

.field final d:Llvx;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Llwp;Ljava/lang/Object;Llwp;Llvx;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 1978
    invoke-direct {p0}, Llvs;-><init>()V

    .line 1981
    if-nez p1, :cond_0

    .line 1982
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null containingTypeDefaultInstance"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1985
    :cond_0
    invoke-virtual {p4}, Llvx;->b()Llxo;

    move-result-object v0

    sget-object v1, Llxo;->k:Llxo;

    if-ne v0, v1, :cond_1

    if-nez p3, :cond_1

    .line 1987
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null messageDefaultInstance"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1990
    :cond_1
    iput-object p1, p0, Llvs;->a:Llwp;

    .line 1991
    iput-object p2, p0, Llvs;->b:Ljava/lang/Object;

    .line 1992
    iput-object p3, p0, Llvs;->c:Llwp;

    .line 1993
    iput-object p4, p0, Llvs;->d:Llvx;

    .line 1994
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 2010
    iget-object v0, p0, Llvs;->d:Llvx;

    invoke-virtual {v0}, Llvx;->a()I

    move-result v0

    return v0
.end method

.method a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 2065
    iget-object v0, p0, Llvs;->d:Llvx;

    invoke-virtual {v0}, Llvx;->c()Llxt;

    move-result-object v0

    sget-object v1, Llxt;->h:Llxt;

    if-ne v0, v1, :cond_0

    .line 2066
    check-cast p1, Llwh;

    invoke-interface {p1}, Llwh;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 2068
    :cond_0
    return-object p1
.end method

.method public b()Llwp;
    .locals 1

    .prologue
    .line 2019
    iget-object v0, p0, Llvs;->c:Llwp;

    return-object v0
.end method
