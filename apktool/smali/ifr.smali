.class final Lifr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lifq;
.implements Ligf;
.implements Lilu;
.implements Lios;
.implements Liov;
.implements Lioz;


# instance fields
.field final a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lifz;",
            ">;"
        }
    .end annotation
.end field

.field b:Ligc;

.field private c:Lhsv;


# direct methods
.method constructor <init>(Liog;)V
    .locals 1

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lifr;->a:Landroid/util/SparseArray;

    .line 86
    invoke-virtual {p1, p0}, Liog;->a(Lioz;)Lioz;

    .line 87
    return-void
.end method


# virtual methods
.method public X_()V
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lifr;->b:Ligc;

    invoke-virtual {v0, p0}, Ligc;->a(Ligf;)V

    .line 142
    iget-object v0, p0, Lifr;->c:Lhsv;

    new-instance v1, Lifs;

    invoke-direct {v1, p0}, Lifs;-><init>(Lifr;)V

    invoke-virtual {v0, v1}, Lhsv;->a(Lhsw;)V

    .line 160
    return-void
.end method

.method public a(ILifz;)Lifq;
    .locals 4

    .prologue
    .line 103
    iget-object v0, p0, Lifr;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 104
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot register more than one handler for a given  id: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xb

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x15

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "register: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 108
    iget-object v0, p0, Lifr;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 110
    return-object p0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lifr;->b:Ligc;

    invoke-virtual {v0, p0}, Ligc;->b(Ligf;)V

    .line 193
    return-void
.end method

.method public a(Landroid/content/Context;Lilh;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 134
    const-class v0, Ligc;

    invoke-virtual {p2, v0}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ligc;

    iput-object v0, p0, Lifr;->b:Ligc;

    .line 135
    const-class v0, Lhsv;

    invoke-virtual {p2, v0}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhsv;

    iput-object v0, p0, Lifr;->c:Lhsv;

    .line 136
    return-void
.end method

.method public a(Lify;ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lify;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Lifr;->c:Lhsv;

    invoke-virtual {v0, p2}, Lhsv;->a(I)V

    .line 122
    iget-object v0, p0, Lifr;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lifz;

    .line 123
    if-nez v0, :cond_0

    .line 124
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x74

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "You must register a result handler for request code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " before requesting permissions with that request code"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_0
    iget-object v0, p0, Lifr;->c:Lhsv;

    invoke-virtual {v0, p2}, Lhsv;->b(I)I

    move-result v0

    .line 129
    iget-object v1, p0, Lifr;->b:Ligc;

    invoke-virtual {v1, p1, v0, p3}, Ligc;->a(Lify;ILjava/util/List;)V

    .line 130
    return-void
.end method

.method public a(Lifw;)Z
    .locals 3

    .prologue
    .line 169
    iget-object v0, p0, Lifr;->c:Lhsv;

    iget v1, p1, Lifw;->a:I

    new-instance v2, Lift;

    invoke-direct {v2, p0, p1}, Lift;-><init>(Lifr;Lifw;)V

    invoke-virtual {v0, v1, v2}, Lhsv;->a(ILhsz;)Z

    move-result v0

    return v0
.end method
